import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/pdf/pdf_preview.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart';

class OrderInvoiceDownload extends StatefulWidget {
  const OrderInvoiceDownload({super.key});

  @override
  State<OrderInvoiceDownload> createState() => _OrderInvoiceDownloadState();
}

class _OrderInvoiceDownloadState extends State<OrderInvoiceDownload> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersBloc, OrdersState>(
      listener: (context, state) async {
        if (state.downloaded) {
          setState(() {
            isLoading = false;
          });

          final result = await showDialog<String>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Invoice Ready'),
              content: Text('What would you like to do with the invoice?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, 'preview'),
                  child: Text('Preview'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'download'),
                  child: Text('Download'),
                ),
              ],
            ),
          );

          if (result == 'preview') {
            Navigator.pushNamed(
              context,
              Routes.pdfPage,
              arguments: PreviewArguments(
                base64: state.orderInvoice!,
                fileName: state.orderDetail?.orderId ?? 'BECHDU',
              ),
            );
          } else if (result == 'download') {
            print('object');
            final bytes = base64Decode(state.orderInvoice!);
            final fileName = '${state.orderDetail?.orderId ?? "invoice"}.pdf';
            await savePdfToDownloads(bytes, fileName);
            if (mounted) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('PDF saved as $fileName')),
              );
            }
          }
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                    color: kGreyLight,
                  )
                ],
                color: kWhite,
                borderRadius: kRadius5,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Download Order Invoice', style: textHeadBold1),
                  StatusColoredBox(
                    text: state.orderInvoice != null
                        ? 'Invoice'
                        : isLoading
                            ? 'Downloading...'
                            : 'Download',
                    color: kBluePrimary,
                    onTap: () {
                      if (state.orderInvoice != null) {
                        Navigator.pushNamed(
                          context,
                          Routes.pdfPage,
                          arguments: PreviewArguments(
                            base64: state.orderInvoice!,
                            fileName: state.orderDetail?.orderId ?? 'BECHDU',
                          ),
                        );
                      } else if (!isLoading) {
                        setState(() {
                          isLoading = true;
                        });
                        context.read<OrdersBloc>().add(
                              OrdersEvent.downloadOrderInvoice(
                                orderId: state.orderDetail!.id!,
                              ),
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
            isLoading
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: LinearProgressIndicator(
                      borderRadius: kRadius50,
                      backgroundColor: kGreyLighter,
                      color: kBluePrimary,
                    ),
                  )
                : kEmpty,
          ],
        );
      },
    );
  }

  Future<void> savePdfToDownloads(Uint8List bytes, String fileName) async {
    // Request storage permissions
    final status = await Permission.manageExternalStorage.request();

    if (!status.isGranted) {
      throw Exception('Storage permission not granted');
    }

    // Downloads directory path for Android
    final directory = Directory('/storage/emulated/0/Download');

    // Make sure the directory exists
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    final filePath = '${directory.path}/$fileName';
    final file = File(filePath);

    await file.writeAsBytes(bytes);

    print('PDF saved to $filePath');
  }
}
