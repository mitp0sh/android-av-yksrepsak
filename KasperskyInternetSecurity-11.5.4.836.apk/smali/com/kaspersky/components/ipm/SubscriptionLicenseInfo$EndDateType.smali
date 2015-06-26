.class public final enum Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum END_DATE_TYPE_LIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

.field public static final enum END_DATE_TYPE_SUSPENDED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

.field public static final enum END_DATE_TYPE_UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

.field public static final enum END_DATE_TYPE_UNLIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

.field public static final enum END_DATE_TYPE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    const-string v1, "END_DATE_TYPE_UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    .line 33
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    const-string v1, "END_DATE_TYPE_UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    .line 34
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    const-string v1, "END_DATE_TYPE_UNLIMITED"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNLIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    .line 35
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    const-string v1, "END_DATE_TYPE_LIMITED"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_LIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    .line 36
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    const-string v1, "END_DATE_TYPE_SUSPENDED"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_SUSPENDED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNLIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_LIMITED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_SUSPENDED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    return-object v0
.end method
