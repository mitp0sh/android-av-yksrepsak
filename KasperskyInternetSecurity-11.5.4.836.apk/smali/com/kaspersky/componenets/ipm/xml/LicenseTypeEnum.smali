.class public final enum Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
.super Ljava/lang/Enum;
.source "LicenseTypeEnum.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "LicenseTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BETA:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Beta"
    .end annotation
.end field

.field public static final enum COMMERCIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Commercial"
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

.field public static final enum NONE:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "None"
    .end annotation
.end field

.field public static final enum OEM:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Oem"
    .end annotation
.end field

.field public static final enum SUBSCRIPTION:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Subscription"
    .end annotation
.end field

.field public static final enum SUBSCRIPTION_LIMIT:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "SubscriptionLimit"
    .end annotation
.end field

.field public static final enum TEST:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Test"
    .end annotation
.end field

.field public static final enum TRIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Trial"
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

    .line 41
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "NONE"

    .line 42
    const-string v2, "None"

    invoke-direct {v0, v1, v4, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->NONE:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 43
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "COMMERCIAL"

    .line 44
    const-string v2, "Commercial"

    invoke-direct {v0, v1, v5, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->COMMERCIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 45
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "BETA"

    .line 46
    const-string v2, "Beta"

    invoke-direct {v0, v1, v6, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->BETA:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 47
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "TRIAL"

    .line 48
    const-string v2, "Trial"

    invoke-direct {v0, v1, v7, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->TRIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 49
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "TEST"

    .line 50
    const-string v2, "Test"

    invoke-direct {v0, v1, v8, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->TEST:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 51
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "OEM"

    const/4 v2, 0x5

    .line 52
    const-string v3, "Oem"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->OEM:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 53
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "SUBSCRIPTION"

    const/4 v2, 0x6

    .line 54
    const-string v3, "Subscription"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->SUBSCRIPTION:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 55
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    const-string v1, "SUBSCRIPTION_LIMIT"

    const/4 v2, 0x7

    .line 56
    const-string v3, "SubscriptionLimit"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->SUBSCRIPTION_LIMIT:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->NONE:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->COMMERCIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->BETA:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->TRIAL:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->TEST:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->OEM:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->SUBSCRIPTION:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->SUBSCRIPTION_LIMIT:Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "v"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->value:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .locals 5
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->values()[Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    aget-object v0, v2, v1

    .line 69
    .local v0, "c":Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    iget-object v4, v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    return-object v0

    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->value:Ljava/lang/String;

    return-object v0
.end method
