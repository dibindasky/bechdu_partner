import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/pdf/pdf_preview.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderInvoiceDownload extends StatefulWidget {
  const OrderInvoiceDownload({
    super.key,
  });

  @override
  State<OrderInvoiceDownload> createState() => _OrderInvoiceDownloadState();
}

class _OrderInvoiceDownloadState extends State<OrderInvoiceDownload> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersBloc, OrdersState>(
      listener: (context, state) {
        if (state.downloaded) {
          setState(() {
            isLoading = false;
          });
          Navigator.pushNamed(context, Routes.pdfPage,
              arguments: PreviewArguments(
                  base64: state.orderInvoice!,
                  fileName: state.orderDetail?.orderId ?? 'BECHDU'));
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                    color: kGreyLight)
              ], color: kWhite, borderRadius: kRadius5),
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
                          Navigator.pushNamed(context, Routes.pdfPage,
                              arguments: PreviewArguments(
                                  base64: state.orderInvoice!,
                                  fileName:
                                      state.orderDetail?.orderId ?? 'BECHDU'));
                        } else if (!isLoading) {
                          setState(() {
                            isLoading = true;
                          });
                          context.read<OrdersBloc>().add(
                              OrdersEvent.downloadOrderInvoice(
                                  orderId: state.orderDetail!.id!));
                        }
                      })
                ],
              ),
            ),
            isLoading
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: LinearProgressIndicator(
                        borderRadius: kRadius50,
                        backgroundColor: kGreyLighter,
                        color: kBluePrimary),
                  )
                : kEmpty
          ],
        );
      },
    );
  }
}
