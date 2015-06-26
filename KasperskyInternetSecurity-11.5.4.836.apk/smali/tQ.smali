.class public final LtQ;
.super LtM;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/kms/licensing/iapurchase/BillingService;


# direct methods
.method public constructor <init>(Lcom/kms/licensing/iapurchase/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, LtQ;->d:Lcom/kms/licensing/iapurchase/BillingService;

    .line 308
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, LtM;-><init>(Lcom/kms/licensing/iapurchase/BillingService;I)V

    .line 309
    iput-object p2, p0, LtQ;->a:Ljava/lang/String;

    .line 310
    iput-object p4, p0, LtQ;->b:Ljava/lang/String;

    .line 311
    iput-object p3, p0, LtQ;->c:Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()I
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, LtM;->a()I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, LtQ;->d:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-static {p0, p1}, Luj;->a(LtQ;Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V

    .line 344
    return-void
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, LtM;->b()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Z
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, LtM;->c()Z

    move-result v0

    return v0
.end method

.method protected final d()J
    .locals 4

    .prologue
    .line 316
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, LtQ;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 317
    const-string v1, "ITEM_ID"

    iget-object v2, p0, LtQ;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "ITEM_TYPE"

    iget-object v2, p0, LtQ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, LtQ;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, LtQ;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->d()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 325
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 327
    if-nez v0, :cond_1

    .line 331
    sget-wide v0, Lcom/kms/licensing/iapurchase/Consts;->a:J

    .line 336
    :goto_0
    return-wide v0

    .line 334
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 335
    invoke-static {v0, v2}, Luj;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 336
    const-string v0, "REQUEST_ID"

    sget-wide v2, Lcom/kms/licensing/iapurchase/Consts;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
