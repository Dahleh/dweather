enum ReceiptStatusEnum { success, failed, pending, refundInitiated }

extension ReceiptStatusToStringExtension on ReceiptStatusEnum {
  String get value {
    switch (this) {
      case ReceiptStatusEnum.success:
        return 'SUCCESS';
      case ReceiptStatusEnum.failed:
        return 'FAILED';
      case ReceiptStatusEnum.pending:
        return 'PENDING';
      case ReceiptStatusEnum.refundInitiated:
        return 'REFUND INITIATED';
    }
  }
}

extension StringToReceiptStatusExtension on String {
  ReceiptStatusEnum get toReceiptStatusEnum {
    switch (this) {
      case 'SUCCESS':
        return ReceiptStatusEnum.success;
      case 'FAILED':
        return ReceiptStatusEnum.failed;
      case 'FAIL':
        return ReceiptStatusEnum.failed;
      case 'PENDING':
        return ReceiptStatusEnum.pending;
      case 'REFUND INITIATED':
        return ReceiptStatusEnum.refundInitiated;
      default:
        return ReceiptStatusEnum.pending;
    }
  }
}
