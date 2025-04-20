import '../utils/utlis_const.dart';

class AgentsParam extends Equatable {
  final int id;

  const AgentsParam({required this.id});

  @override
  List<Object?> get props => [id];
}

class LookUpCountryParams extends Equatable {
  final int id;

  const LookUpCountryParams({required this.id});

  @override
  List<Object?> get props => [id];
}

class SignupUserParams extends Equatable {
  final String qatarId, phoneNumber, email, referralPhoneNumber;

  const SignupUserParams({
    required this.qatarId,
    required this.phoneNumber,
    required this.email,
    required this.referralPhoneNumber,
  });

  @override
  List<Object?> get props => [qatarId, phoneNumber, email, referralPhoneNumber];
}

class SignupResendOTPParams extends Equatable {
  final String userId;

  const SignupResendOTPParams({
    required this.userId,
  });

  @override
  List<Object?> get props => [userId];
}

class SignupVerifyOTPParams extends Equatable {
  final String qatarId, otp, userId;

  const SignupVerifyOTPParams({
    required this.qatarId,
    required this.otp,
    required this.userId,
  });

  @override
  List<Object?> get props => [qatarId, userId, otp];
}

class SignupUploadQatarIDParams extends Equatable {
  final String qatarId, userId;
  final File frontPhoto, backPhoto;

  const SignupUploadQatarIDParams({
    required this.qatarId,
    required this.userId,
    required this.frontPhoto,
    required this.backPhoto,
  });

  @override
  List<Object?> get props => [];
}

class SignupQatarIDDataParams extends Equatable {
  final String userId,
      fullName,
      qatarId,
      dob,
      qatarIdExpiry,
      nationality,
      ocrQatarId;
  final String? idType,
      birthCountry,
      addressZone,
      addressStreet,
      addressBuilding,
      poBox,
      email,
      occupation,
      countryIsoCode,
      countryName,
      stateName,
      cityName,
      genderName,
      idProcessedFrontImage,
      idProcessedBackImage,
      selfie,
      profession,
      municipalityID,
      municipalityName,
      zoneID,
      zoneName,
      districtID,
      districtName,
      zoneAndDistrictID,
      zoneAndDistrictName,
      unitNumber,
      actualOccupationName,
      nationalityDropdownIsoCode;

  final int? stateId, cityId, occupationId, genderId, actualOccupationID;

