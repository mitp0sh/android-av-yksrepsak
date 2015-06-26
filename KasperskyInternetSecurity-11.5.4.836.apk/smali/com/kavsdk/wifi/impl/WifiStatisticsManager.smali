.class public Lcom/kavsdk/wifi/impl/WifiStatisticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/kavsdk/shared/SdkUtils$DeviceType;

.field private final b:Ljava/util/List;

.field private c:Landroid/net/wifi/WifiConfiguration;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private volatile g:Landroid/net/wifi/WifiConfiguration;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->f:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/kavsdk/shared/SdkUtils;->a(Landroid/content/Context;)Lcom/kavsdk/shared/SdkUtils$DeviceType;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->b:Ljava/util/List;

    .line 75
    invoke-direct {p0, p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->b(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->c:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->i:J

    .line 78
    return-void
.end method

.method private static a(Landroid/net/wifi/WifiConfiguration;LjB;)I
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p1, LjB;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, LjB;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, LjB;->a:Z

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x4

    .line 251
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-boolean v0, p1, LjB;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, LjB;->c:Z

    if-eqz v0, :cond_3

    .line 247
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :cond_3
    invoke-static {p0}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 249
    const/4 v0, 0x2

    goto :goto_0

    .line 251
    :cond_4
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private static a(LjB;)I
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, LjB;->e:Z

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    .line 290
    :cond_0
    iget-boolean v0, p0, LjB;->d:Z

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x2

    goto :goto_0

    .line 293
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private static a(Ljava/util/BitSet;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    .line 267
    if-eqz p0, :cond_5

    .line 268
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 271
    :goto_0
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    or-int/lit8 v0, v0, 0x2

    .line 274
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    or-int/lit8 v0, v0, 0x4

    .line 277
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    or-int/lit8 v0, v0, 0x8

    .line 281
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 282
    const/16 v0, 0x80

    .line 284
    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    if-nez p0, :cond_0

    .line 345
    const-string v0, ""

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(^\")|(\"$)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 7

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->i:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v5, v0

    .line 166
    iget-object v1, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v6, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->h:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IZ)V

    .line 168
    :cond_0
    return-void
.end method

.method private a(LjC;)V
    .locals 13

    .prologue
    .line 229
    invoke-static {p1}, LjC;->a(LjC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, LjC;->b(LjC;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, LjC;->c(LjC;)Z

    move-result v3

    invoke-static {p1}, LjC;->d(LjC;)Z

    move-result v4

    invoke-static {p1}, LjC;->e(LjC;)I

    move-result v5

    invoke-static {p1}, LjC;->f(LjC;)Lcom/kavsdk/shared/SdkUtils$DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kavsdk/shared/SdkUtils$DeviceType;->ordinal()I

    move-result v6

    invoke-static {p1}, LjC;->g(LjC;)I

    move-result v7

    invoke-static {p1}, LjC;->h(LjC;)I

    move-result v8

    invoke-static {p1}, LjC;->i(LjC;)I

    move-result v9

    invoke-static {p1}, LjC;->j(LjC;)I

    move-result v10

    invoke-static {p1}, LjC;->k(LjC;)I

    move-result v11

    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v12

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->send(Ljava/lang/String;Ljava/lang/String;ZZIIIIIIII)Z

    .line 237
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v0, LjC;

    invoke-direct {v0, v3}, LjC;-><init>(B)V

    .line 82
    new-instance v1, LjB;

    invoke-direct {v1, p3}, LjB;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LjC;->a(LjC;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {v0, p2}, LjC;->b(LjC;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    invoke-static {v0, p6}, LjC;->a(LjC;Z)Z

    .line 87
    invoke-static {v0, v3}, LjC;->b(LjC;Z)Z

    .line 88
    invoke-static {v0, p5}, LjC;->a(LjC;I)I

    .line 89
    iget-object v2, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    invoke-static {v0, v2}, LjC;->a(LjC;Lcom/kavsdk/shared/SdkUtils$DeviceType;)Lcom/kavsdk/shared/SdkUtils$DeviceType;

    .line 90
    invoke-static {p4, v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Landroid/net/wifi/WifiConfiguration;LjB;)I

    move-result v2

    invoke-static {v0, v2}, LjC;->b(LjC;I)I

    .line 91
    invoke-static {v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->c(LjB;)I

    move-result v2

    invoke-static {v0, v2}, LjC;->c(LjC;I)I

    .line 92
    iget-object v2, p4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v2}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Ljava/util/BitSet;)I

    move-result v2

    invoke-static {v0, v2}, LjC;->d(LjC;I)I

    .line 93
    invoke-static {v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->b(LjB;)I

    move-result v2

    invoke-static {v0, v2}, LjC;->e(LjC;I)I

    .line 94
    invoke-static {v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(LjB;)I

    move-result v1

    invoke-static {v0, v1}, LjC;->f(LjC;I)I

    .line 95
    iget-object v1, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private static a(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(Ljava/util/BitSet;)I

    move-result v1

    .line 258
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic a(Lcom/kavsdk/wifi/impl/WifiStatisticsManager;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static b(LjB;)I
    .locals 2

    .prologue
    .line 299
    iget-boolean v0, p0, LjB;->d:Z

    if-nez v0, :cond_1

    .line 300
    const/4 v0, 0x2

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    const/4 v0, 0x0

    .line 305
    iget-boolean v1, p0, LjB;->f:Z

    if-eqz v1, :cond_2

    .line 306
    const/4 v0, 0x1

    .line 309
    :cond_2
    iget-boolean v1, p0, LjB;->g:Z

    if-eqz v1, :cond_3

    .line 310
    or-int/lit8 v0, v0, 0x4

    .line 313
    :cond_3
    if-nez v0, :cond_0

    .line 314
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 103
    iput-object v2, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->c:Landroid/net/wifi/WifiConfiguration;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->f:Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_1

    .line 106
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 107
    invoke-static {p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->c(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->c:Landroid/net/wifi/WifiConfiguration;

    .line 108
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->e:Ljava/lang/String;

    .line 111
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->d:Ljava/lang/String;

    .line 117
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 120
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->f:Ljava/lang/String;

    .line 127
    :cond_1
    return-void

    .line 113
    :cond_2
    iput-object v2, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->e:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(LjB;)I
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    iget-boolean v1, p0, LjB;->f:Z

    if-eqz v1, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 326
    :cond_0
    iget-boolean v1, p0, LjB;->g:Z

    if-eqz v1, :cond_1

    .line 327
    or-int/lit8 v0, v0, 0x2

    .line 330
    :cond_1
    iget-boolean v1, p0, LjB;->b:Z

    if-eqz v1, :cond_2

    .line 332
    or-int/lit8 v0, v0, 0x8

    .line 333
    or-int/lit8 v0, v0, 0x4

    .line 336
    :cond_2
    if-nez v0, :cond_3

    .line 337
    const/16 v0, 0x80

    .line 340
    :cond_3
    return v0
.end method

.method private static c(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    .line 130
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 131
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 134
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v2, :cond_0

    .line 139
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 143
    monitor-enter p0

    const/4 v2, 0x1

    .line 144
    if-eqz p1, :cond_1

    .line 145
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    if-eqz v0, :cond_1

    .line 147
    iget-object v1, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 148
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LjC;

    invoke-direct {p0, v1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a(LjC;)V

    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private native send(Ljava/lang/String;Ljava/lang/String;ZZIIIIIIII)Z
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lht;->a()Lht;

    move-result-object v0

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    if-eqz p1, :cond_0

    .line 177
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 178
    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 180
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 181
    :cond_2
    invoke-static {p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->c(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 182
    if-nez v0, :cond_6

    const-string v0, ""

    .line 183
    :goto_1
    iget-object v1, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_7

    const-string v1, ""

    .line 185
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a()V

    .line 189
    :cond_3
    invoke-direct {p0, p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->b(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->i:J

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->c:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    .line 200
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, LjA;

    invoke-direct {v0, p0, p1}, LjA;-><init>(Lcom/kavsdk/wifi/impl/WifiStatisticsManager;Landroid/content/Context;)V

    invoke-virtual {v0}, LjA;->start()V

    goto :goto_0

    .line 182
    :cond_6
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 193
    :cond_8
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_5

    :cond_9
    iget-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    .line 195
    invoke-direct {p0}, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->a()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->g:Landroid/net/wifi/WifiConfiguration;

    goto :goto_3
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 219
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 220
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kavsdk/wifi/impl/WifiStatisticsManager;->h:Z

    .line 222
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
