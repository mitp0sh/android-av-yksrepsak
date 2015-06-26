.class public final Lcx;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcw;

.field private synthetic b:Lcom/kaspersky/components/webfilter/ProxySettings;


# direct methods
.method public constructor <init>(Lcom/kaspersky/components/webfilter/ProxySettings;Lcw;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcx;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 206
    iput-object p2, p0, Lcx;->a:Lcw;

    .line 207
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 209
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 212
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcx;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    iget-object v1, p0, Lcx;->a:Lcw;

    invoke-static {v0, v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Lcom/kaspersky/components/webfilter/ProxySettings;Lcw;)V

    .line 216
    :cond_0
    return-void
.end method
