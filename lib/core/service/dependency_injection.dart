// import 'package:dweather/features/authModule/domain/use_cases/signin_with_biometric.dart';
// import 'package:dweather/features/authModule/domain/use_cases/signin_with_pin.dart';
// import 'package:dweather/features/authModule/domain/use_cases/signup_with_biometric.dart';
// import 'package:dweather/features/goldBarsModule/data/data_sources/buy_gold_product_module_remote_datasource.dart';
// import 'package:dweather/features/goldBarsModule/data/data_sources/cart_management_remote_data_source.dart';
// import 'package:dweather/features/goldBarsModule/data/data_sources/gold_bar_module_remote_data_soruce.dart';
// import 'package:dweather/features/goldBarsModule/data/repositories/buy_gold_product_repo_impl.dart';
// import 'package:dweather/features/goldBarsModule/data/repositories/gold_bar_repo_impl.dart';
// import 'package:dweather/features/goldBarsModule/domain/repositories/buy_gold_product_repo.dart';
// import 'package:dweather/features/goldBarsModule/domain/repositories/gold_bar_repo.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/add_cart_item_usecase.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/delete_cart_item_usecase.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/fetch_cities_usecase.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/fetch_gold_bar_preview_data_usecase.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/fetch_gold_bar_receipt_data_usecase.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/fetch_user_cart_usecase.dart';

// // import 'package:dweather/features/goldBarsModule/domain/use_cases/fetch_user_delivery_addresses_usecase.dart';
// // import 'package:dweather/features/goldBarsModule/domain/use_cases/gold_bar_create_user_address_usecase.dart';
// // import 'package:dweather/features/goldBarsModule/domain/use_cases/gold_bar_update_user_address_usecase.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/gold_bar_use_case.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/gold_product_category_use_case.dart';
// import 'package:dweather/features/goldBarsModule/domain/use_cases/gold_products_use_case.dart';
// import 'package:dweather/features/homeModule/data/data_sources/home_module_remote_datas_source.dart';
// import 'package:dweather/features/homeModule/data/repositories/home_module_repo_impl.dart';
// import 'package:dweather/features/homeModule/domain/repositories/home_module_repo.dart';
// import 'package:dweather/features/sendMoneyModule/data/repositories/send_money_repository_impl.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/apple_pay_use_case.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/checkout_sm_bank_transfer.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/fetch_branches_usecase.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/fetch_supported_currenices_use_case.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/fetch_update_beneficiary_field_config.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/inquiry_apple_pay_use_case.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/purpose_of_payment_usecase.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/update_beneficiary.dart';
// import 'package:dweather/features/sendMoneyModule/domain/use_cases/verify_agent_use_case.dart';
// import 'package:dweather/features/terms_and_condition/domain/usecases/fetch_gold_bar_terms_and_condition_usecase.dart';
// import 'package:dweather/features/transactionHistoryModule/domain/repositories/transaction_repo.dart';
// import 'package:get_it/get_it.dart';

