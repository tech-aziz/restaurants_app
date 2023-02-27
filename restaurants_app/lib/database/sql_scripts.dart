import 'database_info.dart';

class SqlScripts {

  static const String createItemInfoTable =
      'CREATE TABLE ${DatabaseInfo.tableItemInfo} '
      '(${DatabaseInfo.columnItemId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnCategoryId} INTEGER,'
      '${DatabaseInfo.columnItemName} TEXT,'
      '${DatabaseInfo.columnShortName} TEXT,'
      '${DatabaseInfo.columnRegularPrice} REAL,'
      '${DatabaseInfo.columnTakeAwayPrice} REAL,'
      '${DatabaseInfo.columnVatPercent} REAL,'
      '${DatabaseInfo.columnIsVatIncluded} BOOLEAN,'
      '${DatabaseInfo.columnSdPercent} REAL,'
      '${DatabaseInfo.columnIsSdIncluded} BOOLEAN,'
      '${DatabaseInfo.columnStockQuantity} INTEGER,'
      '${DatabaseInfo.columnExpiryDate} TEXT,'
      'FOREIGN KEY (${DatabaseInfo.columnCategoryId}) REFERENCES ${DatabaseInfo.tableCategoryInfo}(${DatabaseInfo.columnCategoryId}));';

  static const String createEmployeeInfoTable = 'CREATE TABLE ${DatabaseInfo.tableEmployeeInfo} '
      '(${DatabaseInfo.columnEmployeeId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnEmployeeName} TEXT,'
      '${DatabaseInfo.columnEmployeeMobileNumber} TEXT,'
      '${DatabaseInfo.columnEmployeeEmail} TEXT,'
      '${DatabaseInfo.columnEmployeeAddress} TEXT,'
      '${DatabaseInfo.columnImagePath} TEXT,'
      '${DatabaseInfo.columnEmployeeIsWaiter} BOOLEAN,'
      '${DatabaseInfo.columnEmployeeIsActive} BOOLEAN,'
      '${DatabaseInfo.columnCreatedBy} TEXT,'
      '${DatabaseInfo.columnCreatedTime} TEXT);';

  static const String createCategoryInfoTable =
   'CREATE TABLE ${DatabaseInfo.tableCategoryInfo}'
      '(${DatabaseInfo.columnCategoryId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnCategoryCode} TEXT,'
      '${DatabaseInfo.columnCategoryName} TEXT,'
      '${DatabaseInfo.columnShortName} TEXT,'
      '${DatabaseInfo.columnCreatedBy} TEXT,'
      '${DatabaseInfo.columnUpdatedBy} TEXT);';

  static const String createTableInfoTable = 'CREATE TABLE ${DatabaseInfo.tableResTableInfo} '
      '(${DatabaseInfo.columnTableId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnTableName} TEXT);';

  static const String createPaymentMethodInfoTable = 'CREATE TABLE ${DatabaseInfo.tablePaymentMethodInfo} '
      '(${DatabaseInfo.columnPaymentMethodId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnPaymentMethodName} TEXT);';

  static const String createDeskInfoTable = 'CREATE TABLE ${DatabaseInfo.tableDeskInfo}'
      '(${DatabaseInfo.columnDeskId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnDeskCode} TEXT,'
      '${DatabaseInfo.columnDeskName} TEXT,'
      '${DatabaseInfo.columnWaiterId} INTEGER,'
      '${DatabaseInfo.columnCreatedBy} TEXT,'
      '${DatabaseInfo.columnUpdatedBy} TEXT,'
      'FOREIGN KEY (${DatabaseInfo.columnWaiterId}) REFERENCES ${DatabaseInfo.tableEmployeeInfo}(${DatabaseInfo.columnEmployeeId}));';

  static const String createOtherInfoTable = 'CREATE TABLE ${DatabaseInfo.tableOtherInfo} '
      '(${DatabaseInfo.columnOtherId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnVatPercent} REAL,'
      '${DatabaseInfo.columnSdPercent} REAL,'
      '${DatabaseInfo.columnServiceChargePercent} REAL,'
      '${DatabaseInfo.columnServiceChargeAmount} REAL);';

  static const String createCustomerInfoTable = 'CREATE TABLE ${DatabaseInfo.tableCustomerInfo} '
      '(${DatabaseInfo.columnCustomerId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnCustomerName} TEXT,'
      '${DatabaseInfo.columnCustomerMobile} TEXT,'
      '${DatabaseInfo.columnCustomerEmail} TEXT,'
      '${DatabaseInfo.columnCustomerAddress} TEXT);';

