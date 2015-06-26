.class public final Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:LS;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->STATE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$State;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->a:I

    .line 28
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->STATE_REASON_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$StateReason;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->b:I

    .line 38
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->END_DATE_TYPE_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$EndDateType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->c:I

    .line 48
    sget-object v0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->GRACE_PERIOD_UNSPECIFIED:Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo$GracePeriod;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ipm/SubscriptionLicenseInfo;->e:I

    return-void
.end method
