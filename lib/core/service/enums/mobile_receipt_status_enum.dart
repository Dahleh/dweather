enum MobileReceiptStatusEnum { success, failed, pending, refundInitiated }

extension ReceiptStatusToStringExtension on MobileReceiptStatusEnum {
  String get value {
    switch (this) {
      case MobileReceiptStatusEnum.success:
        return 'SUCCESS';
      case MobileReceiptStatusEnum.failed:
        return 'FAILED';
      case MobileReceiptStatusEnum.pending:
        return 'PENDING';
      case MobileReceiptStatusEnum.refundInitiated:
        return 'REFUND INITIATED';
    }
  }
}

extension StringToReceiptStatusExtension on String {
  MobileReceiptStatusEnum get toMobileReceiptStatusEnum {
    switch (this) {
      case 'SUCCESS':
        return MobileReceiptStatusEnum.success;
      case 'FAILED':
        return MobileReceiptStatusEnum.failed;
      case 'FAIL':
        return MobileReceiptStatusEnum.failed;
      case 'PENDING':
        return MobileReceiptStatusEnum.pending;
      case 'REFUND INITIATED':
        return MobileReceiptStatusEnum.refundInitiated;
      default:
        return MobileReceiptStatusEnum.pending;
    }
  }
}
