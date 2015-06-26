.class final LcA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcz;


# direct methods
.method constructor <init>(Lcz;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, LcA;->b:Lcz;

    iput-object p2, p0, LcA;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, LcA;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 690
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, LcA;->b:Lcz;

    iget-object v0, v0, Lcz;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    new-instance v1, Lcw;

    iget-object v2, p0, LcA;->b:Lcz;

    iget-object v2, v2, Lcz;->a:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-direct {v1, v2}, Lcw;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V

    invoke-static {v0, v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Lcom/kaspersky/components/webfilter/ProxySettings;Lcw;)V

    .line 695
    :cond_0
    return-void
.end method
