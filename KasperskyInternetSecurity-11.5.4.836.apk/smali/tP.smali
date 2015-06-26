.class public final LtP;
.super LtM;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:[Ljava/lang/String;

.field private synthetic c:Lcom/kms/licensing/iapurchase/BillingService;


# direct methods
.method public constructor <init>(Lcom/kms/licensing/iapurchase/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, LtP;->c:Lcom/kms/licensing/iapurchase/BillingService;

    .line 379
    invoke-direct {p0, p1, p2}, LtM;-><init>(Lcom/kms/licensing/iapurchase/BillingService;I)V

    .line 380
    iput-object p3, p0, LtP;->b:[Ljava/lang/String;

    .line 381
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0, p1}, LtM;->a(Landroid/os/RemoteException;)V

    .line 400
    iget-wide v0, p0, LtP;->a:J

    invoke-static {v0, v1}, Lum;->a(J)V

    .line 401
    return-void
.end method

.method protected final d()J
    .locals 4

    .prologue
    .line 385
    invoke-static {}, Lum;->a()J

    move-result-wide v0

    iput-wide v0, p0, LtP;->a:J

    .line 387
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, LtP;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 388
    const-string v1, "NONCE"

    iget-wide v2, p0, LtP;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 389
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, LtP;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->d()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 392
    invoke-static {v0}, LtP;->a(Landroid/os/Bundle;)V

    .line 393
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/kms/licensing/iapurchase/Consts;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