  static const String createSalesInfoTable = 'CREATE TABLE ${DatabaseInfo.tableSalesInfo} '
      '(${DatabaseInfo.columnSaleId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnInvoiceNo} TEXT UNIQUE,'
      '${DatabaseInfo.columnDeliveryCharge} REAL,'
      '${DatabaseInfo.columnOrderType} INTEGER,'
      '${DatabaseInfo.columnSaleItems} TEXT,'
      '${DatabaseInfo.columnSaleItemsCount} TEXT,'
      '${DatabaseInfo.columnSaleVatAmount} REAL,'
      '${DatabaseInfo.columnSaleSdAmount} REAL,'
      '${DatabaseInfo.columnSaleServiceChargeAmount} REAL,'
      '${DatabaseInfo.columnSaleDiscountAmount} REAL,'
      '${DatabaseInfo.columnSaleSubTotalAmount} REAL,'
      '${DatabaseInfo.columnSaleTotalAmount} REAL,'
      '${DatabaseInfo.columnSalePaymentType} TEXT,'
      '${DatabaseInfo.columnSaleCustomerBkashNo} TEXT,'
      '${DatabaseInfo.columnSaleBkashTrxId} TEXT,'
      '${DatabaseInfo.columnSaleCustomerCardNo} TEXT,'
      '${DatabaseInfo.columnSaleDate} TEXT,'
      '${DatabaseInfo.columnSoldBy} TEXT);';

  static const String createSaleItemDetailsTable = 'CREATE TABLE ${DatabaseInfo.tableSaleItemsInfo} '
      '(${DatabaseInfo.columnSaleItemDetailsId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnInvoiceNo} TEXT,'
      '${DatabaseInfo.columnItemName} TEXT,'
      '${DatabaseInfo.columnItemId} INTEGER,'
      '${DatabaseInfo.columnSaleItemTotalPrice} REAL,'
      '${DatabaseInfo.columnQuantity} INTEGER);';

  static const String createHoldOrderTable = 'CREATE TABLE ${DatabaseInfo.tableHoldOrders} '
      '(${DatabaseInfo.columnHoldOrderId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnHoldOrderName} TEXT,'
      '${DatabaseInfo.columnSaleTotalAmount} REAL,'
      '${DatabaseInfo.columnHoldOrderNo} TEXT,'
      '${DatabaseInfo.columnHoldOrderDate} TEXT);';

  static const String createHoldOrderItemDetailsTable = 'CREATE TABLE ${DatabaseInfo.tableHoldOrderItemDetails} '
      '(${DatabaseInfo.columnHoldOrderItemDetailsId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnHoldOrderId} INTEGER,'
      '${DatabaseInfo.columnItemId} INTEGER,'
      '${DatabaseInfo.columnItemName} TEXT,'
      '${DatabaseInfo.columnRegularPrice} REAL,'
      '${DatabaseInfo.columnTakeAwayPrice} REAL,'
      '${DatabaseInfo.columnVatPercent} REAL,'
      '${DatabaseInfo.columnVatAmount} REAL,'
      '${DatabaseInfo.columnIsVatIncluded} BOOLEAN,'
      '${DatabaseInfo.columnSdPercent} REAL,'
      '${DatabaseInfo.columnSdAmount} REAL,'
      '${DatabaseInfo.columnIsSdIncluded} BOOLEAN,'
      '${DatabaseInfo.columnQuantity} INTEGER,'
      '${DatabaseInfo.columnExpiryDate} TEXT,'
      'FOREIGN KEY (${DatabaseInfo.columnHoldOrderId}) REFERENCES ${DatabaseInfo.tableHoldOrders}(${DatabaseInfo.columnHoldOrderId}));';

  static const String createDineInOrderTable = 'CREATE TABLE ${DatabaseInfo.tableDineInOrders} '
      '(${DatabaseInfo.columnDineInOrderId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnNoOfGuest} TEXT,'
      '${DatabaseInfo.columnTableName} TEXT,'
      '${DatabaseInfo.columnWaiterId} INTEGER,'
      '${DatabaseInfo.columnSaleTotalAmount} REAL,'
      '${DatabaseInfo.columnDineInOrderDate} TEXT);';

  static const String createDineInOrderItemDetailsTable = 'CREATE TABLE ${DatabaseInfo.tableDineInOrderItemDetails} '
      '(${DatabaseInfo.columnDineInOrderItemDetailsId} INTEGER PRIMARY KEY AUTOINCREMENT,'
      '${DatabaseInfo.columnDineInOrderId} INTEGER,'
      '${DatabaseInfo.columnItemId} INTEGER,'
      '${DatabaseInfo.columnItemName} TEXT,'
      '${DatabaseInfo.columnRegularPrice} REAL,'
      '${DatabaseInfo.columnTakeAwayPrice} REAL,'
      '${DatabaseInfo.columnVatPercent} REAL,'
      '${DatabaseInfo.columnVatAmount} REAL,'
      '${DatabaseInfo.columnIsVatIncluded} BOOLEAN,'
      '${DatabaseInfo.columnSdPercent} REAL,'
      '${DatabaseInfo.columnSdAmount} REAL,'
      '${DatabaseInfo.columnIsSdIncluded} BOOLEAN,'
      '${DatabaseInfo.columnQuantity} INTEGER,'
      '${DatabaseInfo.columnExpiryDate} TEXT,'
      'FOREIGN KEY (${DatabaseInfo.columnDineInOrderId}) REFERENCES ${DatabaseInfo.tableDineInOrders}(${DatabaseInfo.columnDineInOrderId}));';
}