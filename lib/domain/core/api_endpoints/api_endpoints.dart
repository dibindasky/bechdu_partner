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
  static String blockPickupPartner =
      '/partner/block-pickup-person/{partnerPhone}/{pickUpGuyId}';
  static String unBlockPickupPartner =
      '/partner/unblock-pickup-person/{partnerPhone}/{pickUpGuyId}';
  static String acceptOrder = '/partner/accept-order/{partnerPhone}/{orderID}';
  static String getParnerProfile = '/partner/partners/{partnerPhone}';
  static String assignOrderToPickupPartner =
      '/partner/assign-order/{partnerPhone}/{pickUpPersonId}/{orderId}';
  static String deAssignOrderFromPickupPartner =
      '/partner/deassign-order/{partnerPhone}/{orderId}';
  static String cancelOrder = '/partner/cancel-order/{orderId}/{partnerPhone}';
  static String getQuestions = '/api/category/fetch-category-name/{category}';
}
