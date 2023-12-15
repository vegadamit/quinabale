class DetailProvider {
  String? code;
  UserData? data;

  DetailProvider({this.code, this.data});

  DetailProvider.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class UserData {
  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? email;
  String? emailVerifiedAt;
  String? emailVerifiedCode;
  String? profile;
  String? profileUrl;
  String? mobile;
  String? mobileVerified;
  int? role;
  String? addressLine1;
  String? addressLine2;
  String? addressLat;
  String? addressLong;
  int? regionId;
  String? regionName;
  int? cityId;
  String? cityName;
  int? stateId;
  String? stateName;
  int? countryId;
  String? countryName;
  String? zipcode;
  int? verifyOtp;
  String? verifyStatus;
  String? verifyAt;
  int? createdBy;
  int? updatedBy;
  String? deletedBy;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? deleteFlag;
  int? loginOtp;
  String? loginOtpStatus;
  String? accountStatus;
  String? suspendReason;
  int? accountStatusBy;
  String? accountStatusAt;
  int? hospitalId;
  int? hospitalDetailId;
  String? notificationText;
  String? notificationEmailOld;
  String? referralCode;
  String? referralBy;
  String? referralType;
  String? lastLogin;
  String? ip;
  String? welcomeFlag;
  String? netspendAccNo;
  String? netspendAccStatus;
  String? paymentGateway;
  String? netspendEnrollDatetime;
  int? objectId;
  int? businessTypeId;
  String? awsProfileUrl;
  int? organizationId;
  String? notificationStatus;
  String? notificationEmail;
  String? notificationMobile;
  String? category;
  int? isCompanyPrimaryUser;
  UserProviderDetailObject? providerDetailObject;
  var avgRating;
  var totalRating;
  List<dynamic>? providerProfessionalLicenseObjects;

  UserData(
      {this.id,
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
        this.providerDetailObject,
        this.avgRating,
        this.totalRating,
        this.providerProfessionalLicenseObjects});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    emailVerifiedCode = json['email_verified_code'];
    profile = json['profile'];
    profileUrl = json['profile_url'];
    mobile = json['mobile'];
    mobileVerified = json['mobile_verified'];
    role = json['role'];
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    addressLat = json['address_lat'];
    addressLong = json['address_long'];
    regionId = json['region_id'];
    regionName = json['region_name'];
    cityId = json['city_id'];
    cityName = json['city_name'];
    stateId = json['state_id'];
    stateName = json['state_name'];
    countryId = json['country_id'];
    countryName = json['country_name'];
    zipcode = json['zipcode'];
    verifyOtp = json['verify_otp'];
    verifyStatus = json['verify_status'];
    verifyAt = json['verify_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    deletedBy = json['deleted_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    deleteFlag = json['delete_flag'];
    loginOtp = json['login_otp'];
    loginOtpStatus = json['login_otp_status'];
    accountStatus = json['account_status'];
    suspendReason = json['suspend_reason'];
    accountStatusBy = json['account_status_by'];
    accountStatusAt = json['account_status_at'];
    hospitalId = json['hospital_id'];
    hospitalDetailId = json['hospital_detail_id'];
    notificationText = json['notification_text'];
    notificationEmailOld = json['notification_email_old'];
    referralCode = json['referral_code'];
    referralBy = json['referral_by'];
    referralType = json['referral_type'];
    lastLogin = json['last_login'];
    ip = json['ip'];
    welcomeFlag = json['welcome_flag'];
    netspendAccNo = json['netspend_acc_no'];
    netspendAccStatus = json['netspend_acc_status'];
    paymentGateway = json['payment_gateway'];
    netspendEnrollDatetime = json['netspend_enroll_datetime'];
    objectId = json['object_id'];
    businessTypeId = json['business_type_id'];
    awsProfileUrl = json['aws_profile_url'];
    organizationId = json['organization_id'];
    notificationStatus = json['notification_status'];
    notificationEmail = json['notification_email'];
    notificationMobile = json['notification_mobile'];
    category = json['category'];
    isCompanyPrimaryUser = json['is_company_primary_user'];
    providerDetailObject = json['provider_detail_object'] != null
        ? UserProviderDetailObject.fromJson(json['provider_detail_object'])
        : null;
    avgRating = json['avg_rating'];
    totalRating = json['total_rating'];
    providerProfessionalLicenseObjects =
    json['provider_professional_license_objects'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['middle_name'] = middleName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['email_verified_code'] = emailVerifiedCode;
    data['profile'] = profile;
    data['profile_url'] = profileUrl;
    data['mobile'] = mobile;
    data['mobile_verified'] = mobileVerified;
    data['role'] = role;
    data['address_line_1'] = addressLine1;
    data['address_line_2'] = addressLine2;
    data['address_lat'] = addressLat;
    data['address_long'] = addressLong;
    data['region_id'] = regionId;
    data['region_name'] = regionName;
    data['city_id'] = cityId;
    data['city_name'] = cityName;
    data['state_id'] = stateId;
    data['state_name'] = stateName;
    data['country_id'] = countryId;
    data['country_name'] = countryName;
    data['zipcode'] = zipcode;
    data['verify_otp'] = verifyOtp;
    data['verify_status'] = verifyStatus;
    data['verify_at'] = verifyAt;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['deleted_by'] = deletedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    data['delete_flag'] = deleteFlag;
    data['login_otp'] = loginOtp;
    data['login_otp_status'] = loginOtpStatus;
    data['account_status'] = accountStatus;
    data['suspend_reason'] = suspendReason;
    data['account_status_by'] = accountStatusBy;
    data['account_status_at'] = accountStatusAt;
    data['hospital_id'] = hospitalId;
    data['hospital_detail_id'] = hospitalDetailId;
    data['notification_text'] = notificationText;
    data['notification_email_old'] = notificationEmailOld;
    data['referral_code'] = referralCode;
    data['referral_by'] = referralBy;
    data['referral_type'] = referralType;
    data['last_login'] = lastLogin;
    data['ip'] = ip;
    data['welcome_flag'] = welcomeFlag;
    data['netspend_acc_no'] = netspendAccNo;
    data['netspend_acc_status'] = netspendAccStatus;
    data['payment_gateway'] = paymentGateway;
    data['netspend_enroll_datetime'] = netspendEnrollDatetime;
    data['object_id'] = objectId;
    data['business_type_id'] = businessTypeId;
    data['aws_profile_url'] = awsProfileUrl;
    data['organization_id'] = organizationId;
    data['notification_status'] = notificationStatus;
    data['notification_email'] = notificationEmail;
    data['notification_mobile'] = notificationMobile;
    data['category'] = category;
    data['is_company_primary_user'] = isCompanyPrimaryUser;
    if (providerDetailObject != null) {
      data['provider_detail_object'] = providerDetailObject!.toJson();
    }
    data['avg_rating'] = avgRating;
    data['total_rating'] = totalRating;
    data['provider_professional_license_objects'] =
        providerProfessionalLicenseObjects;
    return data;
  }
}

class UserProviderDetailObject {
  int? id;
  int? userFk;
  int? industryFk;
  int? servicesFk;
  String? ssnNumber;
  String? dob;
  String? taxpayerCopy;
  String? taxpayerCopyUrl;
  String? signtureCopy;
  String? signtureCopyUrl;
  String? resumeCopy;
  String? resumeCopyUrl;
  String? professionalTitleFk;
  String? departmentExperience;
  String? extraCerificate;
  int? governmentIssuedId;
  String? driverLicenseCopy;
  String? driverLicenseCopyUrl;
  String? driverLicenseBackCopy;
  String? driverLicenseBackCopyUrl;
  String? professionalLicenseCopy;
  String? professionalLicenseCopyUrl;
  int? professionalLicenseSpeciality;
  String? licenseStanding;
  int? licenseStateId;
  String? licenseStateName;
  String? licenseExpiryDate;
  int? professionalLicenseTypeId;
  String? otherLicenseType;
  String? professionalLicenseNumber;
  String? accountHolderName;
  String? accountNumber;
  String? accountType;
  String? routingNumber;
  String? suspendType;
  String? suspendSdate;
  String? suspendEdate;
  String? suspendDays;
  String? onBoardingStatus;
  String? onboardStatusAt;
  String? backgroundStatus;
  String? capsFormUrl;
  int? createdBy;
  String? createdAt;
  int? updatedBy;
  String? updatedAt;
  String? deletedBy;
  String? deletedAt;
  String? deleteFlag;
  String? ssnConsentFormUrl;
  String? ssnConsentDate;
  String? adverseActionLetter;
  String? ssnConsentSignature;
  String? reliabilityStatus;
  String? awsSigntureCopyUrl;
  String? awsResumeCopyUrl;
  int? isInPremiumPool;

  UserProviderDetailObject(
      {this.id,
        this.userFk,
        this.industryFk,
        this.servicesFk,
         this.ssnNumber,
        this.dob,
        this.taxpayerCopy,
        this.taxpayerCopyUrl,
        this.signtureCopy,
        this.signtureCopyUrl,
        this.resumeCopy,
        this.resumeCopyUrl,
        this.professionalTitleFk,
        this.departmentExperience,
        this.extraCerificate,
        this.governmentIssuedId,
        this.driverLicenseCopy,
        this.driverLicenseCopyUrl,
        this.driverLicenseBackCopy,
        this.driverLicenseBackCopyUrl,
        this.professionalLicenseCopy,
        this.professionalLicenseCopyUrl,
        this.professionalLicenseSpeciality,
        this.licenseStanding,
        this.licenseStateId,
        this.licenseStateName,
        this.licenseExpiryDate,
        this.professionalLicenseTypeId,
        this.otherLicenseType,
        this.professionalLicenseNumber,
        this.accountHolderName,
        this.accountNumber,
        this.accountType,
        this.routingNumber,
        this.suspendType,
        this.suspendSdate,
        this.suspendEdate,
        this.suspendDays,
        this.onBoardingStatus,
        this.onboardStatusAt,
        this.backgroundStatus,
        this.capsFormUrl,
        this.createdBy,
        this.createdAt,
        this.updatedBy,
        this.updatedAt,
        this.deletedBy,
        this.deletedAt,
        this.deleteFlag,
        this.ssnConsentFormUrl,
        this.ssnConsentDate,
        this.adverseActionLetter,
        this.ssnConsentSignature,
        this.reliabilityStatus,
        this.awsSigntureCopyUrl,
        this.awsResumeCopyUrl,
        this.isInPremiumPool});

  UserProviderDetailObject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userFk = json['user_fk'];
    industryFk = json['industry_fk'];
    servicesFk = json['services_fk'];
    ssnNumber = json['ssn_number'];
    dob = json['dob'];
    taxpayerCopy = json['taxpayer_copy'];
    taxpayerCopyUrl = json['taxpayer_copy_url'];
    signtureCopy = json['signture_copy'];
    signtureCopyUrl = json['signture_copy_url'];
    resumeCopy = json['resume_copy'];
    resumeCopyUrl = json['resume_copy_url'];
    professionalTitleFk = json['professional_title_fk'];
    departmentExperience = json['department_experience'];
    extraCerificate = json['extra_cerificate'];
    governmentIssuedId = json['government_issued_id'];
    driverLicenseCopy = json['driver_license_copy'];
    driverLicenseCopyUrl = json['driver_license_copy_url'];
    driverLicenseBackCopy = json['driver_license_back_copy'];
    driverLicenseBackCopyUrl = json['driver_license_back_copy_url'];
    professionalLicenseCopy = json['professional_license_copy'];
    professionalLicenseCopyUrl = json['professional_license_copy_url'];
    professionalLicenseSpeciality = json['professional_license_speciality'];
    licenseStanding = json['license_standing'];
    licenseStateId = json['license_state_id'];
    licenseStateName = json['license_state_name'];
    licenseExpiryDate = json['license_expiry_date'];
    professionalLicenseTypeId = json['professional_license_type_id'];
    otherLicenseType = json['other_license_type'];
    professionalLicenseNumber = json['professional_license_number'];
    accountHolderName = json['account_holder_name'];
    accountNumber = json['account_number'];
    accountType = json['account_type'];
    routingNumber = json['routing_number'];
    suspendType = json['suspend_type'];
    suspendSdate = json['suspend_sdate'];
    suspendEdate = json['suspend_edate'];
    suspendDays = json['suspend_days'];
    onBoardingStatus = json['on_boarding_status'];
    onboardStatusAt = json['onboard_status_at'];
    backgroundStatus = json['background_status'];
    capsFormUrl = json['caps_form_url'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedBy = json['updated_by'];
    updatedAt = json['updated_at'];
    deletedBy = json['deleted_by'];
    deletedAt = json['deleted_at'];
    deleteFlag = json['delete_flag'];
    ssnConsentFormUrl = json['ssn_consent_form_url'];
    ssnConsentDate = json['ssn_consent_date'];
    adverseActionLetter = json['adverse_action_letter'];
    ssnConsentSignature = json['ssn_consent_signature'];
    reliabilityStatus = json['reliability_status'];
    awsSigntureCopyUrl = json['aws_signture_copy_url'];
    awsResumeCopyUrl = json['aws_resume_copy_url'];
    isInPremiumPool = json['is_in_premium_pool'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_fk'] = userFk;
    data['industry_fk'] = industryFk;
    data['services_fk'] = servicesFk;
    data['ssn_number'] = ssnNumber;
    data['dob'] = dob;
    data['taxpayer_copy'] = taxpayerCopy;
    data['taxpayer_copy_url'] = taxpayerCopyUrl;
    data['signture_copy'] = signtureCopy;
    data['signture_copy_url'] = signtureCopyUrl;
    data['resume_copy'] = resumeCopy;
    data['resume_copy_url'] = resumeCopyUrl;
    data['professional_title_fk'] = professionalTitleFk;
    data['department_experience'] = departmentExperience;
    data['extra_cerificate'] = extraCerificate;
    data['government_issued_id'] = governmentIssuedId;
    data['driver_license_copy'] = driverLicenseCopy;
    data['driver_license_copy_url'] = driverLicenseCopyUrl;
    data['driver_license_back_copy'] = driverLicenseBackCopy;
    data['driver_license_back_copy_url'] = driverLicenseBackCopyUrl;
    data['professional_license_copy'] = professionalLicenseCopy;
    data['professional_license_copy_url'] = professionalLicenseCopyUrl;
    data['professional_license_speciality'] =
        professionalLicenseSpeciality;
    data['license_standing'] = licenseStanding;
    data['license_state_id'] = licenseStateId;
    data['license_state_name'] = licenseStateName;
    data['license_expiry_date'] = licenseExpiryDate;
    data['professional_license_type_id'] = professionalLicenseTypeId;
    data['other_license_type'] = otherLicenseType;
    data['professional_license_number'] = professionalLicenseNumber;
    data['account_holder_name'] = accountHolderName;
    data['account_number'] = accountNumber;
    data['account_type'] = accountType;
    data['routing_number'] = routingNumber;
    data['suspend_type'] = suspendType;
    data['suspend_sdate'] = suspendSdate;
    data['suspend_edate'] = suspendEdate;
    data['suspend_days'] = suspendDays;
    data['on_boarding_status'] = onBoardingStatus;
    data['onboard_status_at'] = onboardStatusAt;
    data['background_status'] = backgroundStatus;
    data['caps_form_url'] = capsFormUrl;
    data['created_by'] = createdBy;
    data['created_at'] = createdAt;
    data['updated_by'] = updatedBy;
    data['updated_at'] = updatedAt;
    data['deleted_by'] = deletedBy;
    data['deleted_at'] = deletedAt;
    data['delete_flag'] = deleteFlag;
    data['ssn_consent_form_url'] = ssnConsentFormUrl;
    data['ssn_consent_date'] = ssnConsentDate;
    data['adverse_action_letter'] = adverseActionLetter;
    data['ssn_consent_signature'] = ssnConsentSignature;
    data['reliability_status'] = reliabilityStatus;
    data['aws_signture_copy_url'] = awsSigntureCopyUrl;
    data['aws_resume_copy_url'] = awsResumeCopyUrl;
    data['is_in_premium_pool'] = isInPremiumPool;
    return data;
  }
}
