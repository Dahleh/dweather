class ApiConst {
  // static const baseURL = 'http://192.168.18.132:5000/api/'; // Inam's IP
  // static const baseURL = 'http://154.57.216.153:6094/api/';
  // static const origin = 'https://alfaremit.com:7095'; // Live
  // static const baseURL = 'https://alfaremit.com:7095/api/'; // Live
  // static const origin = 'http://alfaremit.com:6095';
  // static const baseURL = 'http://alfaremit.com:6095/api/';
  static String origin = '';

  static String baseURL = '';

  static String port = '';

  static const buildVersionNumber = "v1.1.26";

  // Auth Module //

  static const signupUserURL = 'signup/verifydetail';
  static const signupResendOTP = 'signup/resendotp';

  static const signupVerifyOTPURL = 'signup/verifyotp';
  static const signupUploadIDURL = 'signup/VerifyQatarID';
  static const signupQatarIDDataURL = 'signup/qatariddata';
  static const signupVerifyFaceURL = 'signup/VerifySelfie';
  static const signupCreatePinURL = 'signup/createpin';
  static const signUpBioMetricURL = "signup/SignupbyBioMatric";
  static const getValidateQID = 'signin/RedirectUser';
  static const signInURL = "signin/bycredential";
  static const fetchAccessTokenIdMissionURL = "IdMission/GetToken";

  static const signInBioMetricURL = "signin/SigninByBiometric";

  static const forgotPinSendOTP = 'forgotpin/sendotp';
  static const forgotPinResendOTP = 'forgotpin/resendotp';
  static const forgotPinVerifyOTP = 'forgotpin/verifyotp';
  static const forgotPinCreatePin = 'forgotpin/createpin';

  // Lookup Data Module //
  static const fetchCountriesURL = "lookupcountry/getall";
  static const fetchCountriesByCurrencyCodeURL =
      "lookupcountry/getall/GetByCurrencyCode";
  static const fetchLastTransactionDetailURL = "sendmoney/recenttransaction";

  // static const fetchAgentsURL = 'agent/getall';
  static const fetchAgentsURL = 'lookup/LookupBanks';
  static const fetchContentURL = "TermsCondition/GetTermsCondition";

  static const createBeneficiary = 'benficiary/create/profile';
  static const beneficiaryListURL = 'benficiary/list';
  static const deleteBeneficiaryURL = 'benficiary/delete';

  static const fetchPromotionalBannersURL = "banner/getall";

  static const createSMCashPickupRequestURL = 'sendmoney/create'; //
  static const cashPickupContinueRequestURL = "sendmoney/continue";
  static const cashPickupCheckTransactionStatusURL =
      "sendmoney/CheckTransactionStatus";
  static const checkoutSMCashPickupURL = 'sendmoney/checkout';
  static const cashpickupTransactionFindURL =
      'sendmoney/transaction/find?refNumber=';
  static const createSMBankTransferRequestURL = 'banktransfer/create'; //
  static const bankTransferContinueRequestURL = "banktransfer/continue";
  static const bankTransferCheckTransactionStatusURL =
      "banktransfer/CheckTransactionStatus";
  static const checkoutSMBankTransferURL = 'banktransfer/checkout';
  static const sendMoneyReceiptURL = 'sendmoney/transaction/receipt';
  static const fetchTransactionHistoryURL = "sendmoney/transactions/getall";

  static const fetchGoldRatesURL = "AFXIntegeration/GetGoldProduct";

  static const fetchGendersURL = "lookup/LookupGender";
  static const fetchStatesURL = "lookupstate/getall";
  static const fetchCitiesURL = "lookupcity/getall";

  static const fetchSupportedCurrenciesURL = "lookup/GetSupportedCurrencies";

  static const fetchOccupationsURL = "lookup/LookupOccupationType";
  static const fetchRelationsURL = "lookup/LookupRelationshiptype";
  static const fetchBranchesURL = "lookup/LookupBankBranches";
  static const fetchBeneLookupFieldConfigURL = "lookup/BeneLookupFieldConfig";
  static const fetchPurposeOfPaymentURL = "lookup/LookupPurpose";
  static const fetchSourceOfPaymentURL = "lookup/LookupFundSource";
  static const fetchPartyBankInfo = "lookup/GetPartyBankInfo";

  static const uploadIdMissionDataURL = 'signup/update/idmission';
  static const uploadIdMissionDataForQidExpiryURL =
      'UserProfile/update/idmission';

  static const createUserAddressURL = 'UserAddress/create';
  static const updateUserAddressURL = 'UserAddress/update';
  static const fetchUserAddressesURL = 'UserAddress/list';
  static const deleteAddressURL = "UserAddress/delete";

  static const fetchMuncipalitiesURL = "UserAddressManagment/GetMunicipality";
  static const fetchZonesURL = "UserAddressManagment/GetZone";
  static const fetchDistrictsURL = "UserAddressManagment/GetDistrict";
  static const fetchZoneAndDistrictURL =
      "UserAddressManagment/GetZoneAndDistrict";

  static const createForeignCurrencyURL = 'ForeignCurrency/create';
  static const checkoutForeignCurrencyURL = 'ForeignCurrency/checkout';
  static const findForeignCurrencyURL = 'ForeignCurrency/find';
  static const fcySettingsDetailsURL = 'ForeignCurrency/GetSettingDetails';

  // static const fetchTrendsDataURL = 'lookup/LookupGetRateHistory';
  static const fetchTrendsDataURL = 'lookup/GetRateHistoryList';
  static const fetchFcyDownloadReceiptURL =
      'ForeignCurrency/transaction/receipt';
  static const fetchCashPickupTermsAndConditionURL =
      "TermsCondition/GetTermsConditionPU";
  static const fetchBankTransferTermsAndConditionURL =
      "TermsCondition/GetTermsConditionBB";
  static const fetchFcyTermsAndConditionURL =
      "TermsCondition/GetTermsConditionFC";
  static const fetchFcyTransactionHistoryURL = "ForeignCurrency/list";
  static const fetchGetFcRatesURL = "ForeignCurrency/GETFCRates";

  static const fetchBeneficiaryFieldConfigURL = "lookup/fieldconfig/fields";
  static const fetchBeneFieldConfigLOVURL = "lookup/fieldconfig/lov";
  static const fetchFcyStockURL = "ForeignCurrency/Stock";

  static const fetchTransactionAmountLimitURL = "lookup/GetTransactionLimit";
  static const fetchSendMoneyPaymentStatusURL = "sendmoney/payment/status";
  static const fetchGetCommissionBasedCurrenciesURL =
      "lookup/GetRatesAndCharges";

  static const fetchUpdateBeneficiaryFieldConfigURL =
      "lookup/fieldconfig/fieldsBeneFiciary";
  static const updateBeneficiary = 'benficiary/update';
  static const checkBeneRoutingBankURL = "lookup/GetBeneBankAgent";
  static const fetchQpayWebhookInquiryURL = "sendmoney/qpay/Webhook/Inquiry";
  static const fetchBranchesDetailsURL = "lookup/GetBranchesDetails";

  // Buy metal GOLD URLS ///
  static const lookupProductCategoryURL = "lookup/productcategory/list";

  // static const fetchMetalProductsURL = "metalproduct/list";
  static const fetchMetalProductsURL = "MetalProductApp/MetalProductAppList";
  static const cartItemAddURL = "metalproduct/cartitem/add";

  static const fetchMyCartURL = "metalproduct/mycart";
  static const cartItemDeleteURL = "metalproduct/cartitem/delete";
  static const cartUpdateURL = "metalproduct/update";
  static const validateStockAvailabilityURL = "metalproduct/checkStockStatus";
  static const fetchGoldBarTermsAndConditionURL =
      "TermsCondition/GetTermsConditionMP";
  static const goldBarCheckout = "metalproduct/checkout";
  static const goldBarOrderFindURL = "order/find";
  static const fetchGoldBarDownloadReceiptURL = 'order/transaction/receipt';
  static const fetchGoldBarTransactionHistoryURL = "order/transaction/History";
  static const fetchMetalProductTransactionLimitURL =
      "order/MetalTransactionLimits";
  static const fetchProductFilterationDataURL =
      'MetalProductApp/MetalProductCategoryList';
  static const fetchGoldBarPurposeOfPayment = "lookup/MP/LookupPurpose";
  static const fetchGoldBarSourceOfPayment = "lookup/MP/LookupFundSource";

  // Security Settings URLS
  static const deactivateAccountURL = "SecuritySettings/DeActiveMobileUser";
  static const changePinURL = "SecuritySettings/UpdatePincode";
  static const getDeviceBioAuthEnableURL =
      'SecuritySettings/GetDeviceBioAuthEnable';
  static const enableDisableBiometricURL =
      "SecuritySettings/AuthTokenEnableDisable";

  // Profile Management URLs
  static const getUserByIdURL = "ProfileManagment/GetUsersByID";
  static const sendOtpURL = "ProfileManagment/sendotp";
  static const verifyOtpProfileManagementURL =
      "ProfileManagment/VerifyOtpProfileManagment";

  //
  static const getGuestModeTokenURL = "signin/GuestSignIn";

  // Reward Points URLs
  static const fetchAvailableRewardPointsURL = "RewardPoints/UserRewardPoints";

  // Customer Support URLs
  static const submitComplaintURL = "Complain/Create";
  static const fetchComplaintTypesURL = 'LookupComplainType/List';

  // Unblock User URLs
  static const verifySecurityQuestionURL = "signin/GetInActiveStatus";
  static const verifyActivateUserOtpURL = "signin/UpdateUserActiveStatus";

  // Upload QID Expired URLs
  static const uploadQidExpiredURL = "UserProfile/UploadPhoto";
  static const qidRenewalRequestURL = "UserProfile/Update";

  // Notifications URLs
  static const fetchNotificationURL = "Notification/ListByUserId";
  static const markAsViewNotificationURL = "Notification/Update";

  // Travel Card URLs
  static const fetchMyTravelCardURL = "TravelCard/GetTravelCardRecordByUserID";
  static const fetchTravelCardTermsAndConditionURL =
      "TermsCondition/GetTermsConditionTC";
  static const fetchSecurityQuestionsURL = 'TravelCard/GetSecurityQuestions';
  static const fetchTravelCardPreviewDataURL = "TravelCard/TravelCardDetails";
  static const checkoutTravelCardURL = "TravelCard/checkout";
  static const fetchTravelCardReceiptDataURL =
      "TravelCard/GetTravelCardRecordByRefNumber";
  static const fetchTravelCardDownloadReceiptURL =
      'TravelCard/transaction/receipt';
  static const fetchTravelCardRatesURL = 'TravelCard/GetTravelCardRates';

  static const applePayURL = "sendmoney/CheckoutApplePay";
  static const inquiryApplePayURL = "sendmoney/InquiryApplePay";

  static const tessPaymentCheckoutURL =
      "TessPaymentGateway/tessPayment/checkout";
  static const fetchTessPayFailedStatusURL = "sendmoney/payment/status";

  // Reward Points URLs
  static const fetchAppConfigurationURL = "Configuration/List";
  static const fetchGetSmsConfigurationsURL = "lookup/GetSmsConfigurations";

  // FAQs URLs
  static const fetchFaqsURL = "Faq/getall";

  // Register New Device
  static const registerNewDeviceSendOTPURL = "User/sendotp";
  static const registerNewDeviceVerifyOTPURL = "User/verifyotp";

  // Logout User
  static const logoutUserURL = "logout/user";

  // Terms And Conditions and Privacy Policy
  static const fetchTermsAndConditionsOrPrivacyPolicyURL =
      "TermsCondition/GetPage";

  // Refund Transaction Amount
  static const refundTransactionInitiatedURL =
      "RefundInitied/RefundInitiatedRequest";

  // Payment Gatways List
  static const fetchPaymentGatewaysURL = "lookup/GetPaymentGateway";

  static String translationURL =
      'https://alfaremit.com:${ApiConst.origin.contains('6995') == true ? "6995" : ApiConst.origin.contains('8095') == true ? "8095" : ApiConst.origin.contains('7095') == true ? "7095" : "6995"}/Assets/Language/';

  // My Book URLs
  static const fetchMyBookBenefitsURL = "MyBook/benefits";
  static const fetchMyBookTermsAndConditionsURL = "MyBook/terms_conditions";
  // static const fetchMyBookRedirectionURL = "MyBook/redirect/url";
  static const fetchMyBookRedirectionURL = "MyBook/redirect/url/with/location";
  static const fetchMyBookRegisterURL = "MyBook/register";
  static const fetchMyBookDashboardURL = "MyBook/dashboard";

  // Transactional Statements URLs
  static const fetchMyTransactionalStatementsURL =
      "lookup/Transactions/DigitalStatement";

  // Branch Locators Module URLs
  static const fetchBranchLocatorsInformationURL = "lookup/Branch/MapData";

  static const getRoutingAgentForMultipleCurrencies =
      'lookup/RoutingAgent/MultipleCurrency';

  static const getDistanceFromMatrixApi =
      "https://maps.googleapis.com/maps/api/distancematrix/json";
  static const verifyAgent = 'benficiary/verify/agent/exist';
  static const getEGPAgents = 'lookup/lookupBanks/parameter';
  static const fetchOnlyCountriesURL = "lookupcountry/GetAllCountries";
}
