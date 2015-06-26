.class public final LcP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/regex/Pattern;

.field private static final d:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:LaC;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "\\$((ApplicationType)|(ApplicationID)|(ApplicationVersion)|(ApplicationStatus)|(Localization)|(RebrandingCode)|(Product State)|(LicenseLegalStatus)|(LicVolume)|(LicenseId)|(LicenseType)|(LicenseTerm)|(PartNumber)|(PartnerName)|(PartnerCountry)|(CustomerName)|(SubscriptionState)|(SubscriptionStateReason)|(LicenseActivationDate)|(LicenseExpirationDate)|(LicenseDaysToExpiry)|(LicenseDaysToExpiration)|(LicenseDaysSinceActivation)|(LicenseDaysAfterExpiry)|(LicenseDaysAfterExpiration)|(LicenseDaysUsed)|(LicenseDaysToSubscriptionExpiration)|(LicenseDaysToSubscriptionExpiry)|(FilesCount)|(URLCount)|(ThreatsCount)|(MaliciousCount)|(VulnerabilitiesCount))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LcP;->a:Ljava/util/regex/Pattern;

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, LcP;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    iput-object v0, p0, LcP;->b:LaC;

    .line 71
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iput-object v0, p0, LcP;->c:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    packed-switch p0, :pswitch_data_0

    .line 226
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f07044d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f070447

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f070446

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_2
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f070449

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_3
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f070448

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_4
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f07044b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_5
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f07044c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_6
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f07044a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 198
    sget-object v1, LcP;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/32 v4, 0x5265c00

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-static {p1}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v0, ""

    .line 193
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string v2, "ApplicationType"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v0, p0, LcP;->c:Landroid/content/Context;

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    const-string v2, "ApplicationID"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const-string v0, "1335"

    goto :goto_0

    .line 84
    :cond_2
    const-string v2, "ApplicationVersion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_3
    const-string v2, "ApplicationStatus"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    iget-object v0, p0, LcP;->c:Landroid/content/Context;

    const v1, 0x7f07044f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_4
    const-string v2, "Localization"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    invoke-static {}, Lcom/kms/kmsshared/Utils;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_5
    const-string v2, "RebrandingCode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    iget-object v0, p0, LcP;->c:Landroid/content/Context;

    const v1, 0x7f070451

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_6
    const-string v2, "Product State"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 96
    iget-object v2, p0, LcP;->c:Landroid/content/Context;

    const v3, 0x7f07044e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    iget-object v3, p0, LcP;->b:LaC;

    invoke-interface {v3}, LaC;->c()I

    move-result v3

    invoke-static {v3}, LcP;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_7
    const-string v2, "LicenseLegalStatus"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    iget-object v0, p0, LcP;->b:LaC;

    invoke-static {v0}, LD;->a(LaC;)Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :cond_8
    const-string v2, "LicVolume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "LicenseVolume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 104
    :cond_9
    const-string v0, "1"

    goto/16 :goto_0

    .line 105
    :cond_a
    const-string v2, "LicenseId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 106
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :cond_b
    const-string v2, "LicenseType"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 108
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->c()I

    move-result v0

    invoke-static {v0}, LD;->e(I)Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 110
    :cond_c
    iget-object v2, p0, LcP;->b:LaC;

    invoke-interface {v2}, LaC;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    .line 111
    :goto_1
    iget-object v1, p0, LcP;->b:LaC;

    invoke-interface {v1}, LaC;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->f()LaD;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, LcP;->b:LaC;

    invoke-interface {v1}, LaC;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->f()LaD;

    move-result-object v1

    invoke-virtual {v1}, LaD;->b()LaE;

    move-result-object v1

    .line 113
    :goto_2
    const-string v2, "LicenseTerm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 115
    if-eqz v1, :cond_f

    .line 116
    iget-object v0, v1, LaE;->e:LaF;

    iget v0, v0, LaF;->b:I

    .line 124
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 110
    goto :goto_1

    .line 111
    :cond_e
    const/4 v1, 0x0

    goto :goto_2

    .line 118
    :cond_f
    if-eqz v0, :cond_10

    .line 119
    const/16 v0, 0x168

    goto :goto_3

    .line 121
    :cond_10
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->g()I

    move-result v0

    goto :goto_3

    .line 127
    :cond_11
    const-string v2, "PartNumber"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 128
    if-eqz v1, :cond_12

    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->d:LaK;

    if-eqz v0, :cond_12

    .line 129
    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->d:LaK;

    iget-object v0, v0, LaK;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :cond_12
    const-string v0, ""

    goto/16 :goto_0

    .line 132
    :cond_13
    const-string v2, "PartnerName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 133
    if-eqz v1, :cond_14

    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->d:LaK;

    if-eqz v0, :cond_14

    .line 134
    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->d:LaK;

    iget-object v0, v0, LaK;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 135
    :cond_14
    const-string v0, ""

    goto/16 :goto_0

    .line 137
    :cond_15
    const-string v2, "PartnerCountry"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 138
    if-eqz v1, :cond_16

    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->d:LaK;

    if-eqz v0, :cond_16

    .line 139
    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->d:LaK;

    iget-object v0, v0, LaK;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    :cond_16
    const-string v0, ""

    goto/16 :goto_0

    .line 142
    :cond_17
    const-string v2, "CustomerName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 143
    if-eqz v1, :cond_18

    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->c:LaH;

    if-eqz v0, :cond_18

    .line 144
    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->c:LaH;

    iget-object v0, v0, LaH;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :cond_18
    const-string v0, ""

    goto/16 :goto_0

    .line 147
    :cond_19
    const-string v2, "SubscriptionState"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 148
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->b()I

    move-result v0

    invoke-static {v0}, LD;->b(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 151
    :cond_1a
    const-string v2, "SubscriptionStateReason"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "SubscriptionStatusReason"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 152
    :cond_1b
    if-eqz v1, :cond_1c

    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->e:LaM;

    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, v1, LaE;->e:LaF;

    iget-object v0, v0, LaF;->e:LaM;

    iget v0, v0, LaM;->f:I

    invoke-static {v0}, LD;->a(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :cond_1c
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->STATE_REASON_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :cond_1d
    const-string v1, "LicenseActivationDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 157
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, LcP;->a(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 158
    :cond_1e
    const-string v1, "LicenseExpirationDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 159
    if-nez v0, :cond_1f

    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 160
    :cond_1f
    const-string v0, ""

    goto/16 :goto_0

    .line 162
    :cond_20
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, LcP;->a(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 165
    :cond_21
    const-string v0, "LicenseDaysToExpiry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "LicenseDaysToExpiration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 166
    :cond_22
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->h()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 167
    const-string v0, "0"

    goto/16 :goto_0

    .line 168
    :cond_23
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->e()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :cond_24
    const-string v0, "LicenseDaysAfterExpiry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "LicenseDaysAfterExpiration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 171
    :cond_25
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->h()Z

    move-result v0

    if-nez v0, :cond_26

    .line 172
    const-string v0, "0"

    goto/16 :goto_0

    .line 173
    :cond_26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, LcP;->b:LaC;

    invoke-interface {v2}, LaC;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :cond_27
    const-string v0, "LicenseDaysUsed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "LicenseDaysSinceActivation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 177
    :cond_28
    iget-object v0, p0, LcP;->b:LaC;

    invoke-interface {v0}, LaC;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :cond_29
    const-string v0, "LicenseDaysToSubscriptionExpiration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "LicenseDaysToSubscriptionExpiry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 180
    :cond_2a
    const-string v0, "0"

    goto/16 :goto_0

    .line 182
    :cond_2b
    const-string v0, "FilesCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 183
    const-string v0, "0"

    goto/16 :goto_0

    .line 184
    :cond_2c
    const-string v0, "URLCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 185
    const-string v0, "0"

    goto/16 :goto_0

    .line 186
    :cond_2d
    const-string v0, "ThreatsCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 187
    const-string v0, "0"

    goto/16 :goto_0

    .line 188
    :cond_2e
    const-string v0, "MaliciousCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 189
    const-string v0, "0"

    goto/16 :goto_0

    .line 190
    :cond_2f
    const-string v0, "VulnerabilitiesCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 191
    const-string v0, "0"

    goto/16 :goto_0

    .line 193
    :cond_30
    const-string v0, ""

    goto/16 :goto_0
.end method