// import '../../features/activeInactiveUserModule/data/remote/active_inactive_user_remote_data_source.dart';
// import '../../features/activeInactiveUserModule/data/repositories/active_inactive_user_repo_impl.dart';
// import '../../features/activeInactiveUserModule/domain/repositories/active_inactive_user_repo.dart';
// import '../../features/activeInactiveUserModule/domain/usecases/verify_activate_user_otp.dart';
// import '../../features/activeInactiveUserModule/domain/usecases/verify_security_questions_usecase.dart';
// import '../../features/app_configuration/data/remote/app_configuration_remote_data_source.dart';
// import '../../features/app_configuration/data/repositories/app_configuration_repo_impl.dart';
// import '../../features/app_configuration/domain/repositories/app_configuration_repo.dart';
// import '../../features/app_configuration/domain/usecases/fetch_app_configuration_usecase.dart';
// import '../../features/app_configuration/domain/usecases/fetch_invite_friend_message_usecase.dart';
// import '../../features/app_configuration/domain/usecases/fetch_splash_image_usecase.dart';
// import '../../features/authModule/domain/use_cases/fetch_access_token_id_mission_usecase.dart';
// import '../../features/authModule/domain/use_cases/get_biometric_device_enable_usecase.dart';
// import '../../features/authModule/domain/use_cases/logout_user_usecase.dart';
// import '../../features/authModule/domain/use_cases/register_new_device_send_otp_usecase.dart';
// import '../../features/authModule/domain/use_cases/register_new_device_verify_otp_usecase.dart';
// import '../../features/authModule/domain/use_cases/signup_cities_by_state.dart';
// import '../../features/authModule/domain/use_cases/signup_gender_usercase.dart';
// import '../../features/authModule/domain/use_cases/signup_states_usecase.dart';
// import '../../features/authModule/domain/use_cases/validate_qid_usecase.dart';
// import '../../features/beneficiaryManagementModule/data/remote/beneficiary_management_remote_data_source.dart';
// import '../../features/beneficiaryManagementModule/data/repositories/beneficiary_management_repo_impl.dart';
// import '../../features/beneficiaryManagementModule/domain/repositories/beneficiary_management_repo.dart';
// import '../../features/beneficiaryManagementModule/domain/usecases/delete_beneficiary_usecase.dart';
// import '../../features/branch_locator_module/branch_locator_module_const.dart';
// import '../../features/branch_locator_module/domain/usecases/fetch_branch_distance_usecase.dart';
// import '../../features/buyTravelCardModule/data/remote/travel_card_remote_data_source.dart';
// import '../../features/buyTravelCardModule/data/repositories/travel_card_repo_impl.dart';
// import '../../features/buyTravelCardModule/domain/repositories/travel_card_repo.dart';
// import '../../features/buyTravelCardModule/domain/usecases/fetch_my_travel_card_usecase.dart';
// import '../../features/buyTravelCardModule/domain/usecases/fetch_security_questions_usecase.dart';
// import '../../features/buyTravelCardModule/domain/usecases/fetch_travel_card_preview_details_usecase.dart';
// import '../../features/buyTravelCardModule/domain/usecases/fetch_travel_card_receipt_details.dart';
// import '../../features/buyTravelCardModule/domain/usecases/fetch_travel_card_receipt_download_url_usecase.dart';
// import '../../features/buyTravelCardModule/domain/usecases/fetch_travel_cards_rate_usecase.dart';
// import '../../features/customerSupportModule/data/data_sources/customer_support_data_remote_source.dart';
// import '../../features/customerSupportModule/data/repositories/customer_support_repo_impl.dart';
// import '../../features/customerSupportModule/domain/repositories/customer_support_repo.dart';
// import '../../features/customerSupportModule/domain/use_cases/fetch_complaint_types_usecase.dart';
// import '../../features/customerSupportModule/domain/use_cases/submit_complaint_usecase.dart';
// import '../../features/expiredQIDModule/data/remote/expired_qid_remote_data_source.dart';
// import '../../features/expiredQIDModule/data/repositories/expired_qid_repo_impl.dart';
// import '../../features/expiredQIDModule/domain/repositories/expired_qid_repo.dart';
// import '../../features/expiredQIDModule/domain/usecases/submit_qid_renewal_request_usecase.dart';
// import '../../features/expiredQIDModule/domain/usecases/upload_qid_expired_usecase.dart';
// import '../../features/faqsModule/data/remote/faqs_remote_data_source.dart';
// import '../../features/faqsModule/data/repositories/faqs_repo_impl.dart';
// import '../../features/faqsModule/domain/repositories/faqs_repo.dart';
// import '../../features/faqsModule/domain/usecases/fetch_faqs_usecase.dart';
// import '../../features/foreignCurrency/data/data_source/foreign_currency_data_source.dart';
// import '../../features/foreignCurrency/data/repositories/foreign_currency_repo_impl.dart';
// import '../../features/foreignCurrency/domain/repositories/foreign_currency_repo.dart';
// import '../../features/foreignCurrency/domain/use_cases/create_user_address_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_district_by_zones_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_fcy_download_url_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_fcy_preview_data_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_fcy_receipt_data_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_fcy_settings_details_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_fcy_stock_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_get_fc_rates.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_muncipalitites_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_trends_data_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_user_addresses_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_zone_and_district_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/fetch_zones_by_muncipality_usecase.dart';
// import '../../features/foreignCurrency/domain/use_cases/update_user_address_usecase.dart';
// import '../../features/goldBarsModule/data/data_sources/gold_bar_preview_remote_data_source.dart';
// import '../../features/goldBarsModule/data/data_sources/gold_bar_receipt_remote_data_source.dart';
// import '../../features/goldBarsModule/data/data_sources/user_delivery_addresses_management_remote_data_source.dart';
// import '../../features/goldBarsModule/data/repositories/cart_management_repo_impl.dart';
// import '../../features/goldBarsModule/data/repositories/gold_bar_preview_repo_impl.dart';
// import '../../features/goldBarsModule/data/repositories/gold_bar_receipt_repo_impl.dart';
// import '../../features/goldBarsModule/data/repositories/user_delivery_addresses_repo_impl.dart';
// import '../../features/goldBarsModule/domain/repositories/cart_management_repo.dart';
// import '../../features/goldBarsModule/domain/repositories/gold_bar_preview_repo.dart';
// import '../../features/goldBarsModule/domain/repositories/gold_bar_receipt_repo.dart';
// import '../../features/goldBarsModule/domain/repositories/user_delivery_addresses_management_repo.dart';
// import '../../features/goldBarsModule/domain/use_cases/fetch_gold_bar_purpose_of_payment_usecase.dart';
// import '../../features/goldBarsModule/domain/use_cases/fetch_gold_bar_receipt_download_url_usecase.dart';
// import '../../features/goldBarsModule/domain/use_cases/fetch_gold_bar_source_of_payment_usecase.dart';
// import '../../features/goldBarsModule/domain/use_cases/fetch_guest_mode_token_usecase.dart';
// import '../../features/goldBarsModule/domain/use_cases/fetch_metal_products_transaction_limit_usecase.dart';
// import '../../features/goldBarsModule/domain/use_cases/fetch_product_filteration_data.dart';
// import '../../features/goldBarsModule/domain/use_cases/validate_stock_availability_usecase.dart';
// import '../../features/homeModule/domain/use_cases/fetch_last_transaction_detail_usecase.dart';
// import '../../features/homeModule/domain/use_cases/new_lookup_country_usecase.dart';
// import '../../features/homeModule/domain/use_cases/promotional_banner.dart';
// import '../../features/myAddressesModule/data/data_sources/my_addresses_remote_data_source.dart';
// import '../../features/myAddressesModule/data/repositories/my_addresses_repo_impl.dart';
// import '../../features/myAddressesModule/domain/repositories/my_addresses_repo.dart';

// // import '../../features/myAddressesModule/domain/usecases/create_my_address_usecase.dart';
// import '../../features/myAddressesModule/domain/usecases/delete_my_address_usecase.dart';
// import '../../features/myAddressesModule/domain/usecases/fetch_my_addresses_cities_usecase.dart';

