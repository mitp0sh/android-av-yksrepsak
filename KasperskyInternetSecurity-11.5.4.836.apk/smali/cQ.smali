.class public final LcQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 113
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static a(Lcom/kaspersky/components/ipm/ApplicationVersion;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "IPM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApplicationVersion.mMajor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mMajor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "IPM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApplicationVersion.mMinor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mMinor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "IPM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApplicationVersion.mBuild="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mBuild:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "IPM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApplicationVersion.mCompilation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mCompilation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public final a()Lcom/kaspersky/components/ipm/Request;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v2, Lcom/kaspersky/components/ipm/Request;

    invoke-direct {v2}, Lcom/kaspersky/components/ipm/Request;-><init>()V

    .line 30
    new-instance v0, Lcom/kaspersky/components/ipm/ApplicationInfo;

    invoke-direct {v0}, Lcom/kaspersky/components/ipm/ApplicationInfo;-><init>()V

    .line 31
    sget-object v3, Lte;->a:[I

    aget v3, v3, v1

    iput v3, v0, Lcom/kaspersky/components/ipm/ApplicationInfo;->mId:I

    .line 32
    new-instance v3, Lcom/kaspersky/components/ipm/ApplicationVersion;

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kaspersky/components/ipm/ApplicationVersion;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/kaspersky/components/ipm/ApplicationInfo;->mVersion:Lcom/kaspersky/components/ipm/ApplicationVersion;

    .line 33
    iget-object v3, v0, Lcom/kaspersky/components/ipm/ApplicationInfo;->mVersion:Lcom/kaspersky/components/ipm/ApplicationVersion;

    invoke-static {v3}, LcQ;->a(Lcom/kaspersky/components/ipm/ApplicationVersion;)V

    .line 34
    iput-object v0, v2, Lcom/kaspersky/components/ipm/Request;->mApplicationInfo:Lcom/kaspersky/components/ipm/ApplicationInfo;

    .line 35
    invoke-static {}, LjJ;->o()LvH;

    move-result-object v0

    invoke-virtual {v0}, LvH;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/kaspersky/components/ipm/Request;->mPPCSId:I

    .line 37
    invoke-static {}, Lcom/kms/kmsshared/Utils;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kaspersky/components/ipm/Request;->mLocalizationId:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, v2, Lcom/kaspersky/components/ipm/Request;->mRebrandingCode:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :try_start_0
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kaspersky/components/ipm/Request;->mMachineId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v3

    .line 50
    invoke-interface {v3}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    .line 51
    new-instance v4, Lcom/kaspersky/components/ipm/LicenseInfo;

    invoke-direct {v4}, Lcom/kaspersky/components/ipm/LicenseInfo;-><init>()V

    .line 52
    invoke-interface {v0}, Laz;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mId:Ljava/lang/String;

    .line 53
    invoke-interface {v3}, LaC;->c()I

    move-result v5

    invoke-static {v5}, LD;->e(I)Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mType:Ljava/lang/String;

    .line 54
    new-instance v5, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;

    invoke-direct {v5}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;-><init>()V

    .line 55
    iput-object v5, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mSubscriptionLicenseInfo:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;

    .line 56
    new-instance v6, LS;

    invoke-direct {v6}, LS;-><init>()V

    .line 57
    iput-object v6, v5, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->f:LS;

    .line 58
    const/4 v7, -0x1

    iput v7, v6, LS;->b:I

    .line 59
    invoke-interface {v0}, Laz;->f()LaD;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 60
    invoke-interface {v0}, Laz;->f()LaD;

    move-result-object v0

    invoke-virtual {v0}, LaD;->b()LaE;

    move-result-object v0

    iget-object v0, v0, LaE;->e:LaF;

    .line 61
    iget v1, v0, LaF;->b:I

    iput v1, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mTerm:I

    .line 62
    iget-object v1, v0, LaF;->d:LaK;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, v0, LaF;->d:LaK;

    .line 64
    iget-object v7, v1, LaK;->b:Ljava/lang/String;

    invoke-static {v7}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mOrderNumber:Ljava/lang/String;

    .line 65
    iget-object v7, v1, LaK;->c:Ljava/lang/String;

    invoke-static {v7}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartNumber:Ljava/lang/String;

    .line 66
    iget-object v7, v1, LaK;->d:Ljava/lang/String;

    invoke-static {v7}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartnerName:Ljava/lang/String;

    .line 67
    iget-object v7, v1, LaK;->a:Ljava/lang/String;

    invoke-static {v7}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartnerOrderNumber:Ljava/lang/String;

    .line 68
    iget-object v1, v1, LaK;->e:Ljava/lang/String;

    invoke-static {v1}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mPartnerCountry:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v1, v0, LaF;->c:LaH;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, v0, LaF;->c:LaH;

    iget-object v1, v1, LaH;->a:Ljava/lang/String;

    invoke-static {v1}, LcQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mCustomerName:Ljava/lang/String;

    .line 72
    :cond_1
    invoke-interface {v3}, LaC;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, LaF;->e:LaM;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, v0, LaF;->e:LaM;

    .line 75
    iget-wide v7, v1, LaM;->a:J

    iput-wide v7, v5, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->d:J

    .line 76
    iget v7, v1, LaM;->b:I

    invoke-static {v7}, LD;->d(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->ordinal()I

    move-result v7

    iput v7, v5, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->c:I

    .line 77
    iget v7, v1, LaM;->d:I

    invoke-static {v7}, LD;->c(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->ordinal()I

    move-result v7

    iput v7, v5, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->e:I

    .line 78
    iget v7, v1, LaM;->e:I

    invoke-static {v7}, LD;->b(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->ordinal()I

    move-result v7

    iput v7, v5, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->a:I

    .line 79
    iget v1, v1, LaM;->f:I

    invoke-static {v1}, LD;->a(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->ordinal()I

    move-result v1

    iput v1, v5, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->b:I

    .line 80
    iget-object v0, v0, LaF;->f:LaI;

    .line 81
    if-eqz v0, :cond_2

    .line 82
    iget-object v1, v0, LaI;->a:[I

    iput-object v1, v6, LS;->a:[I

    .line 83
    iget v1, v0, LaI;->b:I

    iput v1, v6, LS;->b:I

    .line 84
    iget-object v0, v0, LaI;->c:[Ljava/lang/String;

    iput-object v0, v6, LS;->c:[Ljava/lang/String;

    .line 97
    :cond_2
    :goto_1
    invoke-interface {v3}, LaC;->f()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mActivationDateInMilliseconds:J

    .line 98
    invoke-interface {v3}, LaC;->e()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mExpirationDateInMilliseconds:J

    .line 100
    invoke-static {v3}, LD;->a(LaC;)Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->ordinal()I

    move-result v0

    iput v0, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mStatusId:I

    .line 101
    iput-object v4, v2, Lcom/kaspersky/components/ipm/Request;->mLicenseInfo:Lcom/kaspersky/components/ipm/LicenseInfo;

    .line 102
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 89
    :cond_3
    invoke-interface {v3}, LaC;->c()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_4

    const/4 v0, 0x1

    .line 90
    :goto_2
    if-eqz v0, :cond_5

    .line 91
    const/16 v0, 0x16d

    iput v0, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mTerm:I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 89
    goto :goto_2

    .line 93
    :cond_5
    invoke-interface {v3}, LaC;->g()I

    move-result v0

    iput v0, v4, Lcom/kaspersky/components/ipm/LicenseInfo;->mTerm:I

    goto :goto_1
.end method
