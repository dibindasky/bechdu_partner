import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayGateway{
  final _razorpay = Razorpay();
void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Process successful payment (e.g., display success message)
    print('Payment successful: $response');
}

void _handlePaymentError(PaymentFailureResponse response) {
    // Handle payment failure (e.g., display error message)
    print('Payment failed: $response');
}

void _handleExternalWallet(ExternalWalletResponse response) {
    // Handle external wallet selection (e.g., display message)
    print('External wallet selected: $response');
}
Future<void> _makePayment(double amount) async {
    var options = {
        'key': 'YOUR_RAZORPAY_KEY_ID', // Replace with your actual key ID
        'amount': amount * 100, // Amount in paise
        'name': 'Your Company Name',
        'description': 'Payment for your product/service',
        'prefill': {
            'email': 'user@example.com', // User's email address
            'contact': '1234567890', // User's phone number
        },
        'external': {
            'wallets': ['paytm'] // Example: Enable Paytm wallet
        }
    };

    try {
        _razorpay.open(options);
    } catch (e) {
        print(e.toString()); // Handle errors
    }
}


}