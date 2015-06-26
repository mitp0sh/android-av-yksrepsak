.class final Ljy;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljx;


# direct methods
.method constructor <init>(Ljx;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Ljy;->a:Ljx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v0, p0, Ljy;->a:Ljx;

    invoke-static {v0}, Ljx;->b(Ljx;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ljz;

    invoke-direct {v1, p0, p1, p2}, Ljz;-><init>(Ljy;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Ljy;->a:Ljx;

    invoke-static {v0}, Ljx;->a(Ljx;)Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
