.class public final enum Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CREDIT_CARD_AUTH_FAILED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

.field public static final enum CREDIT_CARD_AUTH_SUCCESS:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

.field public static final enum CUSTOMER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

.field public static final enum PROVIDER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

.field public static final enum STATE_REASON_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

.field public static final enum UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    const-string v1, "STATE_REASON_UNSPECIFIED"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->STATE_REASON_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    .line 22
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    .line 23
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    const-string v1, "PROVIDER_INITIATED"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->PROVIDER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    .line 24
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    const-string v1, "CUSTOMER_INITIATED"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CUSTOMER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    .line 25
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    const-string v1, "CREDIT_CARD_AUTH_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CREDIT_CARD_AUTH_FAILED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    .line 26
    new-instance v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    const-string v1, "CREDIT_CARD_AUTH_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CREDIT_CARD_AUTH_SUCCESS:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->STATE_REASON_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->UNDEFINED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->PROVIDER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CUSTOMER_INITIATED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CREDIT_CARD_AUTH_FAILED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->CREDIT_CARD_AUTH_SUCCESS:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->a:[Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    return-object v0
.end method
