.class public final Lcom/kaspersky/components/webfilter/ProxySettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:Lcom/kaspersky/components/webfilter/ProxySettings;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/net/InetSocketAddress;

.field private f:Z

.field private g:Landroid/database/ContentObserver;

.field private h:Landroid/database/ContentObserver;

.field private i:Lcz;

.field private j:Lcx;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kaspersky/components/webfilter/ProxySettings;->a:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    .line 179
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->k:Z

    .line 181
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kaspersky/components/webfilter/ProxySettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 426
    if-nez v2, :cond_0

    move-object v0, v1

    .line 439
    :goto_0
    return-object v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 430
    if-nez v0, :cond_1

    move-object v0, v1

    .line 431
    goto :goto_0

    .line 434
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 435
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 439
    goto :goto_0
.end method

.method private a(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 362
    .line 363
    sget-object v1, Lcom/kaspersky/components/webfilter/ProxySettings;->a:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_5

    .line 366
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 369
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 371
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    :try_start_0
    const-string v0, "proxy"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    if-eqz v4, :cond_3

    .line 379
    new-instance v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    const-string v5, "port"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_1
    iget-boolean v4, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->k:Z

    if-eqz v4, :cond_1

    invoke-virtual {p2, v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 388
    const-string v4, "proxy"

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {p2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v4, "port"

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {p2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    sget-object v4, Lcom/kaspersky/components/webfilter/ProxySettings;->a:Landroid/net/Uri;

    invoke-virtual {p1, v4, v3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://telephony/carriers/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4, v3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 398
    :goto_3
    if-nez v0, :cond_2

    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->EMPTY:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    :cond_2
    return-object v0

    .line 382
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_3
.end method

.method public static synthetic a(Lcom/kaspersky/components/webfilter/ProxySettings;Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/kaspersky/components/webfilter/ProxySettings;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/content/Context;Z)Lcom/kaspersky/components/webfilter/ProxySettings;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/kaspersky/components/webfilter/ProxySettings;
    .locals 2

    .prologue
    .line 167
    const-class v1, Lcom/kaspersky/components/webfilter/ProxySettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-direct {v0, p0}, Lcom/kaspersky/components/webfilter/ProxySettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kaspersky/components/webfilter/ProxySettings;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-direct {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->g()V

    .line 172
    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings;->b:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-direct {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->f()V

    .line 174
    :cond_1
    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings;->b:Lcom/kaspersky/components/webfilter/ProxySettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 409
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 518
    invoke-direct {p0}, Lcom/kaspersky/components/webfilter/ProxySettings;->i()V

    .line 519
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 522
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 524
    :try_start_0
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string v3, "connect"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/net/wifi/WifiConfiguration;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$ActionListener"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 536
    :cond_0
    return-void

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kaspersky/components/webfilter/ProxySettings;Lcw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Lcw;)V

    return-void
.end method

.method private a(Lcw;)V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcx;

    invoke-direct {v0, p0, p1}, Lcx;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;Lcw;)V

    iput-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->j:Lcx;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->j:Lcx;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method private a(Lcw;Landroid/content/ContentResolver;)V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->h:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcy;

    invoke-direct {v0, p0}, Lcy;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V

    iput-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->h:Landroid/database/ContentObserver;

    .line 326
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/webfilter/ProxySettings;->c(Lcw;Landroid/content/ContentResolver;)V

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 331
    invoke-direct {p0, p1}, Lcom/kaspersky/components/webfilter/ProxySettings;->c(Lcw;)V

    .line 333
    :cond_1
    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 413
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcw;Landroid/net/wifi/WifiConfiguration;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 541
    const-class v0, Landroid/net/wifi/WifiConfiguration;

    const-string v3, "proxySettings"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 542
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 543
    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 545
    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 546
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    .line 548
    const-class v6, Landroid/net/wifi/WifiConfiguration;

    const-string v7, "linkProperties"

    invoke-direct {p0, v6, v7, p2}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 549
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mHttpProxy"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 550
    invoke-static {v7, v6}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 553
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 554
    invoke-virtual {v3, p2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v2

    .line 558
    :goto_1
    if-nez v0, :cond_2

    .line 559
    const/4 v0, 0x0

    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 560
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcw;->b(Ljava/lang/String;)Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->a()V

    move v2, v3

    .line 598
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 543
    goto :goto_0

    .line 565
    :cond_2
    if-nez v8, :cond_3

    .line 566
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 567
    new-array v3, v10, [Ljava/lang/Object;

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, ""

    aput-object v1, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 568
    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 569
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcw;->b(Ljava/lang/String;)Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->a()V

    goto :goto_2

    .line 576
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mHost"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 577
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPort"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 578
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 579
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 581
    invoke-static {v4, v8}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 582
    invoke-static {v5, v8}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 583
    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v6

    if-eq v1, v6, :cond_6

    .line 585
    :cond_4
    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {p3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v8, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 590
    :goto_3
    sget-object v3, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {v3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {v3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 592
    :cond_5
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3, v0, v1}, Lcw;->a(Ljava/lang/String;Ljava/lang/String;I)Lcw;

    move-result-object v3

    invoke-virtual {v3}, Lcw;->a()V

    .line 593
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->e:Ljava/net/InetSocketAddress;

    goto/16 :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    move v3, v1

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 443
    if-eqz p0, :cond_0

    .line 444
    const-string v0, "(^\")|(\"$)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 446
    :cond_0
    if-eqz p1, :cond_1

    .line 447
    const-string v0, "(^\")|(\"$)"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 449
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;
    .locals 4

    .prologue
    .line 635
    const/4 v1, 0x0

    .line 636
    iget-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->f:Z

    if-eqz v0, :cond_3

    .line 640
    :try_start_0
    const-string v0, "wifi_http_proxy"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 641
    if-eqz v2, :cond_2

    .line 643
    new-instance v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    const-string v3, "wifi_http_port"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    const-string v1, "wifi_http_proxy"

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {p2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 654
    const-string v1, "wifi_http_port"

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {p2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 658
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->EMPTY:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    :cond_1
    return-object v0

    .line 646
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static synthetic b(Lcom/kaspersky/components/webfilter/ProxySettings;Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/kaspersky/components/webfilter/ProxySettings;Lcw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kaspersky/components/webfilter/ProxySettings;->c(Lcw;)V

    return-void
.end method

.method private b(Lcw;)V
    .locals 7

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 228
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 234
    :try_start_0
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcw;->a(Ljava/lang/String;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v5

    invoke-direct {p0, p1, v1, v5}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Lcw;Landroid/net/wifi/WifiConfiguration;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 237
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    move-object v2, v1

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 249
    :cond_1
    if-eqz v2, :cond_2

    .line 250
    invoke-direct {p0, v0, v2}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 252
    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method private b(Lcw;Landroid/content/ContentResolver;)V
    .locals 4

    .prologue
    .line 339
    :try_start_0
    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    invoke-direct {p0, p2, v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Ljava/net/InetSocketAddress;

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->d:Ljava/net/InetSocketAddress;

    .line 344
    const-string v1, "apn"

    invoke-virtual {p1, v1, v0}, Lcw;->a(Ljava/lang/String;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Lcw;->a(Ljava/lang/String;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    new-instance v1, Ljava/net/InetSocketAddress;

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->d:Ljava/net/InetSocketAddress;

    .line 358
    :cond_1
    return-void

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 419
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kaspersky/components/webfilter/ProxySettings;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->k:Z

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized c(Lcw;)V
    .locals 6

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 476
    iget-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 477
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 478
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 482
    :try_start_1
    invoke-direct {p0}, Lcom/kaspersky/components/webfilter/ProxySettings;->h()V

    .line 484
    if-nez v2, :cond_1

    .line 485
    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    :goto_0
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    :try_start_3
    sget-object v3, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    invoke-direct {p0, p1, v2, v3}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Lcw;Landroid/net/wifi/WifiConfiguration;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Z

    move-result v3

    .line 493
    if-eqz v3, :cond_3

    .line 494
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 495
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Incorrect wifi network: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    invoke-static {v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    invoke-direct {p0, v0, v2}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 503
    invoke-direct {p0}, Lcom/kaspersky/components/webfilter/ProxySettings;->h()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 511
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->f:Z

    .line 508
    invoke-direct {p0}, Lcom/kaspersky/components/webfilter/ProxySettings;->i()V

    .line 509
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 511
    :try_start_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private c(Lcw;Landroid/content/ContentResolver;)V
    .locals 6

    .prologue
    .line 605
    :try_start_0
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\"wifi_http_proxy\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 608
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->f:Z

    .line 612
    sget-object v1, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    invoke-direct {p0, p2, v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v1

    .line 613
    invoke-virtual {v1}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    invoke-virtual {v1, v2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    const-string v2, "wifi_http_proxy"

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {v1}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {v1}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v1

    invoke-virtual {p1, v2, v3, v1}, Lcw;->a(Ljava/lang/String;Ljava/lang/String;I)Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->a()V

    .line 618
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    const-string v0, "wifi_http_proxy"

    invoke-virtual {p1, v0}, Lcw;->a(Ljava/lang/String;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 628
    new-instance v1, Ljava/net/InetSocketAddress;

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I
    invoke-static {v0}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->e:Ljava/net/InetSocketAddress;

    .line 631
    :cond_1
    return-void

    .line 620
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->k:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->g:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcv;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;B)V

    iput-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->g:Landroid/database/ContentObserver;

    .line 313
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/components/webfilter/ProxySettings;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    :cond_0
    new-instance v0, Lcw;

    invoke-direct {v0, p0}, Lcw;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V

    iget-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Lcw;Landroid/content/ContentResolver;)V

    .line 317
    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Lcw;

    invoke-direct {v0, p0}, Lcw;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V

    iget-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Lcw;Landroid/content/ContentResolver;)V

    .line 321
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->i:Lcz;

    if-nez v0, :cond_1

    .line 454
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 455
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 458
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 460
    :cond_0
    new-instance v1, Lcz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcz;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;B)V

    iput-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->i:Lcz;

    .line 461
    iget-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->i:Lcz;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->f:Z

    .line 464
    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->i:Lcz;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->i:Lcz;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->i:Lcz;

    .line 471
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    monitor-enter p0

    :try_start_0
    new-instance v3, Lcw;

    invoke-direct {v3, p0}, Lcw;-><init>(Lcom/kaspersky/components/webfilter/ProxySettings;)V

    .line 263
    iget-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->k:Z

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->g:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->g:Landroid/database/ContentObserver;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "apn"

    invoke-virtual {v3, v2}, Lcw;->a(Ljava/lang/String;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->h:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->h:Landroid/database/ContentObserver;

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_http_proxy"

    invoke-virtual {v3, v2}, Lcw;->a(Ljava/lang/String;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Landroid/content/ContentResolver;Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_4

    .line 278
    invoke-direct {p0}, Lcom/kaspersky/components/webfilter/ProxySettings;->i()V

    .line 280
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 281
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 283
    if-eqz p1, :cond_5

    .line 284
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    .line 286
    if-eqz v4, :cond_3

    .line 288
    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x5

    if-ge v1, v5, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    .line 290
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 292
    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0

    .line 295
    :cond_3
    :try_start_2
    invoke-direct {p0, v3}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Lcw;)V

    .line 296
    if-eqz v4, :cond_4

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 300
    :cond_5
    :try_start_3
    invoke-direct {p0, v3}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Lcw;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :cond_6
    :try_start_4
    invoke-direct {p0, v3}, Lcom/kaspersky/components/webfilter/ProxySettings;->b(Lcw;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->f:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->k:Z

    return v0
.end method

.method public final d()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 200
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->e:Ljava/net/InetSocketAddress;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings;->d:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Z)V

    .line 256
    return-void
.end method
