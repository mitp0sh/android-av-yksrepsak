.class public abstract LtM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:J

.field private synthetic c:Lcom/kms/licensing/iapurchase/BillingService;


# direct methods
.method public constructor <init>(Lcom/kms/licensing/iapurchase/BillingService;I)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, LtM;->c:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, LtM;->a:I

    .line 84
    return-void
.end method

.method protected static a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 181
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/kms/licensing/iapurchase/Consts$ResponseCode;->valueOf(I)Lcom/kms/licensing/iapurchase/Consts$ResponseCode;

    .line 186
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, LtM;->a:I

    return v0
.end method

.method protected final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, LtM;->c:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v2}, Lcom/kms/licensing/iapurchase/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-object v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/licensing/iapurchase/BillingService;->a(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 152
    return-void
.end method

.method public a(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0}, LtM;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->c()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, LtM;->c:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-static {v1}, Lcom/kms/licensing/iapurchase/BillingService;->a(Lcom/kms/licensing/iapurchase/BillingService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->d()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    :try_start_0
    invoke-virtual {p0}, LtM;->d()J

    move-result-wide v0

    iput-wide v0, p0, LtM;->b:J

    .line 128
    iget-wide v0, p0, LtM;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/kms/licensing/iapurchase/BillingService;->e()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, LtM;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {p0, v0}, LtM;->a(Landroid/os/RemoteException;)V

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()J
.end method
