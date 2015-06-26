.class final Lda;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:LcW;


# direct methods
.method private constructor <init>(LcW;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lda;->a:LcW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LcW;B)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lda;-><init>(LcW;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 329
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 330
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 332
    :goto_0
    if-eqz v2, :cond_2

    .line 333
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    :goto_1
    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lda;->a:LcW;

    invoke-static {v0}, LcW;->b(LcW;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AntiThiefFacade_ConnectivityListener"

    invoke-static {v0, v1}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lda;->a:LcW;

    invoke-static {v1}, LcW;->c(LcW;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ldb;

    invoke-direct {v2, p0, v0}, Ldb;-><init>(Lda;Landroid/os/PowerManager$WakeLock;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 365
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 330
    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 337
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 338
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_1
.end method
