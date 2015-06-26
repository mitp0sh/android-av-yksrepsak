.class public final enum Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum GRACE_PERIOD_ABSENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

.field public static final enum GRACE_PERIOD_PRESENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

.field public static final enum GRACE_PERIOD_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    const-string v1, "GRACE_PERIOD_UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    .line 45
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    const-string v1, "GRACE_PERIOD_PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_PRESENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    .line 46
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    const-string v1, "GRACE_PERIOD_ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_ABSENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_PRESENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_ABSENT:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    return-object v0
.end method
