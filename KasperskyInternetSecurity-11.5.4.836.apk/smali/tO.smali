.class public final LtO;
.super LtM;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/kms/licensing/iapurchase/BillingService;


# direct methods
.method public constructor <init>(Lcom/kms/licensing/iapurchase/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, LtO;->b:Lcom/kms/licensing/iapurchase/BillingService;

    .line 354
    invoke-direct {p0, p1, p2}, LtM;-><init>(Lcom/kms/licensing/iapurchase/BillingService;I)V

    .line 355
    iput-object p3, p0, LtO;->a:[Ljava/lang/String;

    .line 356
    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 4

    .prologue
    .line 360
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, LtO;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 361
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, LtO;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->d()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 364
    invoke-static {v0}, LtO;->a(Landroid/os/Bundle;)V

    .line 365
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/kms/licensing/iapurchase/Consts;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