// // import '../../features/myAddressesModule/domain/usecases/fetch_my_addresses_usecase.dart';
// // import '../../features/myAddressesModule/domain/usecases/update_my_address_usecase.dart';
// import '../../features/notificationManagementModule/data/remote/notification_management_remote_data_source.dart';
// import '../../features/notificationManagementModule/data/repositories/notifications_management_repo_impl.dart';
// import '../../features/notificationManagementModule/domain/repositories/notifications_management_repo.dart';
// import '../../features/notificationManagementModule/domain/usecases/fetch_notifications_usecase.dart';
// import '../../features/notificationManagementModule/domain/usecases/mark_as_view_notification_usecase.dart';
// import '../../features/profileManagementModule/data/remote/profile_management_remote_data_source.dart';
// import '../../features/profileManagementModule/data/repositories/profile_management_repo_impl.dart';
// import '../../features/profileManagementModule/domain/repositories/profile_management_repo.dart';
// import '../../features/profileManagementModule/domain/usecases/get_user_details_by_id_usecase.dart';
// import '../../features/profileManagementModule/domain/usecases/send_otp_usecase.dart';
// import '../../features/profileManagementModule/domain/usecases/verify_otp_profile_management_usecase.dart';
// import '../../features/rewardPointsModule/data/remote/reward_points_remote_data_source.dart';
// import '../../features/rewardPointsModule/data/repositories/reward_points_repo_impl.dart';
// import '../../features/rewardPointsModule/domain/repositories/reward_points_repo.dart';
// import '../../features/rewardPointsModule/domain/usecases/fetch_available_reward_points_usecase.dart';
// import '../../features/securitySettingsModule/data/remote/security_settings_remote_data_source.dart';
// import '../../features/securitySettingsModule/data/repositories/security_settings_repo_impl.dart';
// import '../../features/securitySettingsModule/domain/repositories/security_settings_repo.dart';
// import '../../features/securitySettingsModule/domain/usecases/change_pin_usecase.dart';
// import '../../features/securitySettingsModule/domain/usecases/deactivate_account_usecase.dart';
// import '../../features/securitySettingsModule/domain/usecases/enable_disable_biometric_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/bene_lookup_field_config_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/check_routing_bank_send_money.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_beneficiary_branches_details_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_beneficiary_field_config.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_cashpickup_transaction_find.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_commission_based_currencies_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_field_config_lov_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_party_bank_info_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_payment_gateways_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_qpay_failed_transaction_status_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_qpay_webhook_inquiry_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_relations_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_send_money_continue_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_tess_pay_failed_transaction_status_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_transaction_amount_limit_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/fetch_transaction_status_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/get_agents_egp.dart';
// import '../../features/sendMoneyModule/domain/use_cases/source_of_payment_usecase.dart';
// import '../../features/sendMoneyModule/domain/use_cases/tess_payment_checkout_usecase.dart';
// import '../../features/terms_and_condition/data/data_source/terms_and_condition_data_source.dart';
// import '../../features/terms_and_condition/data/repositories/terms_and_condition_repo_impl.dart';
// import '../../features/terms_and_condition/domain/repositories/terms_and_condition_repo.dart';
// import '../../features/terms_and_condition/domain/usecases/fetch_bank_transfer_terms_and_condition_usecase.dart';
// import '../../features/terms_and_condition/domain/usecases/fetch_cash_pickup_terms_and_condition_usecase.dart';
// import '../../features/terms_and_condition/domain/usecases/fetch_fcy_terms_and_condition_usecase.dart';
// import '../../features/terms_and_condition/domain/usecases/fetch_privacy_policy_usecase.dart';
// import '../../features/terms_and_condition/domain/usecases/fetch_travel_card_terms_and_condition_usecase.dart';
// import '../../features/transactionHistoryModule/data/remote/data_sources/transaction_data_remote_source.dart';
// import '../../features/transactionHistoryModule/data/repositories/transaction_history_repo_impl.dart';
// import '../../features/transactionHistoryModule/domain/use_cases/fetch_fcy_transaction_history_usecase.dart';
// import '../../features/transactionHistoryModule/domain/use_cases/fetch_metal_products_history_usecase.dart';
// import '../../features/transactionHistoryModule/domain/use_cases/refund_amount_initiated_usecase.dart';
// import '../../features/transactionHistoryModule/domain/use_cases/transaction_history_use_case.dart';
// import '../../features/myBookModule/my_book_const.dart';
// import '../../features/transactional_statement_module/transactional_statement_module_const.dart';

// final GetIt injector = GetIt.instance;