  const SignupQatarIDDataParams({
    required this.countryIsoCode,
    required this.countryName,
    required this.stateName,
    required this.cityName,
    required this.genderName,
    required this.stateId,
    required this.cityId,
    required this.occupationId,
    required this.genderId,
    //
    required this.userId,
    required this.fullName,
    required this.qatarId,
    required this.dob,
    required this.qatarIdExpiry,
    required this.nationality,
    required this.idType,
    required this.birthCountry,
    // required this.nationalCountry,
    required this.addressZone,
    required this.addressStreet,
    required this.addressBuilding,
    required this.poBox,
    required this.occupation,
    required this.ocrQatarId,
    this.email,
    required this.profession,
    required this.idProcessedBackImage,
    required this.idProcessedFrontImage,
    required this.selfie,
    required this.municipalityID,
    required this.municipalityName,
    required this.zoneID,
    required this.zoneName,
    required this.districtID,
    required this.districtName,
    required this.zoneAndDistrictID,
    required this.zoneAndDistrictName,
    required this.unitNumber,
    required this.actualOccupationID,
    required this.actualOccupationName,
    required this.nationalityDropdownIsoCode,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class SignupVerifyFaceParams extends Equatable {
  final String userId, qatarId;
  final String idFaceUrl;
  final File? selfiePhoto;
  final bool forceSelfieVerification;

  const SignupVerifyFaceParams({
    required this.userId,
    required this.qatarId,
    this.selfiePhoto,
    required this.idFaceUrl,
    this.forceSelfieVerification = false,
  });

  @override
  List<Object?> get props => [];
}

class SignupCreatePinParams extends Equatable {
  final String pinCode, confirmPinCode, qatarId, userId;

  const SignupCreatePinParams({
    required this.confirmPinCode,
    required this.pinCode,
    required this.userId,
    required this.qatarId,
  });

  @override
  List<Object?> get props => [pinCode, userId, confirmPinCode];
}

class SignupCreateBioMetricParams extends Equatable {
  final String qatarID, pinCode;
  final bool isBioToken;

  const SignupCreateBioMetricParams({
    required this.qatarID,
    required this.pinCode,
    required this.isBioToken,
  });

  @override
  List<Object?> get props => [pinCode, qatarID, isBioToken];
}

class SigninWithPinParams extends Equatable {
  final String qatarId, pin;

  const SigninWithPinParams({
    required this.qatarId,
    required this.pin,
  });

  @override
  List<Object?> get props => [qatarId, pin];
}

class SigninWithBioMetricParams extends Equatable {
  final String bioToken;

  const SigninWithBioMetricParams({
    required this.bioToken,
  });

  @override
  List<Object?> get props => [bioToken];
}

class ForgotPinSendOTPParams extends Equatable {
  final String qatarId, mobileNum, dateOfBirth;

  const ForgotPinSendOTPParams({
    required this.qatarId,
    required this.mobileNum,
    required this.dateOfBirth,
  });

  @override
  List<Object?> get props => [qatarId, mobileNum, dateOfBirth];
}

class ForgotPinResendOTPParams extends Equatable {
  final String userId;

  const ForgotPinResendOTPParams({
    required this.userId,
  });

  @override
  List<Object?> get props => [userId];
}

class ForgotPinVerifyOTPParams extends Equatable {
  final String qatarId, mobileNum, userId, otp;

  const ForgotPinVerifyOTPParams({
    required this.qatarId,
    required this.mobileNum,
    required this.userId,
    required this.otp,
  });

  @override
  List<Object?> get props => [qatarId, userId];
}

class ForgotPinCreatePinParams extends Equatable {
  final String userId, pinCode, confirmPinCode;

  const ForgotPinCreatePinParams({
    required this.userId,
    required this.pinCode,
    required this.confirmPinCode,
  });

  @override
  List<Object?> get props => [userId];
}

class CreateBeneficiaryParams extends Equatable {
  final String? userID,
      countryName,
      deliveryType,
      countryIsoCode,
      routingBankId,
      currencyId,
      rountingName,
      agentID,
      agentName;
  final int? countryId;
  final List<Map<String, String>>? beneficiaryDynamicValues;
  final File? beneficiaryImage;
  final bool? isForceToGo;
  final String? accountTitle;

  const CreateBeneficiaryParams({
    required this.userID,
    this.countryName,
    required this.countryIsoCode,
    this.deliveryType,
    this.countryId,
    this.beneficiaryDynamicValues,
    this.routingBankId,
    this.currencyId,
    this.agentName,
    this.agentID,
    this.rountingName,
    this.beneficiaryImage,
    this.isForceToGo,
    required this.accountTitle,
  });

  @override
  List<Object?> get props => [
        userID,
        countryName,
        countryIsoCode,
        deliveryType,
        countryId,
        beneficiaryDynamicValues,
        routingBankId,
        currencyId,
        beneficiaryImage,
        isForceToGo,
        accountTitle
      ];
}

class UpdateBeneficiaryParams extends Equatable {
  final String? userID,
      countryName,
      deliveryType,
      countryIsoCode,
      routingBankId;
  final int? countryId, beneID;
  final List<Map<String, String>>? beneficiaryDynamicValues;
  final File? beneficiaryImage;
  final bool? isForceToGo;
  final String? accountTitle;

  const UpdateBeneficiaryParams({
    required this.userID,
    required this.beneID,
    this.routingBankId,
    this.countryName,
    required this.countryIsoCode,
    this.deliveryType,
    this.countryId,
    this.beneficiaryDynamicValues,
    this.beneficiaryImage,
    this.isForceToGo,
    required this.accountTitle,
  });

  @override
  List<Object?> get props => [userID];
}

class GetBeneficiaryListParams extends Equatable {
  final String userId;
  final String? serviceType, partyCode;
  final String? countryIsoCode;
  final String? currencyCode;

  const GetBeneficiaryListParams({
    required this.userId,
    required this.serviceType,
    required this.countryIsoCode,
    required this.partyCode,
    required this.currencyCode,
  });

  @override
  List<Object?> get props =>
      [userId, serviceType, countryIsoCode, partyCode, currencyCode];
}

class CreateSMCashPickupRequestParams extends Equatable {
  final String userID,
      paymentType,
      purposeId,
      purposeName,
      fundSourceName,
      fromCountryCode,
      fromCurrencyCode,
      agentID,
      agentName,
      glCode,
      conversionRate,
      promoCode,
      remitterCode;
  final int beneficiaryID, fundSourceId;
  final dynamic amountFrom, amountTo;
  final bool? isRewardedPointsRedeemed;
  final String? availableRewardPointsForRedeem;

  const CreateSMCashPickupRequestParams({
    required this.userID,
    required this.paymentType,
    required this.purposeId,
    required this.purposeName,
    required this.fundSourceName,
    required this.fromCountryCode,
    required this.fromCurrencyCode,
    required this.agentID,
    required this.beneficiaryID,
    required this.fundSourceId,
    required this.amountFrom,
    required this.conversionRate,
    required this.promoCode,
    required this.remitterCode,
    required this.amountTo,
    required this.agentName,
    required this.glCode,
    required this.isRewardedPointsRedeemed,
    required this.availableRewardPointsForRedeem,
  });

  @override
  List<Object?> get props => [];
}

class CashPickupTransactionFindParams extends Equatable {
  final String refNumber;

  const CashPickupTransactionFindParams({required this.refNumber});

  @override
  List<Object?> get props => [];
}

class CheckoutSMCashPickupParams extends Equatable {
  final String promoCode, userId, refNumber;
  final int userAgreementPolicy;

  const CheckoutSMCashPickupParams({
    required this.promoCode,
    required this.userId,
    required this.refNumber,
    required this.userAgreementPolicy,
  });

  @override
  List<Object?> get props => [promoCode, userId, refNumber];
}

class CreateSMBankTransferRequestParams extends Equatable {
  final String userID,
      paymentType,
      purposeId,
      purposeName,
      fundSourceName,
      fromCountryCode,
      fromCurrencyCode,
      agentID,
      conversionRate,
      promoCode,
      remitterCode;
  final int beneficiaryID, fundSourceId;
  final dynamic amountFrom, amountTo;
  final bool? isRewardedPointsRedeemed;
  final String? availableRewardPointsForRedeem;

  const CreateSMBankTransferRequestParams({
    required this.userID,
    required this.paymentType,
    required this.purposeId,
    required this.purposeName,
    required this.fundSourceName,
    required this.fromCountryCode,
    required this.fromCurrencyCode,
    required this.agentID,
    required this.beneficiaryID,
    required this.fundSourceId,
    required this.amountFrom,
    required this.conversionRate,
    required this.promoCode,
    required this.remitterCode,
    required this.amountTo,
    required this.isRewardedPointsRedeemed,
    required this.availableRewardPointsForRedeem,
  });

  @override
  List<Object?> get props => [];
}
// class CreateSMBankTransferRequestParams extends Equatable {
//   final String userID, paymentType, amountFromCurrencyId, amountToCurrencyId;
//   final dynamic agentID, beneficiaryID, amountFrom, amountTo, conversionRate;

//   const CreateSMBankTransferRequestParams({
//     required this.userID,
//     required this.agentID,
//     required this.beneficiaryID,
//     required this.amountFrom,
//     required this.amountTo,
//     required this.amountFromCurrencyId,
//     required this.amountToCurrencyId,
//     required this.conversionRate,
//     required this.paymentType,
//   });

//   @override
//   List<Object?> get props => [];
// }

class CheckoutSMBankTransferParams extends Equatable {
  final String promoCode, userId, refNumber;
  final int userAgreementPolicy;

  const CheckoutSMBankTransferParams({
    required this.promoCode,
    required this.userId,
    required this.refNumber,
    required this.userAgreementPolicy,
  });

  @override
  List<Object?> get props => [promoCode, userId, refNumber];
}

class SendMoneyReceiptParams extends Equatable {
  final String transactionId;

  const SendMoneyReceiptParams({required this.transactionId});

  @override
  // TODO: implement props
  List<Object?> get props => [transactionId];
}

class FetchTransactionHistoryParams extends Equatable {
  final String userID;
  final int pageNumber, pageSize;

  const FetchTransactionHistoryParams({
    required this.userID,
    required this.pageNumber,
    required this.pageSize,
  });

  @override
  List<Object?> get props => [userID, pageNumber, pageSize];
}

class FetchSignupCitiesParams extends Equatable {
  final String iso2Code;

  const FetchSignupCitiesParams({required this.iso2Code});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class FetchSignupStatesParams extends Equatable {
  final String iso2Code;

  const FetchSignupStatesParams({required this.iso2Code});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class FetchSendMoneyAgentsParams extends Equatable {
  final String? iso2Code, serviceTypeCode;

  const FetchSendMoneyAgentsParams({
    this.iso2Code,
    this.serviceTypeCode,
  });

  @override
  List<Object?> get props => [iso2Code, serviceTypeCode];
}

class FetchSendMoneyEGPAgentsParams extends Equatable {
  final String? iso2Code, serviceTypeCode, agentCode;

  const FetchSendMoneyEGPAgentsParams({
    this.iso2Code,
    this.serviceTypeCode,
    this.agentCode,
  });

  @override
  List<Object?> get props => [iso2Code, serviceTypeCode];
}

class FetchBranchesParams extends Equatable {
  final String countryIso2Code, partyCode;

  const FetchBranchesParams({
    required this.countryIso2Code,
    required this.partyCode,
  });

  @override
  List<Object?> get props => [];
}

class BeneLookupFieldConfigParams extends Equatable {
  final String countryCode, partyCode, serviceCode;

  const BeneLookupFieldConfigParams({
    required this.countryCode,
    required this.partyCode,
    required this.serviceCode,
  });

  @override
  List<Object?> get props => [];
}

class CreateUserAddressParams extends Equatable {
  final int? cityId;
  final String? userId,
      addressZone,
      addressStreet,
      addressBuilding,
      additionalInfo,
      unitNumber;

//
  final String? muncipalityID, zoneID, districtID, districtZoneID;
  final String? muncipalityName, zoneName, districtName, districtZoneName;

  const CreateUserAddressParams({
    this.userId,
    this.cityId,
    this.addressZone,
    this.addressStreet,
    this.addressBuilding,
    this.additionalInfo,
    required this.unitNumber,
    this.muncipalityID,
    this.muncipalityName,
    this.zoneID,
    this.zoneName,
    this.districtID,
    this.districtName,
    this.districtZoneID,
    this.districtZoneName,
  });

  @override
  List<Object?> get props => [];
}

class UpdateUserAddressParams extends Equatable {
  final int? id, cityId;
  final String? userId,
      addressZone,
      addressStreet,
      addressBuilding,
      additionalInfo,
      unitNumber;

//
  final String? muncipalityID, zoneID, districtID, districtZoneID;
  final String? muncipalityName, zoneName, districtName, districtZoneName;

  const UpdateUserAddressParams({
    this.id,
    this.userId,
    this.cityId,
    this.addressZone,
    this.addressStreet,
    this.addressBuilding,
    this.additionalInfo,
    required this.unitNumber,
    this.muncipalityID,
    this.muncipalityName,
    this.zoneID,
    this.zoneName,
    this.districtID,
    this.districtName,
    this.districtZoneID,
    this.districtZoneName,
  });

  @override
  List<Object?> get props => [];
}

class FetchUserAddressesParams extends Equatable {
  final bool? isdelivery;

  const FetchUserAddressesParams({this.isdelivery});

  @override
  List<Object?> get props => [isdelivery];
}

class FetchFcyPreviewDataParams extends Equatable {
  final String? userId, fromCurrencyId, fundSourceName, purposeName, purposeId;
  final int? addressId, fundSourceId;
  final bool? isMultiple;
  final List<Map<String, dynamic>>? toCurrencies;

  const FetchFcyPreviewDataParams({
    this.userId,
    this.fromCurrencyId,
    this.addressId,
    this.isMultiple,
    this.toCurrencies,
    this.fundSourceName,
    this.purposeName,
    this.fundSourceId,
    this.purposeId,
  });

  @override
  List<Object?> get props => [];
}

class FetchFcyReceiptDataParams extends Equatable {
  final String? refNumber;

  const FetchFcyReceiptDataParams({this.refNumber});

  @override
  List<Object?> get props => [];
}

class FetchTrendsDataParams extends Equatable {
  final String? currencyCode;

  const FetchTrendsDataParams({this.currencyCode});

  @override
  List<Object?> get props => [];
}

class FetchFcyDownloadUrlParams extends Equatable {
  final String? refNumber;

  const FetchFcyDownloadUrlParams({this.refNumber});

  @override
  List<Object?> get props => [];
}

class FetchPartyBankInfoParams extends Equatable {
  final String? isoCode, partyCode, serviceType;

  const FetchPartyBankInfoParams(
      {this.isoCode, this.partyCode, this.serviceType});

  @override
  List<Object?> get props => [isoCode, partyCode, serviceType];
}

class FetchFcyTransactionHistoryParams extends Equatable {
  final String? userId;

  const FetchFcyTransactionHistoryParams({this.userId});

  @override
  List<Object?> get props => [userId];
}

class BeneficiaryFieldConfigParams extends Equatable {
  final String countryCode, serviceType, partyCode;

  const BeneficiaryFieldConfigParams({
    required this.countryCode,
    required this.serviceType,
    required this.partyCode,
  });

  @override
  List<Object?> get props => [countryCode, serviceType, partyCode];
}

class UpdateBeneficiaryFieldConfigParams extends Equatable {
  final String beneID, serviceType, partyCode, countryIsoCode;
  final String? routingId;

  const UpdateBeneficiaryFieldConfigParams({
    required this.beneID,
    required this.serviceType,
    required this.partyCode,
    this.routingId,
    required this.countryIsoCode,
  });

  @override
  List<Object?> get props => [beneID, serviceType, partyCode, countryIsoCode];
}

class FieldConfigLovParams extends Equatable {
  final String? fieldLookupName,
      fieldName,
      partyCode,
      search,
      isoCode,
      serviceType,
      agentIDOrRoutingBankCode,
      fieldType;
  final bool? isbranchNameTextVisible;

  const FieldConfigLovParams({
    this.isoCode,
    this.fieldLookupName,
    this.fieldName,
    this.partyCode,
    this.search,
    required this.serviceType,
    required this.agentIDOrRoutingBankCode,
    required this.isbranchNameTextVisible,
    required this.fieldType,
  });

  @override
  List<Object?> get props => [
        isoCode,
        fieldLookupName,
        fieldName,
        partyCode,
        search,
        serviceType,
        agentIDOrRoutingBankCode,
        isbranchNameTextVisible,
        fieldType
      ];
}

class FetchFcyStockParams extends Equatable {
  final String? countryIsoCode;

  const FetchFcyStockParams({this.countryIsoCode});

  @override
  List<Object?> get props => [countryIsoCode];
}

class FetchSendMoneyContinueParams extends Equatable {
  final String? refNumber;
  final String? serviceType;
  final String? paymentGateway;

  const FetchSendMoneyContinueParams(
      {this.refNumber, this.serviceType, this.paymentGateway});

  @override
  List<Object?> get props => [refNumber, serviceType, paymentGateway];
}

class FetchSendMoneyApplePayParams extends Equatable {
  final String? refNumber;

  const FetchSendMoneyApplePayParams({this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

class InquirySendMoneyApplePayParams extends Equatable {
  final String? refNumber,
      merchantOrderNumber,
      orderNumber,
      afxTransactionNumber,
      token;

  const InquirySendMoneyApplePayParams({
    this.refNumber,
    this.orderNumber,
    this.merchantOrderNumber,
    this.afxTransactionNumber,
    this.token,
  });

  @override
  List<Object?> get props => [
        refNumber,
        merchantOrderNumber,
        orderNumber,
        afxTransactionNumber,
      ];
}

class FetchTransactionStatusParams extends Equatable {
  final String? afxTransactionNumber,
      afxTransactionCode,
      afxReferenceNumber,
      serviceType;

  const FetchTransactionStatusParams({
    this.afxTransactionNumber,
    this.afxTransactionCode,
    this.afxReferenceNumber,
    this.serviceType,
  });

  @override
  List<Object?> get props => [
        afxTransactionNumber,
        afxTransactionCode,
        afxReferenceNumber,
        serviceType
      ];
}

class FetchTransactionAmountLimitParams extends Equatable {
  final String? afxUserID, transactionType, module;
  final double? transactionAmount;

  const FetchTransactionAmountLimitParams({
    this.afxUserID,
    this.transactionType,
    this.module,
    required this.transactionAmount,
  });

  @override
  List<Object?> get props =>
      [afxUserID, transactionType, module, transactionAmount];
}

class FetchPurposeOfPaymentParams extends Equatable {
  final String? transactionType, agentId, countryCode;

  const FetchPurposeOfPaymentParams(
      {this.transactionType, this.agentId, this.countryCode});

  @override
  List<Object?> get props => [transactionType, agentId, countryCode];
}

class FetchSourceOfPaymentParams extends Equatable {
  final String? transactionType, agentId, countryCode;

  const FetchSourceOfPaymentParams(
      {this.transactionType, this.agentId, this.countryCode});

  @override
  List<Object?> get props => [transactionType, agentId, countryCode];
}

class FetchQpayFailedTransactionStatusParams extends Equatable {
  final String? refNumber;

  const FetchQpayFailedTransactionStatusParams({this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

class FetchCommissionBasedCurrenciesParams extends Equatable {
  final String? agentId,
      countryCode,
      transactionType,
      currencyId,
      bankCode,
      remitterCode,
      beniId;

  const FetchCommissionBasedCurrenciesParams({
    this.agentId,
    this.countryCode,
    this.transactionType,
    this.currencyId,
    required this.beniId,
    required this.bankCode,
    required this.remitterCode,
  });

  @override
  List<Object?> get props => [
        agentId,
        countryCode,
        transactionType,
        currencyId,
        bankCode,
        remitterCode
      ];
}

class CheckBeneRoutingBankParams extends Equatable {
  final String? benificiaryId;
  final String? partyCode;
  final String? serviceType;

  const CheckBeneRoutingBankParams(
      {this.benificiaryId, this.partyCode, this.serviceType});

  @override
  List<Object?> get props => [benificiaryId, benificiaryId, serviceType];
}

class FetchQpayWebhookInquiryParams extends Equatable {
  final String? refNumber;
  final String? afxTransactionNumber;

  const FetchQpayWebhookInquiryParams(
      {this.refNumber, this.afxTransactionNumber});

  @override
  List<Object?> get props => [refNumber, afxTransactionNumber];
}

class FetchBeneficiaryBranchesDetailsParams extends Equatable {
  final String? partyCode, branchName;

  const FetchBeneficiaryBranchesDetailsParams(
      {this.partyCode, this.branchName});

  @override
  List<Object?> get props => [partyCode, branchName];
}

class GoldProductParam extends Equatable {
  final String? categoryLookupName;
  final String? sortBy, sortDirection;
  final int? pageSize, pageNumber;
  final String? karatType, brandName, purity, grossWeight;

  const GoldProductParam({
    this.categoryLookupName,
    this.sortBy,
    this.sortDirection,
    this.pageSize,
    this.pageNumber,
    required this.karatType,
    required this.brandName,
    required this.purity,
    required this.grossWeight,
  });

  @override
  List<Object?> get props => [
        categoryLookupName,
        sortBy,
        sortDirection,
        pageSize,
        pageNumber,
        karatType,
        brandName,
        purity,
        grossWeight
      ];
}

class CartAddItemParams extends Equatable {
  final int productID;
  final dynamic quantity, price;
  final String userID,
      productCode,
      productDiscription,
      productType,
      agentName,
      grossWeight,
      purity,
      labourPerItem,
      otherChargesGMQAR,
      pureWeight,
      productName,
      karat,
      agentCode;

  const CartAddItemParams({
    required this.quantity,
    required this.productID,
    required this.userID,
    required this.productCode,
    required this.productDiscription,
    required this.productType,
    required this.agentName,
    required this.grossWeight,
    required this.purity,
    required this.labourPerItem,
    required this.otherChargesGMQAR,
    required this.pureWeight,
    required this.productName,
    required this.price,
    required this.karat,
    required this.agentCode,
  });

  @override
  List<Object?> get props => [
        quantity,
        productID,
        userID,
        productCode,
        productDiscription,
        agentName,
        grossWeight,
        purity,
        labourPerItem,
        otherChargesGMQAR,
        pureWeight,
        productName,
        price,
        productType,
        karat,
        agentCode,
      ];
}

class CartDeleteItemParams extends Equatable {
  final int cartItemId;

  const CartDeleteItemParams({required this.cartItemId});

  @override
  List<Object?> get props => [cartItemId];
}

class UserCartParams extends Equatable {
  final String userID;

  const UserCartParams({required this.userID});

  @override
  List<Object?> get props => [userID];
}

class FetchCitiesParams extends Equatable {
  final String iso2Code;

  const FetchCitiesParams({required this.iso2Code});

  @override
  List<Object?> get props => [iso2Code];
}

class FetchGoldBarPreviewDataParams extends Equatable {
  final String? userId;
  final int? userAddressId;
  final String? promoCode;
  final String? purposeOfPaymentID,
      purposeOfPaymentName,
      sourceOfPaymentID,
      sourceOfPaymentName;

  const FetchGoldBarPreviewDataParams({
    this.userId,
    this.userAddressId,
    this.promoCode,
    this.purposeOfPaymentID,
    this.purposeOfPaymentName,
    this.sourceOfPaymentID,
    required this.sourceOfPaymentName,
  });

  @override
  List<Object?> get props => [
        userId,
        userAddressId,
        promoCode,
        purposeOfPaymentID,
        purposeOfPaymentName,
        sourceOfPaymentID,
        sourceOfPaymentName
      ];
}

class FetchGoldBarReceiptDataParams extends Equatable {
  final String? refNumber;

  const FetchGoldBarReceiptDataParams({this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

class FetchSupportedCurrenciesParams extends Equatable {
  final String? agentId, countryCode, serviceType;

  const FetchSupportedCurrenciesParams({
    this.agentId,
    this.countryCode,
    this.serviceType,
  });

  @override
  List<Object?> get props => [
        agentId,
        countryCode,
        serviceType,
      ];
}

class FetchGoldBarReceiptDownloadUrlParams extends Equatable {
  final String? refNumber;

  const FetchGoldBarReceiptDownloadUrlParams({this.refNumber});

  @override
  List<Object?> get props => [];
}

class FetchGetFcRatesParams extends Equatable {
  final String? currencyID;

  const FetchGetFcRatesParams({this.currencyID});

  @override
  List<Object?> get props => [];
}

class FetchCountriesParams extends Equatable {
  final bool? isCalculator;

  const FetchCountriesParams({this.isCalculator});

  @override
  List<Object?> get props => [isCalculator];
}

class FetchCountriesByCurrencyCodeParams extends Equatable {
  final String? currencyCode;
  final String? serviceType;

  const FetchCountriesByCurrencyCodeParams(
      {this.currencyCode, this.serviceType});

  @override
  List<Object?> get props => [currencyCode, serviceType];
}

class FetchMuncipalititesParams extends Equatable {
  final bool? isDeliveryAddress;

  const FetchMuncipalititesParams({this.isDeliveryAddress});

  @override
  List<Object?> get props => [isDeliveryAddress];
}

class FetchZonesParams extends Equatable {
  final int? muncipalityID;
  final bool? isDeliveryAddress;

  const FetchZonesParams({this.muncipalityID, this.isDeliveryAddress});

  @override
  List<Object?> get props => [muncipalityID, isDeliveryAddress];
}

class FetchDistrictsParams extends Equatable {
  final int? zoneID;
  final bool? isDeliveryAddress;

  const FetchDistrictsParams({this.zoneID, this.isDeliveryAddress});

  @override
  List<Object?> get props => [zoneID, isDeliveryAddress];
}

class DeactivateAccountParams extends Equatable {
  final String? qatarID;

  const DeactivateAccountParams({this.qatarID});

  @override
  List<Object?> get props => [qatarID];
}

class ChangePinParams extends Equatable {
  final String? oldPinCode, newPinCode, confirmCode, qatarID;

  const ChangePinParams(
      {this.oldPinCode, this.newPinCode, this.confirmCode, this.qatarID});

  @override
  List<Object?> get props => [oldPinCode, newPinCode, confirmCode, qatarID];
}

class GetBiometricDeviceEnableParams extends Equatable {
  const GetBiometricDeviceEnableParams();

  @override
  List<Object?> get props => [];
}

class EnableDisableBiometricParams extends Equatable {
  final bool? biometricEnableDisableValue;

  const EnableDisableBiometricParams({this.biometricEnableDisableValue});

  @override
  List<Object?> get props => [biometricEnableDisableValue];
}

class VerifyOtpProfileManagementParams extends Equatable {
  final String? otp;
  final String? userId;
  final String? qatarId;
  final String? fullName;
  final String? birthCountryId;
  final String? birthCountryName;
  final String? nationalCountryId;
  final String? nationalCountryName;
  final String? mobileNumber;
  final String? dob;
  final String? idType;
  final String? qatarIdExpiry;

  final int? stateId;
  final String? stateName;
  final int? cityId;
  final String? cityName;
  final String? addressZone;
  final String? addressStreet;
  final String? addressBuilding;
  final String? poBox;
  final int? occupationId;
  final String? occupation;
  final int? genderId;
  final String? genderName;
  final String? profession;
  final String? municipalityId;
  final String? municipalityName;
  final String? zoneId;
  final String? zoneName;
  final String? districtId;
  final String? districtName;
  final File? photo;
  final String? profileImage;
  final String? email;
  final String? remitterCode;
  final int? actualOccupationID;
  final String? actualOccupationName;

  const VerifyOtpProfileManagementParams({
    this.otp,
    this.userId,
    this.qatarId,
    this.fullName,
    this.birthCountryId,
    this.birthCountryName,
    this.nationalCountryId,
    this.nationalCountryName,
    this.mobileNumber,
    this.dob,
    this.idType,
    this.qatarIdExpiry,
    this.stateId,
    this.stateName,
    this.cityId,
    this.cityName,
    this.addressZone,
    this.addressStreet,
    this.addressBuilding,
    this.poBox,
    this.occupationId,
    this.occupation,
    this.genderId,
    this.genderName,
    this.profession,
    this.municipalityId,
    this.municipalityName,
    this.zoneId,
    this.zoneName,
    this.districtId,
    this.districtName,
    this.photo,
    this.profileImage,
    this.email,
    required this.remitterCode,
    required this.actualOccupationID,
    required this.actualOccupationName,
  });

  @override
  List<Object?> get props => [];
}

class FetchMetalProductsHistoryParams extends Equatable {
  final String? userId;

  const FetchMetalProductsHistoryParams({this.userId});

  @override
  List<Object?> get props => [userId];
}

class FetchMetalProductsTransactionLimitParams extends Equatable {
  final String? remitterCode;
  final double? transactionAmount;

  const FetchMetalProductsTransactionLimitParams(
      {this.remitterCode, this.transactionAmount});

  @override
  List<Object?> get props => [remitterCode, transactionAmount];
}

class FetchGuestModeTokenParams extends Equatable {
  const FetchGuestModeTokenParams();

  @override
  List<Object?> get props => [];
}

class FetchAvailableRewardPointsParams extends Equatable {
  final String? remitterCode;

  const FetchAvailableRewardPointsParams({this.remitterCode});

  @override
  List<Object?> get props => [remitterCode];
}

class SubmitComplaintParams extends Equatable {
  final String? title,
      description,
      userID,
      email,
      phoneNumber,
      transactionNumber;
  final int? complainTypeId;

  const SubmitComplaintParams({
    this.title,
    this.description,
    this.userID,
    this.email,
    this.phoneNumber,
    required this.complainTypeId,
    required this.transactionNumber,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        userID,
        email,
        phoneNumber,
        complainTypeId,
        transactionNumber
      ];
}

class VerifySecurityQuestionsParams extends Equatable {
  final String? qid, dateOfBirth, qidExpiryDate;

  const VerifySecurityQuestionsParams(
      {this.qid, this.dateOfBirth, this.qidExpiryDate});

  @override
  List<Object?> get props => [qid, dateOfBirth, qidExpiryDate];
}

class VerifyActivateUserOtpParams extends Equatable {
  final String? otp, qid, userID, mobileNumber;

  const VerifyActivateUserOtpParams(
      {this.otp, this.qid, this.userID, this.mobileNumber});

  @override
  List<Object?> get props => [otp, qid, userID, mobileNumber];
}

class UploadQidExpiredParams extends Equatable {
  final String? userID;
  final File? frontIdPhoto, backIdPhoto, facePhoto;
  final String? qidExpiryDate, dateofBirth;
  final String? occupationID, nationalCountryID;
  final String? occupationName, nationalCountryName;
  final int? actualOccupationID;
  final String? actualOccupationName;

  const UploadQidExpiredParams({
    this.userID,
    this.frontIdPhoto,
    this.backIdPhoto,
    this.facePhoto,
    this.qidExpiryDate,
    this.occupationID,
    this.occupationName,
    this.dateofBirth,
    this.nationalCountryID,
    required this.nationalCountryName,
    required this.actualOccupationID,
    required this.actualOccupationName,
  });

  @override
  List<Object?> get props => [
        userID,
        frontIdPhoto,
        backIdPhoto,
        facePhoto,
        qidExpiryDate,
        occupationID,
        occupationName,
        dateofBirth,
        nationalCountryID,
        nationalCountryName,
        actualOccupationID,
        actualOccupationName
      ];
}

class FetchNotificationParams extends Equatable {
  final String? userID;
  final bool? isLoggedIn;

  const FetchNotificationParams({this.userID, this.isLoggedIn});

  @override
  List<Object?> get props => [userID, isLoggedIn];
}

class MarkAsViewNotificationParams extends Equatable {
  final String? userID;
  final bool? isLoggedIn;
  final int? notificationID;

  const MarkAsViewNotificationParams(
      {this.userID, this.isLoggedIn, this.notificationID});

  @override
  List<Object?> get props => [userID, isLoggedIn, notificationID];
}

class ValidateStockAvailibilityParams extends Equatable {
  final String? refNumber;

  const ValidateStockAvailibilityParams({this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

class FetchAppConfigurationParams extends Equatable {
  const FetchAppConfigurationParams();

  @override
  List<Object?> get props => [];
}

class FetchSplashImageParams extends Equatable {
  const FetchSplashImageParams();

  @override
  List<Object?> get props => [];
}

class FetchProductFilterationDataParams extends Equatable {
  final String? categoryLookupName;

  const FetchProductFilterationDataParams({required this.categoryLookupName});

  @override
  List<Object?> get props => [categoryLookupName];
}

class FetchMyTravelCardParams extends Equatable {
  final String? userID;
  final bool? isHistory;

  const FetchMyTravelCardParams({this.userID, required this.isHistory});

  @override
  List<Object?> get props => [userID, isHistory];
}

class FetchTravelCardPreviewDetailsParams extends Equatable {
  final String? userID,
      fullName,
      genderName,
      dob,
      motherName,
      securityQuestionID,
      securityQuestionName,
      securityAnswer,
      cardNumber,
      refNumber,
      cardRequestType;
  final int? genderID, addressID;
  final List<Map<String, dynamic>>? currencyDetails;

  const FetchTravelCardPreviewDetailsParams({
    this.userID,
    this.fullName,
    this.genderID,
    this.genderName,
    this.dob,
    this.motherName,
    this.securityQuestionID,
    this.securityQuestionName,
    this.securityAnswer,
    this.addressID,
    this.currencyDetails,
    this.cardNumber,
    this.refNumber,
    this.cardRequestType,
  });

  @override
  List<Object?> get props => [
        userID,
        fullName,
        genderID,
        genderName,
        dob,
        motherName,
        securityQuestionID,
        securityQuestionName,
        securityAnswer,
        addressID,
        currencyDetails,
        cardNumber,
        refNumber,
        cardRequestType,
      ];
}

class FetchTravelCardReceiptDetailsParams extends Equatable {
  final String? refNumber;

  const FetchTravelCardReceiptDetailsParams({this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

class FetchSecurityQuestionsParams extends Equatable {
  const FetchSecurityQuestionsParams();

  @override
  List<Object?> get props => [];
}

class FetchTravelCardReceiptDownloadUrlParams extends Equatable {
  final String? refNumber;

  const FetchTravelCardReceiptDownloadUrlParams({this.refNumber});

  @override
  List<Object?> get props => [];
}

class FetchFcySettingsDetailsParams extends Equatable {
  final String? productType;

  const FetchFcySettingsDetailsParams({this.productType});

  @override
  List<Object?> get props => [productType];
}

class FetchFaqsParams extends Equatable {
  const FetchFaqsParams();

  @override
  List<Object?> get props => [];
}

class RegisterNewDeviceSendOTPParams extends Equatable {
  final String? qatarId, mobileNumber, dob;

  const RegisterNewDeviceSendOTPParams(
      {this.qatarId, this.mobileNumber, this.dob});

  @override
  List<Object?> get props => [qatarId, mobileNumber, dob];
}

class RegisterNewDeviceVerifyOTPParams extends Equatable {
  final String? userId, qatarId, mobileNumber, otp;

  const RegisterNewDeviceVerifyOTPParams(
      {this.userId, this.qatarId, this.mobileNumber, this.otp});

  @override
  List<Object?> get props => [userId, qatarId, mobileNumber, otp];
}

class LogoutUserParams extends Equatable {
  final String? userId, qatarId;
  final bool? isGuestTokenRequired;

  const LogoutUserParams(
      {this.userId, this.qatarId, this.isGuestTokenRequired});

  @override
  List<Object?> get props => [userId, qatarId, isGuestTokenRequired];
}

class DeleteBeneficiaryParams extends Equatable {
  final int? beneficiaryID;

  const DeleteBeneficiaryParams({this.beneficiaryID});

  @override
  List<Object?> get props => [beneficiaryID];
}

class DeleteMyAddressParams extends Equatable {
  final int? addressID;

  const DeleteMyAddressParams({required this.addressID});

  @override
  List<Object?> get props => [addressID];
}

class FetchZoneAndDistrictParams extends Equatable {
  final bool? isDeliveryAddress;
  final String? municipalityId;

  const FetchZoneAndDistrictParams(
      {this.isDeliveryAddress, this.municipalityId});

  @override
  List<Object?> get props => [isDeliveryAddress, municipalityId];
}

class FetchTermsAndConditionAndPrivacyPolicyParams extends Equatable {
  final int page, transactionTypes;

  const FetchTermsAndConditionAndPrivacyPolicyParams({
    required this.page,
    required this.transactionTypes,
  });

  @override
  List<Object?> get props => [page, transactionTypes];
}

class FetchTravelCardRatesParams extends Equatable {
  final String? currencyID;
  final String? remitterCode;
  final String? serviceType;

  const FetchTravelCardRatesParams(
      {this.currencyID, this.remitterCode, this.serviceType});

  @override
  List<Object?> get props => [currencyID, remitterCode, serviceType];
}

class FetchInviteFriendMessagesParams extends Equatable {
  const FetchInviteFriendMessagesParams();

  @override
  List<Object?> get props => [];
}

class TessPaymentCheckoutParams extends Equatable {
  final String? refNumber;
  final String? transactionType;
  final String? subGateWay;

  const TessPaymentCheckoutParams(
      {this.refNumber, this.transactionType, this.subGateWay});

  @override
  List<Object?> get props => [refNumber, transactionType, subGateWay];
}

class FetchTessPayFailedTransactionStatusParams extends Equatable {
  final String? refNumber;

  const FetchTessPayFailedTransactionStatusParams({this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

class RefundAmountInitiatedParams extends Equatable {
  final String refNumber, transactionType;

  const RefundAmountInitiatedParams(
      {required this.refNumber, required this.transactionType});

  @override
  List<Object?> get props => [refNumber, transactionType];
}

class FetchPaymentGatewaysParams extends Equatable {
  const FetchPaymentGatewaysParams();

  @override
  List<Object?> get props => [];
}

class FetchGoldBarPurposeOfPaymentParams extends Equatable {
  const FetchGoldBarPurposeOfPaymentParams();

  @override
  List<Object?> get props => [];
}

class FetchGoldBarSourceOfPaymentParams extends Equatable {
  const FetchGoldBarSourceOfPaymentParams();

  @override
  List<Object?> get props => [];
}

class FetchMyBookBenefitsParams extends Equatable {
  const FetchMyBookBenefitsParams();

  @override
  List<Object?> get props => [];
}

class FetchMyBookTermsAndConditionsParams extends Equatable {
  const FetchMyBookTermsAndConditionsParams();

  @override
  List<Object?> get props => [];
}

class FetchMyBookRedirectionUrlParams extends Equatable {
  final String? latitude, longitude;
  const FetchMyBookRedirectionUrlParams({
    this.latitude,
    this.longitude,
  });

  @override
  List<Object?> get props => [latitude, longitude];
}

class RegisterMyBookParams extends Equatable {
  const RegisterMyBookParams();

  @override
  List<Object?> get props => [];
}

class FetchMyBookDashboardInfoParams extends Equatable {
  const FetchMyBookDashboardInfoParams();

  @override
  List<Object?> get props => [];
}

class ValidateQIDParams extends Equatable {
  final String qatarId;

  const ValidateQIDParams({required this.qatarId});

  @override
  List<Object?> get props => [qatarId];
}

class FetchMyTransactionalStatementsParams extends Equatable {
  final String remitterCode, fromDate, toDate;

  const FetchMyTransactionalStatementsParams(
      {required this.remitterCode,
      required this.fromDate,
      required this.toDate});

  @override
  List<Object?> get props => [remitterCode, fromDate, toDate];
}

class FetchBranchLocatorInformationParams extends Equatable {
  const FetchBranchLocatorInformationParams();

  @override
  List<Object?> get props => [];
}

class FetchBranchLocatorDistanceParams extends Equatable {
  final String origin, destination;
  const FetchBranchLocatorDistanceParams({
    required this.origin,
    required this.destination,
  });

  @override
  List<Object?> get props => [origin, destination];
}

class FetchAccessTokenIdMissionParams extends Equatable {
  const FetchAccessTokenIdMissionParams();

  @override
  List<Object?> get props => [];
}

class SubmitQidRenewalRequestParams extends Equatable {
  final String? fullname,
      dateofBirth,
      qidExpiry,
      nationalCountryId,
      ocrOccupation;
  final int? occupationId, actualOccupationId;

  const SubmitQidRenewalRequestParams({
    this.fullname,
    this.dateofBirth,
    this.qidExpiry,
    this.nationalCountryId,
    this.ocrOccupation,
    this.occupationId,
    this.actualOccupationId,
  });

  @override
  List<Object?> get props => [
        fullname,
        dateofBirth,
        qidExpiry,
        nationalCountryId,
        ocrOccupation,
        occupationId,
        actualOccupationId
      ];
}

class GetRoutingAgentForMultipleCurrenciesParams extends Equatable {
  final String? agentID, currencyCode, bankID, serviceType, beneCountry;
  final double? amount;

  const GetRoutingAgentForMultipleCurrenciesParams({
    this.agentID,
    this.currencyCode,
    this.bankID,
    this.serviceType,
    this.beneCountry,
    this.amount,
  });

  @override
  List<Object?> get props => [
        agentID,
        currencyCode,
        bankID,
        serviceType,
        beneCountry,
        amount,
      ];
}

class VerifyAgentParams extends Equatable {
  final String? agentId, fromCountryCode;
  final int? beneficiaryId;

  const VerifyAgentParams({
    this.agentId,
    this.fromCountryCode,
    this.beneficiaryId,
  });
  @override
  List<Object?> get props => [agentId, fromCountryCode, beneficiaryId];
}
