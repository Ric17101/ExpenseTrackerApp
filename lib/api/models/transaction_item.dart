import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_item.freezed.dart';

part 'transaction_item.g.dart';

/// Types of defects
@freezed
class TransactionItem with _$TransactionItem {
  /// Initializes a new instance of the [TransactionItem] class
  factory TransactionItem({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'food') String? food,
    @JsonKey(name: 'date') DateTime? date,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemFromJson(json);
}
