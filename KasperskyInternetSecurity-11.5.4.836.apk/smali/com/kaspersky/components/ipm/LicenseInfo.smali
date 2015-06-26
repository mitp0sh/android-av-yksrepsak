.class public Lcom/kaspersky/components/ipm/LicenseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mActivationDateInMilliseconds:J

.field public mAdditionalLicenseInfo:Ljava/lang/String;

.field public mCustomerName:Ljava/lang/String;

.field public mExpirationDateInMilliseconds:J

.field public mId:Ljava/lang/String;

.field public mOrderNumber:Ljava/lang/String;

.field public mPartNumber:Ljava/lang/String;

.field public mPartnerCountry:Ljava/lang/String;

.field public mPartnerName:Ljava/lang/String;

.field public mPartnerOrderNumber:Ljava/lang/String;

.field public mStatusId:I

.field public mSubscriptionLicenseInfo:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;

.field public mTerm:I

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mType:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mId:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->UNSPECIFIED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mStatusId:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mOrderNumber:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartNumber:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartnerName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartnerOrderNumber:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartnerCountry:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mCustomerName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/components/ipm/LicenseInfo;->mAdditionalLicenseInfo:Ljava/lang/String;

    .line 22
    return-void
.end method
