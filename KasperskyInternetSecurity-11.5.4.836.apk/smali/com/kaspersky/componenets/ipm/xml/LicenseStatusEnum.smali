.class public final enum Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
.super Ljava/lang/Enum;
.source "LicenseStatusEnum.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "LicenseStatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOCKED:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Blocked"
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

.field public static final enum LIMITED:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Limited"
    .end annotation
.end field

.field public static final enum VALID:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlEnumValue;
        value = "Valid"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    const-string v1, "BLOCKED"

    .line 37
    const-string v2, "Blocked"

    invoke-direct {v0, v1, v3, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->BLOCKED:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    .line 38
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    const-string v1, "LIMITED"

    .line 39
    const-string v2, "Limited"

    invoke-direct {v0, v1, v4, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->LIMITED:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    .line 40
    new-instance v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    const-string v1, "VALID"

    .line 41
    const-string v2, "Valid"

    invoke-direct {v0, v1, v5, v2}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->VALID:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->BLOCKED:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->LIMITED:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->VALID:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "v"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->value:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
    .locals 5
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->values()[Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    aget-object v0, v2, v1

    .line 54
    .local v0, "c":Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
    iget-object v4, v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    return-object v0

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->ENUM$VALUES:[Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->value:Ljava/lang/String;

    return-object v0
.end method
