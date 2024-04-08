class ApiEndPoints {
  //base urls
  static String baseUrl = 'https://bechdu-main-backend.onrender.com';
  static String baseUrlImage =
      'https://bechdu-main-backend.onrender.com/uploads/';

  // auth
  static String sendOtp = '/partner/send-sms';
  static String verifyOtp = '/partner/sms-login';
  static String logOut = '/partner/logout/{phone}';
  static String block = '/partner/block-partner-app/{phone}';

  // get orders
  static String getNewOrders = '/partner/get-partner-orders/{phone}';
  static String getAssignedOrders =
      '/partner/get-assigned-partner-orders/{phone}';

  // order managing
  static String acceptOrder = '/partner/accept-order/{partnerPhone}/{orderID}';
  static String getParnerProfile = '/partner/partners/{partnerPhone}';
  static String assignOrderToPickupPartner =
      '/partner/assign-order/{partnerPhone}/{pickUpPersonId}/{orderId}';
  static String deAssignOrderFromPickupPartner =
      '/partner/deassign-order/{partnerPhone}/{orderId}';
  static String cancelOrder = '/partner/cancel-order/{orderId}/{partnerPhone}';
  static String getOrderDetails =
      '/partner/get-orders/{partnerPhone}/{orderID}';
  static String requotePrice =
      '/partner/requote/partner/{partnerPhone}/{orderID}';
  static String completeOrder =
      '/partner/complete-order/{orderId}/{partnerPhone}';
  static String resheduleOrder =
      '/partner/reschedule-order/{orderId}/{partnerPhone}';
  static String getQuestions = '/api/category/fetch-category-name/{category}';
  static String getPrice = '/product/calculate-price';

  // pickup partner managing
  static String addPickupPartner = '/partner/add-pickup-person/{phone}';
  static String getPickupPartner = '/partner/get-pickup-persons/{phone}';
  static String blockPickupPartner =
      '/partner/block-pickup-person/{partnerPhone}/{pickUpGuyId}';
  static String unBlockPickupPartner =
      '/partner/unblock-pickup-person/{partnerPhone}/{pickUpGuyId}';

  // transcations
  static String getCreditedTranscation =
      '/partner/transactions/credited/{partnerPhone}';
  static String getDebitedTranscation =
      '/partner/transactions/debited/{partnerPhone}';

  // without headers general
  static String getDateAndTime = '/dynamic/calendar/next-10-days';
  static String getGstValue = '/dynamic/get-gst-value';
  static String getConValue = '/coins/get-coin-value';

  // transcattions
  static String downloadInvoice = '/partner/transaction/{phone}/{id}';
  static String manuelTransation = '/payment/create-payments';
  static String getManuelTransation = '/payment/get-partner-payments/{phone}';
  static String makeEpayment = '/partner/update-coins-after-payment/{phone}';

  // notification
  static String getNotification = '/partner/notifications/{phone}';
}
