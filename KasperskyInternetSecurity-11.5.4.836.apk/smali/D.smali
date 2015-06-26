.class public final LD;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LaC;)Lcom/kaspersky/components/ipm/LicenseInfo$Status;
    .locals 1

    .prologue
    .line 70
    invoke-interface {p0}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->BLOCKED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->VALID:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    goto :goto_0
.end method

.method public static a(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;
    .locals 1

    .prologue
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 29
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->STATE_REASON_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CREDIT_CARD_AUTH_FAILED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    goto :goto_0

    .line 21
    :pswitch_1
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CREDIT_CARD_AUTH_SUCCESS:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    goto :goto_0

    .line 23
    :pswitch_2
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CUSTOMER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    goto :goto_0

    .line 25
    :pswitch_3
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->PROVIDER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    goto :goto_0

    .line 27
    :pswitch_4
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;
    .locals 1

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 44
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->STATE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->ACTIVE:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    goto :goto_0

    .line 38
    :pswitch_1
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->HARD_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    goto :goto_0

    .line 40
    :pswitch_2
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->SOFT_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    goto :goto_0

    .line 42
    :pswitch_3
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->PAUSED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;
    .locals 1

    .prologue
    .line 49
    if-lez p0, :cond_0

    .line 50
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_PRESENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    if-nez p0, :cond_1

    .line 52
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_ABSENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    goto :goto_0
.end method

.method public static d(I)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;
    .locals 1

    .prologue
    .line 57
    packed-switch p0, :pswitch_data_0

    .line 65
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_LIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    goto :goto_0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNLIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    goto :goto_0

    .line 63
    :pswitch_2
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_SUSPENDED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static e(I)Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->NONE:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 76
    packed-switch p0, :pswitch_data_0

    .line 102
    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->NONE:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 81
    :pswitch_1
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->TRIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 84
    :pswitch_2
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->COMMERCIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 87
    :pswitch_3
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->SUBSCRIPTION:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 90
    :pswitch_4
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->SUBSCRIPTION_LIMIT:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 93
    :pswitch_5
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->TEST:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 96
    :pswitch_6
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->BETA:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 99
    :pswitch_7
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->OEM:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
