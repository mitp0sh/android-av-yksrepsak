.class final LI;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:LH;


# direct methods
.method private constructor <init>(LH;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, LI;->a:LH;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LH;B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, LI;-><init>(LH;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 146
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 148
    :goto_0
    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    :goto_1
    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, LI;->a:LH;

    invoke-static {v0}, LH;->a(LH;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "IPM_ConnectivityListener"

    invoke-static {v0, v1}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 160
    iget-object v1, p0, LI;->a:LH;

    invoke-static {v1}, LH;->c(LH;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, LJ;

    invoke-direct {v2, p0, v0}, LJ;-><init>(LI;Landroid/os/PowerManager$WakeLock;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 146
    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 154
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_1
.end method
