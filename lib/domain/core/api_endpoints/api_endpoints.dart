class ApiEndPoints {
  static String baseUrl = 'https://bechdu-main-backend.onrender.com';
  static String baseUrlImage =
      'https://bechdu-main-backend.onrender.com/uploads/';
  static String sendOtp = '/partner/send-sms';
  static String verifyOtp = '/partner/sms-login';
  static String getNewOrders = '/partner/get-partner-orders/{phone}';
  static String getAssignedOrders =
      '/partner/get-assigned-partner-orders/{phone}';
  static String addPickupPartner = '/partner/add-pickup-person/{phone}';
  static String getPickupPartner = '/partner/get-pickup-persons/{phone}';
}
