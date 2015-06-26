.class final LdE;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/wifi/WifiManager;

.field private synthetic b:LdA;


# direct methods
.method constructor <init>(LdA;)V
    .locals 2

    .prologue
    .line 153
    iput-object p1, p0, LdE;->b:LdA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 154
    invoke-static {p1}, LdA;->f(LdA;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, LdE;->a:Landroid/net/wifi/WifiManager;

    .line 155
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, LdE;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 160
    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, LdE;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 164
    :cond_1
    return-void
.end method
