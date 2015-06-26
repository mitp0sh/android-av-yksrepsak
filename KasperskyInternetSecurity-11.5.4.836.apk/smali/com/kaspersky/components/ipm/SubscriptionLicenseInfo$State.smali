.class public final enum Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ACTIVE:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

.field public static final enum HARD_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

.field public static final enum PAUSED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

.field public static final enum SOFT_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

.field public static final enum STATE_UNKNOWN:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

.field public static final enum STATE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    const-string v1, "STATE_UNSPECIFIED"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->STATE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    .line 11
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    const-string v1, "STATE_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->STATE_UNKNOWN:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    .line 12
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->ACTIVE:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    .line 13
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->PAUSED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    .line 14
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    const-string v1, "SOFT_CANCELED"

    invoke-direct {v0, v1, v7}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->SOFT_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    .line 15
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    const-string v1, "HARD_CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->HARD_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->STATE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->STATE_UNKNOWN:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->ACTIVE:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->PAUSED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->SOFT_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->HARD_CANCELED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    return-object v0
.end method
