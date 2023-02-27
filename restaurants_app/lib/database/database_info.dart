class DatabaseInfo {

  /// Table Names
  static const String tableEmployeeInfo = 'table_employee_info';
  static const String tableItemInfo = 'table_item_info';
  static const String tableResTableInfo = 'table_res_table_info';
  static const String tableCategoryInfo = 'table_category_info';
  static const String tablePaymentMethodInfo = 'table_payment_method_info';
  static const String tableDeskInfo = 'table_desk_info';
  static const String tableOtherInfo = 'table_other_info';
  static const String tableSalesInfo = 'table_sales_info';
  static const String tableSaleItemsInfo = 'table_sale_items_info';
  static const String tableCustomerInfo = 'table_customer_info';
  static const String tableHoldOrders = 'table_hold_orders';
  static const String tableHoldOrderItemDetails = 'table_hold_order_item_details';
  static const String tableDineInOrders = 'table_dine_in_orders';
  static const String tableDineInOrderItemDetails = 'table_dine_in_order_item_details';


  /// Column Names
  static const String columnItemId = 'item_id';
  static const String columnCategoryCode = 'category_code';
  static const String columnItemCode = 'item_code';
  static const String columnItemName = 'item_name';
  static const String columnItemShortName = 'item_short_name';
  static const String columnImagePath = 'image_path';
  static const String columnVatPercent = 'vat_percent';
  static const String columnVatAmount = 'vat_amount';
  static const String columnSdPercent = 'sd_percent';
  static const String columnSdAmount = 'sd_amount';
  static const String columnServiceChargePercent = 'service_charge_percent';
  static const String columnServiceChargeAmount = 'service_charge_amount';
  static const String columnRegularPrice = 'regular_price';
  static const String columnTakeAwayPrice = 'take_away_price';
  static const String columnQuantity = 'quantity';
  static const String columnStockQuantity = 'stock_quantity';
  static const String columnExpiryDate = 'expiry_date';
  static const String columnIsDiscountAllowed = 'is_discount_allowed';
  static const String columnIsTakeAwayAllowed = 'is_take_away_allowed';
  static const String columnIsFreeAllowed = 'is_free_allowed';
  static const String columnIsVatIncluded = 'is_vat_included';
  static const String columnIsSdIncluded = 'is_sd_included';
  static const String columnIsServiceChargeIncluded = 'is_service_charge_included';

  static const String columnTableId = 'table_id';
  static const String columnTableName = 'table_name';
  static const String columnWaiterId = 'waiter_id';

  static const String columnPaymentMethodId = 'payment_method_id';
  static const String columnPaymentMethodName = 'payment_method_name';


  static const String columnEmployeeId = 'employee_id';
  static const String columnEmployeeName = 'employee_name';
  static const String columnEmployeeMobileNumber = 'employee_mobile_number';
  static const String columnEmployeeEmail = 'employee_email';
  static const String columnEmployeeAddress = 'employee_address';
  static const String columnEmployeeIsWaiter = 'employee_is_waiter';
  static const String columnEmployeeIsActive = 'employee_is_active';
  static const String columnCreatedBy = 'created_by';
  static const String columnCreatedTime = 'created_time';

  static const String columnCategoryId = 'category_id';
  static const String columnCategoryName = 'category_name';
  static const String columnShortName = 'short_name';
  static const String columnUpdatedBy = 'updated_by';

  static const String columnDeskId = 'desk_id';
  static const String columnDeskCode = 'desk_code';
  static const String columnDeskName = 'desk_name';

  static const String columnOtherId = 'other_id';

  static const String columnCustomerId = 'customer_id';
  static const String columnCustomerName = 'customer_name';
  static const String columnCustomerMobile = 'customer_mobile';
  static const String columnCustomerEmail = 'customer_email';
  static const String columnCustomerAddress = 'customer_address';

  static const String columnSaleId = 'sale_id';
  static const String columnInvoiceNo = 'invoice_no';
  static const String columnSaleItems = 'sale_items';
  static const String columnSaleItemsCount = 'sale_items_count';
  static const String columnSaleVatAmount = 'sale_vat_amount';
  static const String columnSaleSdAmount = 'sale_sd_amount';
  static const String columnSaleServiceChargeAmount = 'sale_service_charge_amount';
  static const String columnSaleDiscountAmount = 'sale_discount_amount';
  static const String columnSaleSubTotalAmount = 'sale_sub_total_amount';
  static const String columnSaleTotalAmount = 'sale_total_amount';
  static const String columnSalePaidAmount = 'sale_paid_amount';
  static const String columnSaleChangeAmount = 'sale_change_amount';
  static const String columnSalePaymentType = 'sale_payment_type';
  static const String columnSaleCustomerBkashNo = 'sale_customer_bkash_no';
  static const String columnSaleBkashTrxId = 'sale_bkash_trx_id';
  static const String columnSaleCustomerCardNo = 'sale_customer_card_no';
  static const String columnSaleCustomerIdNo = 'sale_customer_id_no';
  static const String columnSaleDate = 'sale_date';
  static const String columnSoldBy = 'sold_by';
  static const String columnOrderType = 'order_type';
  static const String columnDeliveryCharge = 'delivery_charge';

  static const String columnSaleItemDetailsId = 'sale_item_details_id';
  static const String columnSaleItemTotalPrice = 'sale_item_total_price';

  static const String columnHoldOrderId = 'hold_order_id';
  static const String columnHoldOrderName = 'hold_order_name';
  static const String columnHoldOrderNo = 'hold_order_no';
  static const String columnHoldOrderDate = 'hold_order_date';

  static const String columnHoldOrderItemDetailsId = 'hold_order_item_details_id';

  static const String columnDineInOrderId = 'dine_in_order_id';
  static const String columnNoOfGuest = 'no_of_guest';
  static const String columnDineInOrderDate = 'dine_in_order_date';

  static const String columnDineInOrderItemDetailsId = 'dine_in_order_item_details_id';

}