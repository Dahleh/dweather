enum AfxTransactionStatusEnum {
  transmit,
  pending,
  cancelled,
  rejected,
  sent,
  inProgress
}

extension AfxTransactionStatusToStringExtension on AfxTransactionStatusEnum {
  String get value {
    switch (this) {
      case AfxTransactionStatusEnum.transmit:
        return 'TRANSMIT';
      case AfxTransactionStatusEnum.sent:
        return 'SENT';
      case AfxTransactionStatusEnum.cancelled:
        return 'CANCELLED';
      case AfxTransactionStatusEnum.rejected:
        return 'REJECTED';
      case AfxTransactionStatusEnum.pending:
        return 'PENDING';
      case AfxTransactionStatusEnum.inProgress:
        return 'IN-PROGRESS';
    }
  }
}

extension StringToAfxTransactionStatusExtension on String {
  AfxTransactionStatusEnum get toAfxTransactionStatusEnum {
    switch (this) {
      case 'TRANSMIT':
        return AfxTransactionStatusEnum.transmit;
      case 'SENT':
        return AfxTransactionStatusEnum.sent;
      case 'CANCELLED':
        return AfxTransactionStatusEnum.cancelled;
      case 'REJECTED':
        return AfxTransactionStatusEnum.rejected;
      case 'IN-PROGRESS':
        return AfxTransactionStatusEnum.inProgress;
      case 'PENDING':
        return AfxTransactionStatusEnum.pending;
      default:
        return AfxTransactionStatusEnum.pending;
    }
  }
}
