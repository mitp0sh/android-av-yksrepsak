.class public final enum Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
.super Ljava/lang/Enum;
.source "ApplicationStatusEnum.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "ApplicationStatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASES_OUT_OF_DATE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "BasesOutOfDate"
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

.field public static final enum LICENSE_BLOCKED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "LicenseBlocked"
    .end annotation
.end field

.field public static final enum LICENSE_EXPIRED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "LicenseExpired"
    .end annotation
.end field

.field public static final enum LICENSE_INVALID:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "LicenseInvalid"
    .end annotation
.end field

.field public static final enum LICENSE_IS_TRIAL:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "LicenseIsTrial"
    .end annotation
.end field

.field public static final enum LICENSE_LIMITED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "LicenseLimited"
    .end annotation
.end field

.field public static final enum NO_LICENSE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "NoLicense"
    .end annotation
.end field

.field public static final enum PRODUCT_FUNCTIONALITY_DISABLED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "ProductFunctionalityDisabled"
    .end annotation
.end field

.field public static final enum PRODUCT_NOT_AUTO_RUN:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "ProductNotAutoRun"
    .end annotation
.end field

.field public static final enum PRODUCT_NOT_PROTECTED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "ProductNotProtected"
    .end annotation
.end field

.field public static final enum PROTECTION_SAFE_MODE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "ProtectionSafeMode"
    .end annotation
.end field

.field public static final enum SUBSCRIPTION_IN_GRACE_PERIOD:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "SubscriptionInGracePeriod"
    .end annotation
.end field

.field public static final enum SUBSCRIPTION_SUSPENDED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "SubscriptionSuspended"
    .end annotation
.end field

.field public static final enum THREATS_RISKWARE_UNTREATED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "ThreatsRiskwareUntreated"
    .end annotation
.end field

.field public static final enum THREATS_SUSPICIOUS_UNTREATED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "ThreatsSuspiciousUntreated"
    .end annotation
.end field

.field public static final enum TRIAL_EXPIRED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "TrialExpired"
    .end annotation
.end field

.field public static final enum UPDATE_NOT_AUTO:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "UpdateNotAuto"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "LICENSE_BLOCKED"

    .line 51
    const-string v2, "LicenseBlocked"

    invoke-direct {v0, v1, v4, v2}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_BLOCKED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 52
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "LICENSE_INVALID"

    .line 53
    const-string v2, "LicenseInvalid"

    invoke-direct {v0, v1, v5, v2}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_INVALID:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 54
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "LICENSE_LIMITED"

    .line 55
    const-string v2, "LicenseLimited"

    invoke-direct {v0, v1, v6, v2}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_LIMITED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 56
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "TRIAL_EXPIRED"

    .line 57
    const-string v2, "TrialExpired"

    invoke-direct {v0, v1, v7, v2}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->TRIAL_EXPIRED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 58
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "LICENSE_EXPIRED"

    .line 59
    const-string v2, "LicenseExpired"

    invoke-direct {v0, v1, v8, v2}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_EXPIRED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 60
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "SUBSCRIPTION_SUSPENDED"

    const/4 v2, 0x5

    .line 61
    const-string v3, "SubscriptionSuspended"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->SUBSCRIPTION_SUSPENDED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 62
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "NO_LICENSE"

    const/4 v2, 0x6

    .line 63
    const-string v3, "NoLicense"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->NO_LICENSE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 64
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "SUBSCRIPTION_IN_GRACE_PERIOD"

    const/4 v2, 0x7

    .line 65
    const-string v3, "SubscriptionInGracePeriod"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->SUBSCRIPTION_IN_GRACE_PERIOD:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 66
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "PRODUCT_NOT_PROTECTED"

    const/16 v2, 0x8

    .line 67
    const-string v3, "ProductNotProtected"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PRODUCT_NOT_PROTECTED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 68
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "BASES_OUT_OF_DATE"

    const/16 v2, 0x9

    .line 69
    const-string v3, "BasesOutOfDate"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->BASES_OUT_OF_DATE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 70
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "THREATS_SUSPICIOUS_UNTREATED"

    const/16 v2, 0xa

    .line 71
    const-string v3, "ThreatsSuspiciousUntreated"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->THREATS_SUSPICIOUS_UNTREATED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 72
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "THREATS_RISKWARE_UNTREATED"

    const/16 v2, 0xb

    .line 73
    const-string v3, "ThreatsRiskwareUntreated"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->THREATS_RISKWARE_UNTREATED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 74
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "LICENSE_IS_TRIAL"

    const/16 v2, 0xc

    .line 75
    const-string v3, "LicenseIsTrial"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_IS_TRIAL:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 76
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "PRODUCT_NOT_AUTO_RUN"

    const/16 v2, 0xd

    .line 77
    const-string v3, "ProductNotAutoRun"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PRODUCT_NOT_AUTO_RUN:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 78
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "UPDATE_NOT_AUTO"

    const/16 v2, 0xe

    .line 79
    const-string v3, "UpdateNotAuto"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->UPDATE_NOT_AUTO:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 80
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "PROTECTION_SAFE_MODE"

    const/16 v2, 0xf

    .line 81
    const-string v3, "ProtectionSafeMode"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PROTECTION_SAFE_MODE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 82
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    const-string v1, "PRODUCT_FUNCTIONALITY_DISABLED"

    const/16 v2, 0x10

    .line 83
    const-string v3, "ProductFunctionalityDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PRODUCT_FUNCTIONALITY_DISABLED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_BLOCKED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_INVALID:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_LIMITED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->TRIAL_EXPIRED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_EXPIRED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->SUBSCRIPTION_SUSPENDED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->NO_LICENSE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->SUBSCRIPTION_IN_GRACE_PERIOD:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PRODUCT_NOT_PROTECTED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->BASES_OUT_OF_DATE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->THREATS_SUSPICIOUS_UNTREATED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->THREATS_RISKWARE_UNTREATED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_IS_TRIAL:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PRODUCT_NOT_AUTO_RUN:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->UPDATE_NOT_AUTO:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PROTECTION_SAFE_MODE:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->PRODUCT_FUNCTIONALITY_DISABLED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "v"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->value:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .locals 5
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->values()[Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    aget-object v0, v2, v1

    .line 96
    .local v0, "c":Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    iget-object v4, v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    return-object v0

    .line 95
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->value:Ljava/lang/String;

    return-object v0
.end method