// Future<void> setupDependencyInjection() async {
//   injector
//     // use cases
//     ..registerLazySingleton<FetchBeneficiaryBranchesDetailsUsecase>(
//         () => FetchBeneficiaryBranchesDetailsUsecase(injector()))
//     ..registerLazySingleton<FetchQpayWebhookInquiryUsecase>(
//         () => FetchQpayWebhookInquiryUsecase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchCommissionBasedCurrenciesUsecase>(
//         () => FetchCommissionBasedCurrenciesUsecase(injector()))
//     ..registerLazySingleton<FetchQpayFailedTransactionStatusUsecase>(() =>
//         FetchQpayFailedTransactionStatusUsecase(
//             sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchTransactionAmountLimitUsecase>(() =>
//         FetchTransactionAmountLimitUsecase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchTransactionStatusUsecase>(
//         () => FetchTransactionStatusUsecase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchSendMoneyContinueUsecase>(
//         () => FetchSendMoneyContinueUsecase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<ApplePayUseCase>(
//         () => ApplePayUseCase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<InquiryApplePayUseCase>(
//         () => InquiryApplePayUseCase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<TessPaymentCheckoutUseCase>(
//         () => TessPaymentCheckoutUseCase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchTessPayFailedTransactionStatusUsecase>(() =>
//         FetchTessPayFailedTransactionStatusUsecase(
//             sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchPaymentGatewaysUsecase>(
//         () => FetchPaymentGatewaysUsecase(injector()))
//     ..registerLazySingleton<FetchFcyStockUsecase>(
//         () => FetchFcyStockUsecase(injector()))
//     ..registerLazySingleton<FetchFieldConfigLovUsecase>(
//         () => FetchFieldConfigLovUsecase(injector()))
//     ..registerLazySingleton<FetchBeneficiaryFieldConfigUsecase>(
//         () => FetchBeneficiaryFieldConfigUsecase(injector()))
//     ..registerLazySingleton<FetchFcyTransactionHistoryUsecase>(
//         () => FetchFcyTransactionHistoryUsecase(historyRepo: injector()))
//     ..registerLazySingleton<RefundAmountInitiatedUsecases>(
//         () => RefundAmountInitiatedUsecases(historyRepo: injector()))
//     ..registerLazySingleton<FetchPartyBankInfoUsecase>(
//         () => FetchPartyBankInfoUsecase(injector()))
//     ..registerLazySingleton<FetchFcyTermsAndConditionUsecase>(
//         () => FetchFcyTermsAndConditionUsecase(injector()))
//     ..registerLazySingleton<FetchBankTransferTermsAndConditionUsecase>(
//         () => FetchBankTransferTermsAndConditionUsecase(injector()))
//     ..registerLazySingleton<FetchCashPickupTermsAndConditionUsecase>(
//         () => FetchCashPickupTermsAndConditionUsecase(injector()))
//     ..registerLazySingleton<FetchFcyDownloadUrlUsecase>(
//         () => FetchFcyDownloadUrlUsecase(injector()))
//     ..registerLazySingleton<FetchTrendsDataUsecase>(
//         () => FetchTrendsDataUsecase(injector()))
//     ..registerLazySingleton<FetchFcyReceiptDataUsecase>(
//         () => FetchFcyReceiptDataUsecase(injector()))
//     ..registerLazySingleton<FetchFcyPreviewDataUsecase>(
//         () => FetchFcyPreviewDataUsecase(injector()))
//     ..registerLazySingleton<UpdateUserAddressUsecase>(
//         () => UpdateUserAddressUsecase(injector()))
//     ..registerLazySingleton<FetchUserAddressesUsecase>(
//         () => FetchUserAddressesUsecase(injector()))
//     ..registerLazySingleton<CreateUserAddressUsecase>(
//         () => CreateUserAddressUsecase(injector()))
//     ..registerLazySingleton<FetchCashPickupTransactionFindUsecase>(
//         () => FetchCashPickupTransactionFindUsecase(injector()))
//     ..registerLazySingleton<SourceOfPaymentUsecase>(
//         () => SourceOfPaymentUsecase(injector()))
//     ..registerLazySingleton<FetchBeneLookupFieldConfigUsecase>(
//         () => FetchBeneLookupFieldConfigUsecase(injector()))
//     ..registerLazySingleton<PurposeOfPaymentUsecase>(
//         () => PurposeOfPaymentUsecase(injector()))
//     ..registerLazySingleton<FetchBranchesUsecase>(
//         () => FetchBranchesUsecase(injector()))
//     ..registerLazySingleton<FetchRelationsUsecase>(
//         () => FetchRelationsUsecase(sendMoneyRepository: injector()))
//     ..registerLazySingleton<SignupOccupationUsecase>(
//         () => SignupOccupationUsecase(injector()))
//     ..registerLazySingleton<SignupStatesUsecase>(
//         () => SignupStatesUsecase(injector()))
//     ..registerLazySingleton<SignupCitiesUsecase>(
//         () => SignupCitiesUsecase(injector()))
//     ..registerLazySingleton<SignupGender>(() => SignupGender(injector()))
//     ..registerLazySingleton<ValidateQIDUsecase>(
//         () => ValidateQIDUsecase(injector()))
//     ..registerLazySingleton<SigninWithPin>(() => SigninWithPin(injector()))
//     ..registerLazySingleton<TransactionHistory>(
//         () => TransactionHistory(historyRepo: injector()))
//     ..registerLazySingleton<FetchLookupCountries>(
//         () => FetchLookupCountries(injector()))
//     ..registerLazySingleton<FetchPromotionalBanners>(
//         () => FetchPromotionalBanners(injector()))
//     ..registerLazySingleton<SignUpWithBioMetric>(
//         () => SignUpWithBioMetric(injector()))
//     ..registerLazySingleton<SigninWithBioMetric>(
//         () => SigninWithBioMetric(injector()))
//     ..registerLazySingleton<SignupUser>(() => SignupUser(injector()))
//     ..registerLazySingleton<SignupVerifyOTP>(() => SignupVerifyOTP(injector()))
//     ..registerLazySingleton<SignupUploadQatarID>(
//         () => SignupUploadQatarID(injector()))
//     ..registerLazySingleton<SignupVerifyFace>(
//         () => SignupVerifyFace(injector()))
//     ..registerLazySingleton<ForgotPinSendOTP>(
//         () => ForgotPinSendOTP(injector()))
//     ..registerLazySingleton<ForgotPinVerifyOTP>(
//         () => ForgotPinVerifyOTP(injector()))
//     ..registerLazySingleton<ForgotPinCreatePin>(
//         () => ForgotPinCreatePin(injector()))
//     ..registerLazySingleton<SignupQatarId>(() => SignupQatarId(injector()))
//     ..registerLazySingleton<SignupCreatePin>(() => SignupCreatePin(injector()))
//     ..registerLazySingleton<SignupResendOTP>(() => SignupResendOTP(injector()))
//     ..registerLazySingleton<ForgotPinResendOTP>(
//         () => ForgotPinResendOTP(injector()))
//     ..registerLazySingleton<GetLookupCountries>(
//         () => GetLookupCountries(sendMoneyRepository: injector()))
//     ..registerLazySingleton<GetAgents>(
//         () => GetAgents(sendMoneyRepository: injector()))
//     ..registerLazySingleton<GetEGPAgents>(
//         () => GetEGPAgents(sendMoneyRepository: injector()))
//     ..registerLazySingleton<CreateBeneficiary>(
//         () => CreateBeneficiary(sendMoneyRepository: injector()))
//     ..registerLazySingleton<GetBeneficiaries>(
//         () => GetBeneficiaries(sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchGoldRates>(() => FetchGoldRates(injector()))
//     ..registerLazySingleton(
//         () => CreateSMCashPickupRequest(sendMoneyRepository: injector()))
//     ..registerLazySingleton(
//         () => SMCashPickupCheckoutRequest(sendMoneyRepository: injector()))
//     ..registerLazySingleton(
//         () => SendMoneyReceipt(sendMoneyRepository: injector()))
//     ..registerLazySingleton(
//         () => SMBankTransferCheckoutRequest(sendMoneyRepository: injector()))
//     ..registerLazySingleton(
//         () => CreateSMBankTransferRequest(sendMoneyRepository: injector()))
//     ..registerLazySingleton<FetchAccessTokenIDMissionUsecase>(
//         () => FetchAccessTokenIDMissionUsecase(injector()))
//     ..registerLazySingleton<UploadIDMissionData>(
//         () => UploadIDMissionData(injector()))
//     ..registerLazySingleton<FetchUpdateBeneficiaryFieldConfigUsecase>(
//         () => FetchUpdateBeneficiaryFieldConfigUsecase(injector()))
//     ..registerLazySingleton<UpdateBeneficiary>(
//         () => UpdateBeneficiary(sendMoneyRepository: injector()))
//     ..registerLazySingleton<CheckRoutingBankSendMoney>(
//         () => CheckRoutingBankSendMoney(injector()))
//     ..registerLazySingleton<FetchSupportedCurrenciesUseCase>(
//         () => FetchSupportedCurrenciesUseCase(injector()))
//     ..registerLazySingleton<FetchGoldProducts>(
//         () => FetchGoldProducts(injector()))
//     ..registerLazySingleton<FetchGoldProductCategory>(
//         () => FetchGoldProductCategory(injector()))
//     ..registerLazySingleton<FetchUserCart>(() => FetchUserCart(injector()))
//     ..registerLazySingleton<DeleteItemCart>(() => DeleteItemCart(injector()))
//     ..registerLazySingleton<AddOrRemoveItemCart>(
//         () => AddOrRemoveItemCart(injector()))
//     ..registerLazySingleton<ValidateStockAvailibilityUsecase>(
//         () => ValidateStockAvailibilityUsecase(injector()))
//     ..registerLazySingleton<FetchNewLookupCountries>(
//         () => FetchNewLookupCountries(injector()))
//     //
//     // ..registerLazySingleton<FetchUserDeliveryAddressesUsecase>(
//     //     () => FetchUserDeliveryAddressesUsecase(injector()))
//     ..registerLazySingleton<FetchCitiesUsecase>(
//         () => FetchCitiesUsecase(injector()))
//     // ..registerLazySingleton<GoldBarCreateUserAddressUsecase>(
//     //     () => GoldBarCreateUserAddressUsecase(injector()))
//     // ..registerLazySingleton<GoldBarUpdateUserAddressUsecase>(
//     //     () => GoldBarUpdateUserAddressUsecase(injector()))
//     ..registerLazySingleton<FetchGoldBarPreviewDataUsecase>(
//         () => FetchGoldBarPreviewDataUsecase(injector()))
//     ..registerLazySingleton<FetchGoldBarTermsAndConditionUsecase>(
//         () => FetchGoldBarTermsAndConditionUsecase(injector()))
//     ..registerLazySingleton<FetchGoldBarReceiptDataUsecase>(
//         () => FetchGoldBarReceiptDataUsecase(injector()))
//     ..registerLazySingleton<FetchGoldBarReceiptDownloadUrlUsecase>(
//         () => FetchGoldBarReceiptDownloadUrlUsecase(injector()))
//     ..registerLazySingleton<FetchGoldBarPurposeOfPaymentUsecase>(
//         () => FetchGoldBarPurposeOfPaymentUsecase(injector()))
//     ..registerLazySingleton<FetchGoldBarSourceOfPaymentUsecase>(
//         () => FetchGoldBarSourceOfPaymentUsecase(injector()))
//     //
//     ..registerLazySingleton<FetchProductFilterationDataUsecase>(
//         () => FetchProductFilterationDataUsecase(injector()))
//     ..registerLazySingleton<FetchGetFcRatesUsecase>(
//         () => FetchGetFcRatesUsecase(injector()))
//     // My Addresses Module Usecases
//     // ..registerLazySingleton<FetchMyAddressesUsecase>(
//     //     () => FetchMyAddressesUsecase(injector()))
//     ..registerLazySingleton<FetchMyAddressesCitiesUsecase>(
//         () => FetchMyAddressesCitiesUsecase(injector()))
//     ..registerLazySingleton<DeleteMyAddressUsecase>(
//         () => DeleteMyAddressUsecase(injector()))
//     // ..registerLazySingleton<CreateMyAddressUsecase>(
//     //     () => CreateMyAddressUsecase(injector()))
//     // ..registerLazySingleton<UpdateMyAddressUsecase>(
//     //     () => UpdateMyAddressUsecase(injector()))
//     ..registerLazySingleton<FetchMuncipalitiesUsecase>(
//         () => FetchMuncipalitiesUsecase(injector()))
//     ..registerLazySingleton<FetchZonesByMuncipalityUsecase>(
//         () => FetchZonesByMuncipalityUsecase(injector()))
//     ..registerLazySingleton<FetchDistrictByZonesUsecase>(
//         () => FetchDistrictByZonesUsecase(injector()))
//     ..registerLazySingleton<FetchZoneAndDistrictUsecase>(
//         () => FetchZoneAndDistrictUsecase(injector()))
//     // Security Settings Usecases
//     ..registerLazySingleton<DeactivateAccountUsecase>(
//         () => DeactivateAccountUsecase(injector()))
//     ..registerLazySingleton<ChangePinUsecase>(
//         () => ChangePinUsecase(injector()))
//     ..registerLazySingleton<EnableDisableBiometricUsecase>(
//         () => EnableDisableBiometricUsecase(injector()))
//     // Biometric Fingerprint Usecases
//     ..registerLazySingleton<GetBiometricDeviceEnableUsecase>(
//         () => GetBiometricDeviceEnableUsecase(injector()))
//     // Profile Management Usecases
//     ..registerLazySingleton<GetUserDetailsByIDUsecase>(
//         () => GetUserDetailsByIDUsecase(injector()))
//     ..registerLazySingleton<SendOTPUsecase>(() => SendOTPUsecase(injector()))
//     ..registerLazySingleton<VerifyOtpProfileManagementUsecase>(
//         () => VerifyOtpProfileManagementUsecase(injector()))
//     // Metal Products History Usecases
//     ..registerLazySingleton<FetchMetalProductsHistoryUsecase>(
//         () => FetchMetalProductsHistoryUsecase(historyRepo: injector()))
//     ..registerLazySingleton<FetchMetalProductsTransactionLimitUsecase>(
//         () => FetchMetalProductsTransactionLimitUsecase(injector()))
//     // Fetch Guest Token Usecases
//     ..registerLazySingleton<FetchGuestModeTokenUsecase>(
//         () => FetchGuestModeTokenUsecase(injector()))
//     // Reward Points Usecases
//     ..registerLazySingleton<FetchAvailableRewardPointsUsecase>(
//         () => FetchAvailableRewardPointsUsecase(injector()))
//     // Customer Support Usecases
//     ..registerLazySingleton<SubmitComplaintUsecase>(
//         () => SubmitComplaintUsecase(injector()))
//     ..registerLazySingleton<FetchComplaintTypesUsecase>(
//         () => FetchComplaintTypesUsecase(injector()))
//     // Unblock User Usecases
//     ..registerLazySingleton<VerifySecurityQuestionUsecase>(
//         () => VerifySecurityQuestionUsecase(injector()))
//     ..registerLazySingleton<VerifyActivateUserOtpUsecase>(
//         () => VerifyActivateUserOtpUsecase(injector()))
//     // Expired QID Module Usecases
//     ..registerLazySingleton<UploadQidExpiredUsecase>(
//         () => UploadQidExpiredUsecase(injector()))
//     ..registerLazySingleton<SubmitQidRenewalRequestUsecase>(
//         () => SubmitQidRenewalRequestUsecase(injector()))
//     // Notifications Management Usecases
//     ..registerLazySingleton<FetchNotificationUsecase>(
//         () => FetchNotificationUsecase(injector()))
//     ..registerLazySingleton<MarkAsViewedNotificationUsecase>(
//         () => MarkAsViewedNotificationUsecase(injector()))
//     // Travel Card Usecases
//     ..registerLazySingleton<FetchMyTravelCardUsecase>(
//         () => FetchMyTravelCardUsecase(injector()))
//     ..registerLazySingleton<FetchTravelCardTermsAndConditionUsecase>(
//         () => FetchTravelCardTermsAndConditionUsecase(injector()))
//     ..registerLazySingleton<FetchTravelCardPreviewDetailsUsecase>(
//         () => FetchTravelCardPreviewDetailsUsecase(injector()))
//     ..registerLazySingleton<FetchTravelCardReceiptDetailsUsecase>(
//         () => FetchTravelCardReceiptDetailsUsecase(injector()))
//     ..registerLazySingleton<FetchSecurityQuestionsUsecase>(
//         () => FetchSecurityQuestionsUsecase(injector()))
//     ..registerLazySingleton<FetchTravelCardReceiptDownloadUrlUsecase>(
//         () => FetchTravelCardReceiptDownloadUrlUsecase(injector()))
//     ..registerLazySingleton<FetchTravelCardRatesUsecase>(
//         () => FetchTravelCardRatesUsecase(injector()))
//     ..registerLazySingleton<FetchLastTransactionDetailUsecase>(
//         () => FetchLastTransactionDetailUsecase(injector()))
//     // App Configurations Usecases
//     ..registerLazySingleton<FetchAppConfigurationUsecase>(
//         () => FetchAppConfigurationUsecase(injector()))
//     ..registerLazySingleton<FetchSplashImageUsecase>(
//       () => FetchSplashImageUsecase(injector()),
//     )
//     ..registerLazySingleton<FetchInviteFriendMessagesUsecase>(
//         () => FetchInviteFriendMessagesUsecase(injector()))
//     // FCY Settings Details Usecases
//     ..registerLazySingleton<FetchFcySettingsDetailsUsecase>(
//         () => FetchFcySettingsDetailsUsecase(injector()))
//     // FAQs Usecases
//     ..registerLazySingleton<FetchFAQsUsecase>(
//         () => FetchFAQsUsecase(injector()))
//     // Register New Device Usecase
//     ..registerLazySingleton<RegisterNewDeviceSendOtpUsecase>(
//         () => RegisterNewDeviceSendOtpUsecase(injector()))
//     ..registerLazySingleton<RegisterNewDeviceVerifyOTPUsecase>(
//         () => RegisterNewDeviceVerifyOTPUsecase(injector()))
//     ..registerLazySingleton<LogoutUserUsecase>(
//         () => LogoutUserUsecase(injector()))
//     // Beneficiary Management Usecases
//     ..registerLazySingleton<DeleteBeneficiaryUsecase>(
//         () => DeleteBeneficiaryUsecase(injector()))
//     // Terms and condition and Privacy Policy Usecases
//     ..registerLazySingleton<FetchTermsAndConditionAndPrivacyPolicyUsecase>(
//         () => FetchTermsAndConditionAndPrivacyPolicyUsecase(injector()))
//     // My Book Usecases
//     ..registerLazySingleton<FetchMyBookBenefitsUsecase>(
//         () => FetchMyBookBenefitsUsecase(injector()))
//     ..registerLazySingleton<FetchMyBookTermsAndConditionsUsecase>(
//         () => FetchMyBookTermsAndConditionsUsecase(injector()))
//     ..registerLazySingleton<FetchMyBookRedirectionUrlUsecase>(
//         () => FetchMyBookRedirectionUrlUsecase(injector()))
//     ..registerLazySingleton<RegisterMyBookUsecase>(
//         () => RegisterMyBookUsecase(injector()))
//     ..registerLazySingleton<FetchMyBookDashboardInfoUsecase>(
//         () => FetchMyBookDashboardInfoUsecase(injector()))
//     // Transactional Statement Module Usecases
//     ..registerLazySingleton<FetchMyTransactionalStatementsUsecase>(
//         () => FetchMyTransactionalStatementsUsecase(injector()))
//     // Branch Locator Module Usecases
//     ..registerLazySingleton<FetchBranchLocatorInformationUsecase>(
//         () => FetchBranchLocatorInformationUsecase(injector()))
//     ..registerLazySingleton<FetchBranchLocatorDistanceUsecase>(
//         () => FetchBranchLocatorDistanceUsecase(injector()))
//     ..registerLazySingleton<GetRoutingAgentForMultipleCurrenciesUseCase>(
//         () => GetRoutingAgentForMultipleCurrenciesUseCase(injector()))
//     ..registerLazySingleton<VerifyAgentUseCase>(
//         () => VerifyAgentUseCase(injector()))

