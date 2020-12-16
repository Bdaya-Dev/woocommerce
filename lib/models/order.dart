/*
 * BSD 3-Clause License

    Copyright (c) 2020, RAY OKAAH - MailTo: ray@flutterengineer.com, Twitter: Rayscode
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

import 'package:flutter/material.dart';
// To parse this JSON data, do
//
//     final wooOrder = wooOrderFromJson(jsonString);

import 'dart:convert';

List<WooOrder> wooOrderFromJson(String str) => List<WooOrder>.from(json.decode(str).map((x) => WooOrder.fromJson(x)));

String wooOrderToJson(List<WooOrder> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WooOrder {
    WooOrder({
        this.id,
        this.parentId,
        this.number,
        this.orderKey,
        this.createdVia,
        this.version,
        this.status,
        this.currency,
        this.dateCreated,
        this.dateCreatedGmt,
        this.dateModified,
        this.dateModifiedGmt,
        this.discountTotal,
        this.discountTax,
        this.shippingTotal,
        this.shippingTax,
        this.cartTax,
        this.total,
        this.totalTax,
        this.pricesIncludeTax,
        this.customerId,
        this.customerIpAddress,
        this.customerUserAgent,
        this.customerNote,
        this.billing,
        this.shipping,
        this.paymentMethod,
        this.paymentMethodTitle,
        this.transactionId,
        this.datePaid,
        this.datePaidGmt,
        this.dateCompleted,
        this.dateCompletedGmt,
        this.cartHash,
        this.metaData,
        this.lineItems,
        this.taxLines,
        this.shippingLines,
        this.feeLines,
        this.couponLines,
        this.refunds,
        this.currencySymbol,
        this.links,
    });

    int id;
    int parentId;
    String number;
    String orderKey;
    CreatedVia createdVia;
    Version version;
    Status status;
    Currency currency;
    DateTime dateCreated;
    DateTime dateCreatedGmt;
    DateTime dateModified;
    DateTime dateModifiedGmt;
    String discountTotal;
    String discountTax;
    String shippingTotal;
    String shippingTax;
    String cartTax;
    String total;
    String totalTax;
    bool pricesIncludeTax;
    int customerId;
    String customerIpAddress;
    String customerUserAgent;
    String customerNote;
    Ing billing;
    Ing shipping;
    String paymentMethod;
    String paymentMethodTitle;
    String transactionId;
    DateTime datePaid;
    DateTime datePaidGmt;
    DateTime dateCompleted;
    DateTime dateCompletedGmt;
    String cartHash;
    List<WooOrderMetaDatum> metaData;
    List<LineItem> lineItems;
    List<dynamic> taxLines;
    List<dynamic> shippingLines;
    List<dynamic> feeLines;
    List<dynamic> couponLines;
    List<dynamic> refunds;
    CurrencySymbol currencySymbol;
    Links links;

    factory WooOrder.fromJson(Map<String, dynamic> json) => WooOrder(
        id: json["id"],
        parentId: json["parent_id"],
        number: json["number"],
        orderKey: json["order_key"],
        createdVia: createdViaValues.map[json["created_via"]],
        version: versionValues.map[json["version"]],
        status: statusValues.map[json["status"]],
        currency: currencyValues.map[json["currency"]],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        dateModified: DateTime.parse(json["date_modified"]),
        dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
        discountTotal: json["discount_total"],
        discountTax: json["discount_tax"],
        shippingTotal: json["shipping_total"],
        shippingTax: json["shipping_tax"],
        cartTax: json["cart_tax"],
        total: json["total"],
        totalTax: json["total_tax"],
        pricesIncludeTax: json["prices_include_tax"],
        customerId: json["customer_id"],
        customerIpAddress: json["customer_ip_address"],
        customerUserAgent: json["customer_user_agent"],
        customerNote: json["customer_note"],
        billing: Ing.fromJson(json["billing"]),
        shipping: Ing.fromJson(json["shipping"]),
        paymentMethod: json["payment_method"],
        paymentMethodTitle: json["payment_method_title"],
        transactionId: json["transaction_id"],
        datePaid: json["date_paid"] == null ? null : DateTime.parse(json["date_paid"]),
        datePaidGmt: json["date_paid_gmt"] == null ? null : DateTime.parse(json["date_paid_gmt"]),
        dateCompleted: json["date_completed"] == null ? null : DateTime.parse(json["date_completed"]),
        dateCompletedGmt: json["date_completed_gmt"] == null ? null : DateTime.parse(json["date_completed_gmt"]),
        cartHash: json["cart_hash"],
        metaData: List<WooOrderMetaDatum>.from(json["meta_data"].map((x) => WooOrderMetaDatum.fromJson(x))),
        lineItems: List<LineItem>.from(json["line_items"].map((x) => LineItem.fromJson(x))),
        taxLines: List<dynamic>.from(json["tax_lines"].map((x) => x)),
        shippingLines: List<dynamic>.from(json["shipping_lines"].map((x) => x)),
        feeLines: List<dynamic>.from(json["fee_lines"].map((x) => x)),
        couponLines: List<dynamic>.from(json["coupon_lines"].map((x) => x)),
        refunds: List<dynamic>.from(json["refunds"].map((x) => x)),
        currencySymbol: currencySymbolValues.map[json["currency_symbol"]],
        links: Links.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "parent_id": parentId,
        "number": number,
        "order_key": orderKey,
        "created_via": createdViaValues.reverse[createdVia],
        "version": versionValues.reverse[version],
        "status": statusValues.reverse[status],
        "currency": currencyValues.reverse[currency],
        "date_created": dateCreated.toIso8601String(),
        "date_created_gmt": dateCreatedGmt.toIso8601String(),
        "date_modified": dateModified.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt.toIso8601String(),
        "discount_total": discountTotal,
        "discount_tax": discountTax,
        "shipping_total": shippingTotal,
        "shipping_tax": shippingTax,
        "cart_tax": cartTax,
        "total": total,
        "total_tax": totalTax,
        "prices_include_tax": pricesIncludeTax,
        "customer_id": customerId,
        "customer_ip_address": customerIpAddress,
        "customer_user_agent": customerUserAgent,
        "customer_note": customerNote,
        "billing": billing.toJson(),
        "shipping": shipping.toJson(),
        "payment_method": paymentMethod,
        "payment_method_title": paymentMethodTitle,
        "transaction_id": transactionId,
        "date_paid": datePaid == null ? null : datePaid.toIso8601String(),
        "date_paid_gmt": datePaidGmt == null ? null : datePaidGmt.toIso8601String(),
        "date_completed": dateCompleted == null ? null : dateCompleted.toIso8601String(),
        "date_completed_gmt": dateCompletedGmt == null ? null : dateCompletedGmt.toIso8601String(),
        "cart_hash": cartHash,
        "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
        "line_items": List<dynamic>.from(lineItems.map((x) => x.toJson())),
        "tax_lines": List<dynamic>.from(taxLines.map((x) => x)),
        "shipping_lines": List<dynamic>.from(shippingLines.map((x) => x)),
        "fee_lines": List<dynamic>.from(feeLines.map((x) => x)),
        "coupon_lines": List<dynamic>.from(couponLines.map((x) => x)),
        "refunds": List<dynamic>.from(refunds.map((x) => x)),
        "currency_symbol": currencySymbolValues.reverse[currencySymbol],
        "_links": links.toJson(),
    };
}

class Ing {
    Ing({
        this.firstName,
        this.lastName,
        this.company,
        this.address1,
        this.address2,
        this.city,
        this.state,
        this.postcode,
        this.country,
        this.email,
        this.phone,
    });

    String firstName;
    String lastName;
    String company;
    String address1;
    String address2;
    String city;
    String state;
    String postcode;
    Country country;
    String email;
    String phone;

    factory Ing.fromJson(Map<String, dynamic> json) => Ing(
        firstName: json["first_name"],
        lastName: json["last_name"],
        company: json["company"],
        address1: json["address_1"],
        address2: json["address_2"],
        city: json["city"],
        state: json["state"],
        postcode: json["postcode"],
        country: countryValues.map[json["country"]],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "company": company,
        "address_1": address1,
        "address_2": address2,
        "city": city,
        "state": state,
        "postcode": postcode,
        "country": countryValues.reverse[country],
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
    };
}

enum Country { SA, EMPTY }

final countryValues = EnumValues({
    "": Country.EMPTY,
    "SA": Country.SA
});

enum CreatedVia { CHECKOUT }

final createdViaValues = EnumValues({
    "checkout": CreatedVia.CHECKOUT
});

enum Currency { SAR }

final currencyValues = EnumValues({
    "SAR": Currency.SAR
});

enum CurrencySymbol { EMPTY }

final currencySymbolValues = EnumValues({
    "ر.س": CurrencySymbol.EMPTY
});

class LineItem {
    LineItem({
        this.id,
        this.name,
        this.productId,
        this.variationId,
        this.quantity,
        this.taxClass,
        this.subtotal,
        this.subtotalTax,
        this.total,
        this.totalTax,
        this.taxes,
        this.metaData,
        this.sku,
        this.price,
        this.parentName,
    });

    int id;
    String name;
    int productId;
    int variationId;
    int quantity;
    String taxClass;
    String subtotal;
    String subtotalTax;
    String total;
    String totalTax;
    List<dynamic> taxes;
    List<LineItemMetaDatum> metaData;
    String sku;
    double price;
    dynamic parentName;

    factory LineItem.fromJson(Map<String, dynamic> json) => LineItem(
        id: json["id"],
        name: json["name"],
        productId: json["product_id"],
        variationId: json["variation_id"],
        quantity: json["quantity"],
        taxClass: json["tax_class"],
        subtotal: json["subtotal"],
        subtotalTax: json["subtotal_tax"],
        total: json["total"],
        totalTax: json["total_tax"],
        taxes: List<dynamic>.from(json["taxes"].map((x) => x)),
        metaData: List<LineItemMetaDatum>.from(json["meta_data"].map((x) => LineItemMetaDatum.fromJson(x))),
        sku: json["sku"],
        price: json["price"].toDouble(),
        parentName: json["parent_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "product_id": productId,
        "variation_id": variationId,
        "quantity": quantity,
        "tax_class": taxClass,
        "subtotal": subtotal,
        "subtotal_tax": subtotalTax,
        "total": total,
        "total_tax": totalTax,
        "taxes": List<dynamic>.from(taxes.map((x) => x)),
        "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
        "sku": sku,
        "price": price,
        "parent_name": parentName,
    };
}

class LineItemMetaDatum {
    LineItemMetaDatum({
        this.id,
        this.key,
        this.value,
        this.displayKey,
        this.displayValue,
    });

    int id;
    Key key;
    List<dynamic> value;
    Key displayKey;
    List<dynamic> displayValue;

    factory LineItemMetaDatum.fromJson(Map<String, dynamic> json) => LineItemMetaDatum(
        id: json["id"],
        key: keyValues.map[json["key"]],
        value: List<dynamic>.from(json["value"].map((x) => x)),
        displayKey: keyValues.map[json["display_key"]],
        displayValue: List<dynamic>.from(json["display_value"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "key": keyValues.reverse[key],
        "value": List<dynamic>.from(value.map((x) => x)),
        "display_key": keyValues.reverse[displayKey],
        "display_value": List<dynamic>.from(displayValue.map((x) => x)),
    };
}

enum Key { ALG_WC_PIF_GLOBAL, ALG_WC_PIF_LOCAL }

final keyValues = EnumValues({
    "_alg_wc_pif_global": Key.ALG_WC_PIF_GLOBAL,
    "_alg_wc_pif_local": Key.ALG_WC_PIF_LOCAL
});

class Links {
    Links({
        this.self,
        this.collection,
        this.customer,
    });

    List<Collection> self;
    List<Collection> collection;
    List<Collection> customer;

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
        collection: List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
        customer: json["customer"] == null ? null : List<Collection>.from(json["customer"].map((x) => Collection.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
        "customer": customer == null ? null : List<dynamic>.from(customer.map((x) => x.toJson())),
    };
}

class Collection {
    Collection({
        this.href,
    });

    String href;

    factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class WooOrderMetaDatum {
    WooOrderMetaDatum({
        this.id,
        this.key,
        this.value,
    });

    int id;
    String key;
    dynamic value;

    factory WooOrderMetaDatum.fromJson(Map<String, dynamic> json) => WooOrderMetaDatum(
        id: json["id"],
        key: json["key"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "value": value,
    };
}

class ValueClass {
    ValueClass({
        this.zoneId,
        this.name,
        this.countries,
        this.currency,
        this.exchangeRate,
        this.autoExchangeRate,
        this.disableTaxAdjustment,
        this.iban,
        this.enabled,
        this.attachToEmailIds,
        this.displayShippingAddress,
        this.displayEmail,
        this.displayPhone,
        this.displayCustomerNotes,
        this.displayDate,
        this.displayNumber,
        this.numberFormat,
        this.myAccountButtons,
        this.paperSize,
        this.fontSubsetting,
        this.headerLogo,
        this.headerLogoHeight,
        this.shopName,
        this.shopAddress,
        this.footer,
        this.extra1,
        this.extra2,
        this.extra3,
        this.number,
        this.formattedNumber,
        this.prefix,
        this.suffix,
        this.documentType,
        this.orderId,
        this.padding,
    });

    ZoneId zoneId;
    Name name;
    List<Country> countries;
    Currency currency;
    String exchangeRate;
    AutoExchangeRate autoExchangeRate;
    AutoExchangeRate disableTaxAdjustment;
    String iban;
    String enabled;
    AttachToEmailIds attachToEmailIds;
    String displayShippingAddress;
    String displayEmail;
    String displayPhone;
    String displayCustomerNotes;
    String displayDate;
    String displayNumber;
    NumberFormat numberFormat;
    String myAccountButtons;
    String paperSize;
    bool fontSubsetting;
    String headerLogo;
    String headerLogoHeight;
    String shopName;
    String shopAddress;
    String footer;
    String extra1;
    String extra2;
    String extra3;
    String number;
    String formattedNumber;
    String prefix;
    String suffix;
    String documentType;
    int orderId;
    String padding;

    factory ValueClass.fromJson(Map<String, dynamic> json) => ValueClass(
        zoneId: json["zone_id"] == null ? null : zoneIdValues.map[json["zone_id"]],
        name: json["name"] == null ? null : nameValues.map[json["name"]],
        countries: json["countries"] == null ? null : List<Country>.from(json["countries"].map((x) => countryValues.map[x])),
        currency: json["currency"] == null ? null : currencyValues.map[json["currency"]],
        exchangeRate: json["exchange_rate"] == null ? null : json["exchange_rate"],
        autoExchangeRate: json["auto_exchange_rate"] == null ? null : autoExchangeRateValues.map[json["auto_exchange_rate"]],
        disableTaxAdjustment: json["disable_tax_adjustment"] == null ? null : autoExchangeRateValues.map[json["disable_tax_adjustment"]],
        iban: json["IBAN"] == null ? null : json["IBAN"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        attachToEmailIds: json["attach_to_email_ids"] == null ? null : AttachToEmailIds.fromJson(json["attach_to_email_ids"]),
        displayShippingAddress: json["display_shipping_address"] == null ? null : json["display_shipping_address"],
        displayEmail: json["display_email"] == null ? null : json["display_email"],
        displayPhone: json["display_phone"] == null ? null : json["display_phone"],
        displayCustomerNotes: json["display_customer_notes"] == null ? null : json["display_customer_notes"],
        displayDate: json["display_date"] == null ? null : json["display_date"],
        displayNumber: json["display_number"] == null ? null : json["display_number"],
        numberFormat: json["number_format"] == null ? null : NumberFormat.fromJson(json["number_format"]),
        myAccountButtons: json["my_account_buttons"] == null ? null : json["my_account_buttons"],
        paperSize: json["paper_size"] == null ? null : json["paper_size"],
        fontSubsetting: json["font_subsetting"] == null ? null : json["font_subsetting"],
        headerLogo: json["header_logo"] == null ? null : json["header_logo"],
        headerLogoHeight: json["header_logo_height"] == null ? null : json["header_logo_height"],
        shopName: json["shop_name"] == null ? null : json["shop_name"],
        shopAddress: json["shop_address"] == null ? null : json["shop_address"],
        footer: json["footer"] == null ? null : json["footer"],
        extra1: json["extra_1"] == null ? null : json["extra_1"],
        extra2: json["extra_2"] == null ? null : json["extra_2"],
        extra3: json["extra_3"] == null ? null : json["extra_3"],
        number: json["number"] == null ? null : json["number"],
        formattedNumber: json["formatted_number"] == null ? null : json["formatted_number"],
        prefix: json["prefix"] == null ? null : json["prefix"],
        suffix: json["suffix"] == null ? null : json["suffix"],
        documentType: json["document_type"] == null ? null : json["document_type"],
        orderId: json["order_id"] == null ? null : json["order_id"],
        padding: json["padding"] == null ? null : json["padding"],
    );

    Map<String, dynamic> toJson() => {
        "zone_id": zoneId == null ? null : zoneIdValues.reverse[zoneId],
        "name": name == null ? null : nameValues.reverse[name],
        "countries": countries == null ? null : List<dynamic>.from(countries.map((x) => countryValues.reverse[x])),
        "currency": currency == null ? null : currencyValues.reverse[currency],
        "exchange_rate": exchangeRate == null ? null : exchangeRate,
        "auto_exchange_rate": autoExchangeRate == null ? null : autoExchangeRateValues.reverse[autoExchangeRate],
        "disable_tax_adjustment": disableTaxAdjustment == null ? null : autoExchangeRateValues.reverse[disableTaxAdjustment],
        "IBAN": iban == null ? null : iban,
        "enabled": enabled == null ? null : enabled,
        "attach_to_email_ids": attachToEmailIds == null ? null : attachToEmailIds.toJson(),
        "display_shipping_address": displayShippingAddress == null ? null : displayShippingAddress,
        "display_email": displayEmail == null ? null : displayEmail,
        "display_phone": displayPhone == null ? null : displayPhone,
        "display_customer_notes": displayCustomerNotes == null ? null : displayCustomerNotes,
        "display_date": displayDate == null ? null : displayDate,
        "display_number": displayNumber == null ? null : displayNumber,
        "number_format": numberFormat == null ? null : numberFormat.toJson(),
        "my_account_buttons": myAccountButtons == null ? null : myAccountButtons,
        "paper_size": paperSize == null ? null : paperSize,
        "font_subsetting": fontSubsetting == null ? null : fontSubsetting,
        "header_logo": headerLogo == null ? null : headerLogo,
        "header_logo_height": headerLogoHeight == null ? null : headerLogoHeight,
        "shop_name": shopName == null ? null : shopName,
        "shop_address": shopAddress == null ? null : shopAddress,
        "footer": footer == null ? null : footer,
        "extra_1": extra1 == null ? null : extra1,
        "extra_2": extra2 == null ? null : extra2,
        "extra_3": extra3 == null ? null : extra3,
        "number": number == null ? null : number,
        "formatted_number": formattedNumber == null ? null : formattedNumber,
        "prefix": prefix == null ? null : prefix,
        "suffix": suffix == null ? null : suffix,
        "document_type": documentType == null ? null : documentType,
        "order_id": orderId == null ? null : orderId,
        "padding": padding == null ? null : padding,
    };
}

class AttachToEmailIds {
    AttachToEmailIds({
        this.newOrder,
        this.customerCompletedOrder,
        this.customerInvoice,
    });

    String newOrder;
    String customerCompletedOrder;
    String customerInvoice;

    factory AttachToEmailIds.fromJson(Map<String, dynamic> json) => AttachToEmailIds(
        newOrder: json["new_order"],
        customerCompletedOrder: json["customer_completed_order"],
        customerInvoice: json["customer_invoice"],
    );

    Map<String, dynamic> toJson() => {
        "new_order": newOrder,
        "customer_completed_order": customerCompletedOrder,
        "customer_invoice": customerInvoice,
    };
}

enum AutoExchangeRate { NO }

final autoExchangeRateValues = EnumValues({
    "no": AutoExchangeRate.NO
});

enum Name { EMPTY }

final nameValues = EnumValues({
    "السعودية": Name.EMPTY
});

class NumberFormat {
    NumberFormat({
        this.prefix,
        this.suffix,
        this.padding,
    });

    String prefix;
    String suffix;
    String padding;

    factory NumberFormat.fromJson(Map<String, dynamic> json) => NumberFormat(
        prefix: json["prefix"],
        suffix: json["suffix"],
        padding: json["padding"],
    );

    Map<String, dynamic> toJson() => {
        "prefix": prefix,
        "suffix": suffix,
        "padding": padding,
    };
}

enum ZoneId { D8_A7_D984_D8_B3_D8_B9_D988_D8_AFD98_AD8_A9 }

final zoneIdValues = EnumValues({
    "d8a7d984d8b3d8b9d988d8afd98ad8a9": ZoneId.D8_A7_D984_D8_B3_D8_B9_D988_D8_AFD98_AD8_A9
});

enum Status { PENDING, CANCELLED, COMPLETED }

final statusValues = EnumValues({
    "cancelled": Status.CANCELLED,
    "completed": Status.COMPLETED,
    "pending": Status.PENDING
});

enum Version { THE_480, THE_452 }

final versionValues = EnumValues({
    "4.5.2": Version.THE_452,
    "4.8.0": Version.THE_480
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
