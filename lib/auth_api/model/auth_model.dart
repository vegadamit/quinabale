// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  final String? code;
  final Data? data;

  AuthModel({
    this.code,
    this.data,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
    code: json["code"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "data": data?.toJson(),
  };
}

class Data {
  final int? id;
  final String? firstName;
  final dynamic middleName;
  final String? lastName;
  final String? email;
  final dynamic emailVerifiedAt;
  final dynamic emailVerifiedCode;
  final dynamic profile;
  final dynamic profileUrl;
  final String? mobile;
  final DeleteFlag? mobileVerified;
  final dynamic role;
  final String? addressLine1;
  final dynamic addressLine2;
  final dynamic addressLat;
  final dynamic addressLong;
  final dynamic regionId;
  final dynamic regionName;
  final dynamic cityId;
  final dynamic cityName;
  final dynamic stateId;
  final String? stateName;
  final dynamic countryId;
  final dynamic countryName;
  final dynamic zipcode;
  final dynamic verifyOtp;
  final String? verifyStatus;
  final DateTime? verifyAt;
  final dynamic createdBy;
  final int? updatedBy;
  final dynamic deletedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final DeleteFlag? deleteFlag;
  final dynamic loginOtp;
  final String? loginOtpStatus;
  final String? accountStatus;
  final dynamic suspendReason;
  final dynamic accountStatusBy;
  final dynamic accountStatusAt;
  final dynamic hospitalId;
  final dynamic hospitalDetailId;
  final String? notificationText;
  final String? notificationEmailOld;
  final dynamic referralCode;
  final dynamic referralBy;
  final dynamic referralType;
  final DateTime? lastLogin;
  final String? ip;
  final String? welcomeFlag;
  final dynamic netspendAccNo;
  final dynamic netspendAccStatus;
  final String? paymentGateway;
  final dynamic netspendEnrollDatetime;
  final dynamic objectId;
  final dynamic businessTypeId;
  final dynamic awsProfileUrl;
  final dynamic organizationId;
  final String? notificationStatus;
  final String? notificationEmail;
  final String? notificationMobile;
  final dynamic category;
  final int? isCompanyPrimaryUser;
  final String? accessToken;
  final String? tokenType;
  final DateTime? expiresAt;
  final FacilityDetail? facilityDetail;
  final List<FacilityLocation>? facilityLocations;
  final List<CompanyShiftRate>? companyShiftRates;

  Data({
    this.id,
    this.firstName,
    this.middleName,
    this.lastName,
    this.email,
    this.emailVerifiedAt,
    this.emailVerifiedCode,
    this.profile,
    this.profileUrl,
    this.mobile,
    this.mobileVerified,
    this.role,
    this.addressLine1,
    this.addressLine2,
    this.addressLat,
    this.addressLong,
    this.regionId,
    this.regionName,
    this.cityId,
    this.cityName,
    this.stateId,
    this.stateName,
    this.countryId,
    this.countryName,
    this.zipcode,
    this.verifyOtp,
    this.verifyStatus,
    this.verifyAt,
    this.createdBy,
    this.updatedBy,
    this.deletedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.deleteFlag,
    this.loginOtp,
    this.loginOtpStatus,
    this.accountStatus,
    this.suspendReason,
    this.accountStatusBy,
    this.accountStatusAt,
    this.hospitalId,
    this.hospitalDetailId,
    this.notificationText,
    this.notificationEmailOld,
    this.referralCode,
    this.referralBy,
    this.referralType,
    this.lastLogin,
    this.ip,
    this.welcomeFlag,
    this.netspendAccNo,
    this.netspendAccStatus,
    this.paymentGateway,
    this.netspendEnrollDatetime,
    this.objectId,
    this.businessTypeId,
    this.awsProfileUrl,
    this.organizationId,
    this.notificationStatus,
    this.notificationEmail,
    this.notificationMobile,
    this.category,
    this.isCompanyPrimaryUser,
    this.accessToken,
    this.tokenType,
    this.expiresAt,
    this.facilityDetail,
    this.facilityLocations,
    this.companyShiftRates,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    emailVerifiedCode: json["email_verified_code"],
    profile: json["profile"],
    profileUrl: json["profile_url"],
    mobile: json["mobile"],
    mobileVerified: deleteFlagValues.map[json["mobile_verified"]]!,
    role: json["role"],
    addressLine1: json["address_line_1"],
    addressLine2: json["address_line_2"],
    addressLat: json["address_lat"],
    addressLong: json["address_long"],
    regionId: json["region_id"],
    regionName: json["region_name"],
    cityId: json["city_id"],
    cityName: json["city_name"],
    stateId: json["state_id"],
    stateName: json["state_name"],
    countryId: json["country_id"],
    countryName: json["country_name"],
    zipcode: json["zipcode"],
    verifyOtp: json["verify_otp"],
    verifyStatus: json["verify_status"],
    verifyAt: json["verify_at"] == null ? null : DateTime.parse(json["verify_at"]),
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    deletedBy: json["deleted_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    deleteFlag: deleteFlagValues.map[json["delete_flag"]]!,
    loginOtp: json["login_otp"],
    loginOtpStatus: json["login_otp_status"],
    accountStatus: json["account_status"],
    suspendReason: json["suspend_reason"],
    accountStatusBy: json["account_status_by"],
    accountStatusAt: json["account_status_at"],
    hospitalId: json["hospital_id"],
    hospitalDetailId: json["hospital_detail_id"],
    notificationText: json["notification_text"],
    notificationEmailOld: json["notification_email_old"],
    referralCode: json["referral_code"],
    referralBy: json["referral_by"],
    referralType: json["referral_type"],
    lastLogin: json["last_login"] == null ? null : DateTime.parse(json["last_login"]),
    ip: json["ip"],
    welcomeFlag: json["welcome_flag"],
    netspendAccNo: json["netspend_acc_no"],
    netspendAccStatus: json["netspend_acc_status"],
    paymentGateway: json["payment_gateway"],
    netspendEnrollDatetime: json["netspend_enroll_datetime"],
    objectId: json["object_id"],
    businessTypeId: json["business_type_id"],
    awsProfileUrl: json["aws_profile_url"],
    organizationId: json["organization_id"],
    notificationStatus: json["notification_status"],
    notificationEmail: json["notification_email"],
    notificationMobile: json["notification_mobile"],
    category: json["category"],
    isCompanyPrimaryUser: json["is_company_primary_user"],
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresAt: json["expires_at"] == null ? null : DateTime.parse(json["expires_at"]),
    facilityDetail: json["facility_detail"] == null ? null : FacilityDetail.fromJson(json["facility_detail"]),
    facilityLocations: json["facility_locations"] == null ? [] : List<FacilityLocation>.from(json["facility_locations"]!.map((x) => FacilityLocation.fromJson(x))),
    companyShiftRates: json["company_shift_rates"] == null ? [] : List<CompanyShiftRate>.from(json["company_shift_rates"]!.map((x) => CompanyShiftRate.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "email_verified_code": emailVerifiedCode,
    "profile": profile,
    "profile_url": profileUrl,
    "mobile": mobile,
    "mobile_verified": deleteFlagValues.reverse[mobileVerified],
    "role": role,
    "address_line_1": addressLine1,
    "address_line_2": addressLine2,
    "address_lat": addressLat,
    "address_long": addressLong,
    "region_id": regionId,
    "region_name": regionName,
    "city_id": cityId,
    "city_name": cityName,
    "state_id": stateId,
    "state_name": stateName,
    "country_id": countryId,
    "country_name": countryName,
    "zipcode": zipcode,
    "verify_otp": verifyOtp,
    "verify_status": verifyStatus,
    "verify_at": verifyAt?.toIso8601String(),
    "created_by": createdBy,
    "updated_by": updatedBy,
    "deleted_by": deletedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "delete_flag": deleteFlagValues.reverse[deleteFlag],
    "login_otp": loginOtp,
    "login_otp_status": loginOtpStatus,
    "account_status": accountStatus,
    "suspend_reason": suspendReason,
    "account_status_by": accountStatusBy,
    "account_status_at": accountStatusAt,
    "hospital_id": hospitalId,
    "hospital_detail_id": hospitalDetailId,
    "notification_text": notificationText,
    "notification_email_old": notificationEmailOld,
    "referral_code": referralCode,
    "referral_by": referralBy,
    "referral_type": referralType,
    "last_login": lastLogin?.toIso8601String(),
    "ip": ip,
    "welcome_flag": welcomeFlag,
    "netspend_acc_no": netspendAccNo,
    "netspend_acc_status": netspendAccStatus,
    "payment_gateway": paymentGateway,
    "netspend_enroll_datetime": netspendEnrollDatetime,
    "object_id": objectId,
    "business_type_id": businessTypeId,
    "aws_profile_url": awsProfileUrl,
    "organization_id": organizationId,
    "notification_status": notificationStatus,
    "notification_email": notificationEmail,
    "notification_mobile": notificationMobile,
    "category": category,
    "is_company_primary_user": isCompanyPrimaryUser,
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_at": expiresAt?.toIso8601String(),
    "facility_detail": facilityDetail?.toJson(),
    "facility_locations": facilityLocations == null ? [] : List<dynamic>.from(facilityLocations!.map((x) => x.toJson())),
    "company_shift_rates": companyShiftRates == null ? [] : List<dynamic>.from(companyShiftRates!.map((x) => x.toJson())),
  };
}

class CompanyShiftRate {
  final int? id;
  final int? companyPrimaryUserId;
  final int? shiftKeywordId;
  final double? rateForQuinable;
  final int? maxRateForProvider;
  final dynamic holidayRateForQuinable;
  final dynamic holidayMaxRateForProvider;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic createdBy;
  final dynamic updatedBy;
  final dynamic deletedBy;
  final String? shiftKeyword;

  CompanyShiftRate({
    this.id,
    this.companyPrimaryUserId,
    this.shiftKeywordId,
    this.rateForQuinable,
    this.maxRateForProvider,
    this.holidayRateForQuinable,
    this.holidayMaxRateForProvider,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.updatedBy,
    this.deletedBy,
    this.shiftKeyword,
  });

  factory CompanyShiftRate.fromJson(Map<String, dynamic> json) => CompanyShiftRate(
    id: json["id"],
    companyPrimaryUserId: json["company_primary_user_id"],
    shiftKeywordId: json["shift_keyword_id"],
    rateForQuinable: json["rate_for_quinable"]?.toDouble(),
    maxRateForProvider: json["max_rate_for_provider"],
    holidayRateForQuinable: json["holiday_rate_for_quinable"],
    holidayMaxRateForProvider: json["holiday_max_rate_for_provider"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    deletedBy: json["deleted_by"],
    shiftKeyword: json["shift_keyword"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "company_primary_user_id": companyPrimaryUserId,
    "shift_keyword_id": shiftKeywordId,
    "rate_for_quinable": rateForQuinable,
    "max_rate_for_provider": maxRateForProvider,
    "holiday_rate_for_quinable": holidayRateForQuinable,
    "holiday_max_rate_for_provider": holidayMaxRateForProvider,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "deleted_by": deletedBy,
    "shift_keyword": shiftKeyword,
  };
}

enum DeleteFlag {
  N
}

final deleteFlagValues = EnumValues({
  "N": DeleteFlag.N
});

class FacilityDetail {
  final int? id;
  final int? hospitalUserFk;
  final String? legalCompanyName;
  final String? address;
  final int? facilityType;
  final String? phone;
  final dynamic fax;
  final String? email;
  final String? contactPersonName;
  final String? websiteUrl;
  final dynamic companyLogo;
  final dynamic companyLogoUrl;
  final dynamic companyPhoto;
  final dynamic companyPhotoUrl;
  final dynamic aboutUs;
  final dynamic abotUsOther;
  final dynamic addressLine2;
  final String? zipcode;
  final CityName? cityName;
  final String? stateName;
  final String? lat;
  final String? lang;
  final String? invoiceType;
  final dynamic assignTo;
  final dynamic rating;
  final DateTime? createdAt;
  final dynamic createdBy;
  final DateTime? updatedAt;
  final int? updatedBy;
  final dynamic deletedAt;
  final dynamic deletedBy;
  final DeleteFlag? deleteFlag;
  final String? shiftClockInManualUpdate;
  final String? shiftClockOutManualUpdate;
  final String? creditConfigFlag;
  final dynamic creditTimeLimit;
  final dynamic hospitalDetailcol;
  final dynamic pendingBidLimit;
  final int? marketTypeId;
  final dynamic awsCompanyLogoUrl;
  final dynamic awsLoginBannerUrl;
  final dynamic awsRegisterBannerUrl;
  final String? instantConfirmation;
  final String? facilityConfirmation;
  final String? facilityStatus;
  final String? unpaidBreak;
  final dynamic unpaidBreakTime;
  final String? agreementCheck;
  final String? companyStage;
  final String? lateCallOffChangeShiftTypeFlag;
  final String? showMandatoryLunchBreak;
  final String? showBillRate;
  final int? isRateForQuinableFixed;
  final int? isCancelShiftsInBatchAllowed;

  FacilityDetail({
    this.id,
    this.hospitalUserFk,
    this.legalCompanyName,
    this.address,
    this.facilityType,
    this.phone,
    this.fax,
    this.email,
    this.contactPersonName,
    this.websiteUrl,
    this.companyLogo,
    this.companyLogoUrl,
    this.companyPhoto,
    this.companyPhotoUrl,
    this.aboutUs,
    this.abotUsOther,
    this.addressLine2,
    this.zipcode,
    this.cityName,
    this.stateName,
    this.lat,
    this.lang,
    this.invoiceType,
    this.assignTo,
    this.rating,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.deletedAt,
    this.deletedBy,
    this.deleteFlag,
    this.shiftClockInManualUpdate,
    this.shiftClockOutManualUpdate,
    this.creditConfigFlag,
    this.creditTimeLimit,
    this.hospitalDetailcol,
    this.pendingBidLimit,
    this.marketTypeId,
    this.awsCompanyLogoUrl,
    this.awsLoginBannerUrl,
    this.awsRegisterBannerUrl,
    this.instantConfirmation,
    this.facilityConfirmation,
    this.facilityStatus,
    this.unpaidBreak,
    this.unpaidBreakTime,
    this.agreementCheck,
    this.companyStage,
    this.lateCallOffChangeShiftTypeFlag,
    this.showMandatoryLunchBreak,
    this.showBillRate,
    this.isRateForQuinableFixed,
    this.isCancelShiftsInBatchAllowed,
  });

  factory FacilityDetail.fromJson(Map<String, dynamic> json) => FacilityDetail(
    id: json["id"],
    hospitalUserFk: json["hospital_user_fk"],
    legalCompanyName: json["legal_company_name"],
    address: json["address"],
    facilityType: json["facility_type"],
    phone: json["phone"],
    fax: json["fax"],
    email: json["email"],
    contactPersonName: json["contact_person_name"],
    websiteUrl: json["website_url"],
    companyLogo: json["company_logo"],
    companyLogoUrl: json["company_logo_url"],
    companyPhoto: json["company_photo"],
    companyPhotoUrl: json["company_photo_url"],
    aboutUs: json["about_us"],
    abotUsOther: json["abot_us_other"],
    addressLine2: json["address_line_2"],
    zipcode: json["zipcode"],
    cityName: cityNameValues.map[json["city_name"]]!,
    stateName: json["state_name"],
    lat: json["lat"],
    lang: json["lang"],
    invoiceType: json["invoice_type"],
    assignTo: json["assign_to"],
    rating: json["rating"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    createdBy: json["created_by"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    updatedBy: json["updated_by"],
    deletedAt: json["deleted_at"],
    deletedBy: json["deleted_by"],
    deleteFlag: deleteFlagValues.map[json["delete_flag"]]!,
    shiftClockInManualUpdate: json["shift_clock_in_manual_update"],
    shiftClockOutManualUpdate: json["shift_clock_out_manual_update"],
    creditConfigFlag: json["credit_config_flag"],
    creditTimeLimit: json["credit_time_limit"],
    hospitalDetailcol: json["hospital_detailcol"],
    pendingBidLimit: json["pending_bid_limit"],
    marketTypeId: json["market_type_id"],
    awsCompanyLogoUrl: json["aws_company_logo_url"],
    awsLoginBannerUrl: json["aws_login_banner_url"],
    awsRegisterBannerUrl: json["aws_register_banner_url"],
    instantConfirmation: json["instant_confirmation"],
    facilityConfirmation: json["facility_confirmation"],
    facilityStatus: json["facility_status"],
    unpaidBreak: json["unpaid_break"],
    unpaidBreakTime: json["unpaid_break_time"],
    agreementCheck: json["agreement_check"],
    companyStage: json["company_stage"],
    lateCallOffChangeShiftTypeFlag: json["late_call_off_change_shift_type_flag"],
    showMandatoryLunchBreak: json["show_mandatory_lunch_break"],
    showBillRate: json["show_bill_rate"],
    isRateForQuinableFixed: json["is_rate_for_quinable_fixed"],
    isCancelShiftsInBatchAllowed: json["is_cancel_shifts_in_batch_allowed"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "hospital_user_fk": hospitalUserFk,
    "legal_company_name": legalCompanyName,
    "address": address,
    "facility_type": facilityType,
    "phone": phone,
    "fax": fax,
    "email": email,
    "contact_person_name": contactPersonName,
    "website_url": websiteUrl,
    "company_logo": companyLogo,
    "company_logo_url": companyLogoUrl,
    "company_photo": companyPhoto,
    "company_photo_url": companyPhotoUrl,
    "about_us": aboutUs,
    "abot_us_other": abotUsOther,
    "address_line_2": addressLine2,
    "zipcode": zipcode,
    "city_name": cityNameValues.reverse[cityName],
    "state_name": stateName,
    "lat": lat,
    "lang": lang,
    "invoice_type": invoiceType,
    "assign_to": assignTo,
    "rating": rating,
    "created_at": createdAt?.toIso8601String(),
    "created_by": createdBy,
    "updated_at": updatedAt?.toIso8601String(),
    "updated_by": updatedBy,
    "deleted_at": deletedAt,
    "deleted_by": deletedBy,
    "delete_flag": deleteFlagValues.reverse[deleteFlag],
    "shift_clock_in_manual_update": shiftClockInManualUpdate,
    "shift_clock_out_manual_update": shiftClockOutManualUpdate,
    "credit_config_flag": creditConfigFlag,
    "credit_time_limit": creditTimeLimit,
    "hospital_detailcol": hospitalDetailcol,
    "pending_bid_limit": pendingBidLimit,
    "market_type_id": marketTypeId,
    "aws_company_logo_url": awsCompanyLogoUrl,
    "aws_login_banner_url": awsLoginBannerUrl,
    "aws_register_banner_url": awsRegisterBannerUrl,
    "instant_confirmation": instantConfirmation,
    "facility_confirmation": facilityConfirmation,
    "facility_status": facilityStatus,
    "unpaid_break": unpaidBreak,
    "unpaid_break_time": unpaidBreakTime,
    "agreement_check": agreementCheck,
    "company_stage": companyStage,
    "late_call_off_change_shift_type_flag": lateCallOffChangeShiftTypeFlag,
    "show_mandatory_lunch_break": showMandatoryLunchBreak,
    "show_bill_rate": showBillRate,
    "is_rate_for_quinable_fixed": isRateForQuinableFixed,
    "is_cancel_shifts_in_batch_allowed": isCancelShiftsInBatchAllowed,
  };
}

enum CityName {
  AHMEDABAD,
  AHMEDABD,
  SURAT
}

final cityNameValues = EnumValues({
  "Ahmedabad": CityName.AHMEDABAD,
  "ahmedabd": CityName.AHMEDABD,
  "surat": CityName.SURAT
});

class FacilityLocation {
  final int? id;
  final int? hospitalUserId;
  final String? name;
  final String? nickname;
  final int? facilityType;
  final String? address;
  final String? zipcode;
  final String? address2;
  final CityName? cityName;
  final String? stateName;
  final dynamic streetName;
  final String? description;
  final String? phone;
  final String? email;
  final String? contactPersonName;
  final String? additionalInstruction;
  final String? image;
  final ImageUrl? imageUrl;
  final String? lat;
  final String? long;
  final int? accountId;
  final String? timezone;
  final DateTime? createdAt;
  final int? createdBy;
  final DateTime? updatedAt;
  final int? updatedBy;
  final dynamic deletedAt;
  final dynamic deletedBy;
  final DeleteFlag? deleteFlag;
  final String? awsImageUrl;
  final int? stateId;

  FacilityLocation({
    this.id,
    this.hospitalUserId,
    this.name,
    this.nickname,
    this.facilityType,
    this.address,
    this.zipcode,
    this.address2,
    this.cityName,
    this.stateName,
    this.streetName,
    this.description,
    this.phone,
    this.email,
    this.contactPersonName,
    this.additionalInstruction,
    this.image,
    this.imageUrl,
    this.lat,
    this.long,
    this.accountId,
    this.timezone,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.deletedAt,
    this.deletedBy,
    this.deleteFlag,
    this.awsImageUrl,
    this.stateId,
  });

  factory FacilityLocation.fromJson(Map<String, dynamic> json) => FacilityLocation(
    id: json["id"],
    hospitalUserId: json["hospital_user_id"],
    name: json["name"],
    nickname: json["nickname"],
    facilityType: json["facility_type"],
    address: json["address"],
    zipcode: json["zipcode"],
    address2: json["address2"],
    cityName: cityNameValues.map[json["city_name"]],
    stateName: json["state_name"],
    streetName: json["street_name"],
    description: json["description"],
    phone: json["phone"],
    email: json["email"],
    contactPersonName: json["contact_person_name"],
    additionalInstruction: json["additional_instruction"],
    image: json["image"],
    imageUrl: imageUrlValues.map[json["image_url"]]!,
    lat: json["lat"],
    long: json["long"],
    accountId: json["account_id"],
    timezone: json["timezone"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    createdBy: json["created_by"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    updatedBy: json["updated_by"],
    deletedAt: json["deleted_at"],
    deletedBy: json["deleted_by"],
    deleteFlag: deleteFlagValues.map[json["delete_flag"]]!,
    awsImageUrl: json["aws_image_url"],
    stateId: json["state_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "hospital_user_id": hospitalUserId,
    "name": name,
    "nickname": nickname,
    "facility_type": facilityType,
    "address": address,
    "zipcode": zipcode,
    "address2": address2,
    "city_name": cityNameValues.reverse[cityName],
    "state_name": stateName,
    "street_name": streetName,
    "description": description,
    "phone": phone,
    "email": email,
    "contact_person_name": contactPersonName,
    "additional_instruction": additionalInstruction,
    "image": image,
    "image_url": imageUrlValues.reverse[imageUrl],
    "lat": lat,
    "long": long,
    "account_id": accountId,
    "timezone": timezone,
    "created_at": createdAt?.toIso8601String(),
    "created_by": createdBy,
    "updated_at": updatedAt?.toIso8601String(),
    "updated_by": updatedBy,
    "deleted_at": deletedAt,
    "deleted_by": deletedBy,
    "delete_flag": deleteFlagValues.reverse[deleteFlag],
    "aws_image_url": awsImageUrl,
    "state_id": stateId,
  };
}

enum ImageUrl {
  UPLOADS_LOCATION
}

final imageUrlValues = EnumValues({
  "/uploads/location/": ImageUrl.UPLOADS_LOCATION
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
