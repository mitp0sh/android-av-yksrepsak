.class public final LtR;
.super LtM;
.source "SourceFile"


# instance fields
.field private a:J

.field private synthetic b:Lcom/kms/licensing/iapurchase/BillingService;


# direct methods
.method public constructor <init>(Lcom/kms/licensing/iapurchase/BillingService;)V
    .locals 1

    .prologue
    .line 410
    iput-object p1, p0, LtR;->b:Lcom/kms/licensing/iapurchase/BillingService;

    .line 414
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, LtM;-><init>(Lcom/kms/licensing/iapurchase/BillingService;I)V

    .line 415
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()I
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, LtM;->a()I

    move-result v0

    return v0
.end method

.method protected final a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0, p1}, LtM;->a(Landroid/os/RemoteException;)V

    .line 432
    iget-wide v0, p0, LtR;->a:J

    invoke-static {v0, v1}, Lum;->a(J)V

    .line 433
    return-void
.end method

.method protected final a(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, LtR;->b:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-static {p0, p1}, Luj;->a(LtR;Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V

    .line 439
    return-void
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, LtM;->b()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Z
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, LtM;->c()Z

    move-result v0

    return v0
.end method

.method protected final d()J
    .locals 4

    .prologue
    .line 419
    invoke-static {}, Lum;->a()J

    move-result-wide v0

    iput-wide v0, p0, LtR;->a:J

    .line 421
    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, LtR;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 422
    const-string v1, "NONCE"

    iget-wide v2, p0, LtR;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 423
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->d()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 424
    invoke-static {v0}, LtR;->a(Landroid/os/Bundle;)V

    .line 425
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/kms/licensing/iapurchase/Consts;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
