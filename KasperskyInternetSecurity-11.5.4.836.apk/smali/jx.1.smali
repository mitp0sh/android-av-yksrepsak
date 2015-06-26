.class public final Ljx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljx;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/Map;

.field private final e:Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljy;

    invoke-direct {v0, p0}, Ljy;-><init>(Ljx;)V

    iput-object v0, p0, Ljx;->f:Landroid/content/BroadcastReceiver;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljx;->b:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljx;->c:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljx;->d:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

    invoke-direct {v0, p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljx;->e:Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

    .line 41
    invoke-direct {p0}, Ljx;->b()V

    .line 43
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljx;)Lcom/kavsdk/wifi/impl/WifiStatisticsManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljx;->e:Lcom/kavsdk/wifi/impl/WifiStatisticsManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljx;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Ljx;->a:Ljx;

    .line 49
    if-nez v0, :cond_1

    .line 50
    const-class v1, Ljx;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Ljx;->a:Ljx;

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljx;

    invoke-direct {v0, p0}, Ljx;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljx;->a:Ljx;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 150
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 151
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 152
    const/4 v0, 0x0

    .line 154
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 157
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 159
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    move-object v1, v0

    .line 166
    :goto_0
    iget-object v0, p0, Ljx;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 167
    invoke-static {v0, v2, v1}, Ljx;->a(Ljava/lang/ref/WeakReference;Landroid/net/NetworkInfo$State;Landroid/net/wifi/WifiInfo;)V

    goto :goto_1

    .line 162
    :cond_0
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    move-object v1, v0

    goto :goto_0

    .line 169
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/ref/WeakReference;Landroid/net/NetworkInfo$State;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 175
    return-void
.end method

.method static synthetic a(Ljx;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljx;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Ljx;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljx;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljx;->a()Landroid/content/Context;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Ljx;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljx;->a()Landroid/content/Context;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Ljx;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Ljx;->c()V

    .line 93
    iget-object v0, p0, Ljx;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