// ////////////////////////////////////////////////////////////////////////////
//     // repositories
//     ..registerLazySingleton<UserRepository>(
//         () => UserRepositoryImpl(injector()))
//     ..registerLazySingleton<TransactionHistoryRepo>(
//         () => TransactionHistoryRepoImpl(injector()))
//     ..registerLazySingleton<SendMoneyRepository>(
//         () => SendMoneyRepositoryImpl(injector()))
//     ..registerLazySingleton<HomeModuleRepository>(
//         () => HomeModuleRepoImpl(injector()))
//     ..registerLazySingleton<GoldBarRatesRepo>(
//         () => GoldBarRatesRepoImpl(injector()))
//     ..registerLazySingleton<ForeignCurrencyRepo>(
//         () => ForeignCurrencyRepoImpl(injector()))
//     ..registerLazySingleton<TermsAndConditionRepo>(
//         () => TermsAndConditionRepoImpl(injector()))
//     ..registerLazySingleton<BuyGoldBarProductsRepo>(
//         () => BuyGoldBarProductsRepoImpl(injector()))
//     ..registerLazySingleton<CartManagementRepo>(
//         () => CartManagementRepoImpl(injector()))
//     ..registerLazySingleton<UserDeliveryAddressesManagementRepo>(
//         () => UserDeliveryAddressesManagementRepoImpl(injector()))
//     ..registerLazySingleton<GoldBarPreviewRepo>(
//         () => GoldBarPreviewRepoImpl(injector()))
//     ..registerLazySingleton<GoldBarReceiptRepo>(
//         () => GoldBarReceiptRepoImpl(injector()))
//     // My Addresses Module Repositories
//     ..registerLazySingleton<MyAddressesRepo>(
//         () => MyAddressesRepoImpl(injector()))
//     // Security Settings Repositories
//     ..registerLazySingleton<SecuritySettingsRepository>(
//         () => SecuritySettingsRepositoryImpl(injector()))
//     // Profile Management Repositories
//     ..registerLazySingleton<ProfileManagementRepository>(
//         () => ProfileManagementRepositoryImpl(injector()))
//     // Reward Points Repositories
//     ..registerLazySingleton<RewardPointsRepository>(
//         () => RewardPointsRepositoryImpl(injector()))
//     // Customer Support Repositories
//     ..registerLazySingleton<CustomerSupportRepository>(
//         () => CustomerSupportRepositoryImpl(injector()))
//     // Unblock User Repositories
//     ..registerLazySingleton<ActiveInactiveUserRepository>(
//         () => ActiveInactiveUserRepositoryImpl(injector()))
//     // Expired QID Module Repositories
//     ..registerLazySingleton<ExpiredQidRepository>(
//         () => ExpiredQidRepositoryImpl(injector()))
//     // Notifications Management Repositories
//     ..registerLazySingleton<NotificationsManagementRepository>(
//         () => NotificationsManagementRepositoryImpl(injector()))
//     // App Configurations Repositories
//     ..registerLazySingleton<AppConfigurationRepository>(
//         () => AppConfigurationRepositoryImpl(injector()))
//     // Buy Travel Card Repositories
//     ..registerLazySingleton<TravelCardRepository>(
//         () => TravelCardRepositoryImpl(injector()))
//     // FAQs Repositories
//     ..registerLazySingleton<FAQsRepository>(
//         () => FAQsRepositoryImpl(injector()))
//     // Beneficiary Management Repositories
//     ..registerLazySingleton<BeneficiaryManagementRepository>(
//         () => BeneficiaryManagementRepositoryImpl(injector()))
//     // My Book Repositories
//     ..registerLazySingleton<MyBookRepository>(
//         () => MyBookRepositoryImpl(injector()))
//     // Transactional Statement Module Repositories
//     ..registerLazySingleton<TransactionalStatementModuleRepository>(
//         () => TransactionalStatementModuleRepositoryImpl(injector()))
//     // Transactional Statement Module Repositories
//     ..registerLazySingleton<BranchLocatorModuleRepository>(
//         () => BranchLocatorModuleRepositoryImpl(injector()))
// ////////////////////////////////////////////////////////////////////////////
//     //data sources
//     ..registerLazySingleton<AuthRemoteDataSource>(
//         () => AuthRemoteDataSourceImpl())
//     ..registerLazySingleton<TransactionHistoryRemoteSource>(
//         () => TransactionHistoryRemoteSourceImpl())
//     ..registerLazySingleton<SendMoneyRemoteDataSource>(
//         () => SendMoneyRemoteDataSourceImpl())
//     ..registerLazySingleton<HomeModuleRemoteDataSource>(
//         () => HomeModuleRemoteDataSourceImpl())
//     ..registerLazySingleton<GoldBarRemoteDataSource>(
//         () => GoldBarRemoteDataSourceImpl())
//     ..registerLazySingleton<ForeignCurrencyRemoteSource>(
//         () => ForeignCurrencyRemoteSourceImpl())
//     ..registerLazySingleton<TermsAndConditionRemoteSource>(
//         () => TermsAndConditionRemoteSourceImpl())
//     ..registerLazySingleton<BuyGoldProductRemoteDataSource>(
//         () => BuyGoldProductRemoteDataSourceImpl())
//     ..registerLazySingleton<CartManagementRemoteDataSource>(
//         () => CartManagementRemoteDataSourceImpl())
//     ..registerLazySingleton<UserDeliveryManagementRemoteDataSource>(
//         () => UserDeliveryManagementRemoteDataSourceImpl())
//     ..registerLazySingleton<GoldBarPreviewRemoteDataSource>(
//         () => GoldBarPreviewRemoteDataSourceImpl())
//     ..registerLazySingleton<GoldBarReceiptRemoteDataSource>(
//         () => GoldBarReceiptRemoteDataSourceImpl())
//     // My Addresses Module Remote Data Source
//     ..registerLazySingleton<MyAddressesRemoteDataSource>(
//         () => MyAddressesRemoteDataSourceImpl())
//     // Security Settings Remote Data Source
//     ..registerLazySingleton<SecuritySettingsDataSource>(
//         () => SecuritySettingsDataSourceImpl())
//     // Profile Management Remote Data Source
//     ..registerLazySingleton<ProfileManagementDataSource>(
//         () => ProfileManagementDataSourceImpl())
//     // Reward Points Remote Data Source
//     ..registerLazySingleton<RewardPointsDataSource>(
//         () => RewardPointsDataSourceImpl())
//     // Customer Support Remote Data Source
//     ..registerLazySingleton<CustomerSupportDataSource>(
//         () => CustomerSupportDataSourceImpl())
//     // Unblock User Remote Data Source
//     ..registerLazySingleton<ActiveInactiveUserDataSource>(
//         () => ActiveInactiveUserDataSourceImpl())
//     // Expired QID Module Remote Data Source
//     ..registerLazySingleton<ExpiredQidDataSource>(
//         () => ExpiredQidDataSourceImpl())
//     // Notifications Management Remote Data Source
//     ..registerLazySingleton<NotificationsManagementDataSource>(
//         () => NotificationsManagementDataSourceImpl())
//     // App Configurations Remote Data Source
//     ..registerLazySingleton<AppConfigurationRemoteDataSource>(
//         () => AppConfigurationRemoteDataSourceImpl())
//     // Buy Travel Card Remote Data Source
//     ..registerLazySingleton<TravelCardDataSource>(
//         () => TravelCardDataSourceImpl())
//     // FAQs Remote Data Source
//     ..registerLazySingleton<FAQsRemoteDataSource>(
//         () => FAQsRemoteDataSourceImpl())
//     // Beneficiary Management Remote Data Source
//     ..registerLazySingleton<BeneficiaryManagementRemoteDataSource>(
//         () => BeneficiaryManagementRemoteDataSourceImpl())
//     // My Book Remote Data Source
//     ..registerLazySingleton<MyBookRemoteDataSource>(
//         () => MyBookRemoteDataSourceImpl())
//     // Transactional Statement Module Repositories
//     ..registerLazySingleton<TransactionalStatementsRemoteDataSource>(
//         () => TransactionalStatementsRemoteDataSourceImpl())
//     // Branch Locator Module Data Source
//     ..registerLazySingleton<BranchLocatorModuleRemoteDataSource>(
//         () => BranchLocatorModuleRemoteDataSourceImpl())
//     //
//     ..registerLazySingleton<CameraService>(() => CameraService());
// }
