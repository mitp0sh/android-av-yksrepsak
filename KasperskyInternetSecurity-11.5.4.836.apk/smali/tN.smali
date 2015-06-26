.class public final LtN;
.super LtM;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/kms/licensing/iapurchase/BillingService;


# direct methods
.method public constructor <init>(Lcom/kms/licensing/iapurchase/BillingService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, LtN;->b:Lcom/kms/licensing/iapurchase/BillingService;

    .line 230
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, LtM;-><init>(Lcom/kms/licensing/iapurchase/BillingService;I)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, LtN;->a:Ljava/lang/String;

    .line 231
    iput-object p2, p0, LtN;->a:Ljava/lang/String;

    .line 232
    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 3

    .prologue
    .line 236
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, LtN;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 237
    iget-object v1, p0, LtN;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "ITEM_TYPE"

    iget-object v2, p0, LtN;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->d()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 242
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 248
    sget-object v1, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->RESULT_OK:Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    invoke-virtual {v1}, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 250
    :goto_0
    iget-object v1, p0, LtN;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Luj;->a(ZLjava/lang/String;)V

    .line 252
    sget-wide v0, Lcom/kms/licensing/iapurchase/Consts;->a:J

    return-wide v0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
