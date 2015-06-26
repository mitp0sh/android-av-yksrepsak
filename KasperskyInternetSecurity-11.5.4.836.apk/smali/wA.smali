.class final LwA;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:LwB;

.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Z

.field private synthetic d:Lwz;


# direct methods
.method public constructor <init>(Lwz;Z)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, LwA;->d:Lwz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 310
    iput-boolean p2, p0, LwA;->c:Z

    .line 311
    invoke-direct {p0}, LwA;->a()V

    .line 312
    invoke-virtual {p0}, LwA;->start()V

    .line 313
    return-void
.end method

.method private a(Ljava/lang/String;)LwB;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 477
    new-instance v2, LwB;

    invoke-direct {v2, p0, v1}, LwB;-><init>(LwA;B)V

    .line 479
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 480
    if-eqz v4, :cond_0

    array-length v0, v4

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    :cond_0
    move-object v0, v3

    .line 511
    :goto_0
    return-object v0

    .line 485
    :cond_1
    aget-object v0, v4, v1

    const-string v5, "-"

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 486
    if-eqz v5, :cond_2

    array-length v0, v5

    if-ge v0, v9, :cond_3

    :cond_2
    move-object v0, v3

    .line 488
    goto :goto_0

    .line 490
    :cond_3
    aget-object v0, v5, v10

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 491
    if-eqz v6, :cond_4

    array-length v0, v6

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v3

    .line 493
    goto :goto_0

    :cond_5
    move v0, v1

    .line 496
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_6

    .line 498
    aget-object v7, v6, v0

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 501
    :cond_6
    aget-object v0, v4, v9

    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_7

    array-length v7, v0

    if-nez v7, :cond_8

    :cond_7
    move-object v0, v3

    .line 504
    goto :goto_0

    .line 507
    :cond_8
    aget-object v1, v5, v1

    iput-object v1, v2, LwB;->a:Ljava/lang/String;

    .line 508
    iput-object v6, v2, LwB;->b:[Ljava/lang/String;

    .line 509
    aget-object v1, v4, v10

    iput-object v1, v2, LwB;->d:Ljava/lang/String;

    .line 510
    iput-object v0, v2, LwB;->c:[Ljava/lang/String;

    move-object v0, v2

    .line 511
    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 320
    const/4 v1, 0x1

    const-string v2, "KMSUpdaterWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, LwA;->b:Landroid/os/PowerManager$WakeLock;

    .line 321
    iget-object v0, p0, LwA;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lt;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v7}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    iget-object v3, p0, LwA;->d:Lwz;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v6, ""

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/kms.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lwz;->b(Lwz;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    if-eqz v0, :cond_0

    iget-object v3, p0, LwA;->d:Lwz;

    invoke-static {v3}, Lwz;->b(Lwz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v2

    .line 429
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, LwA;->d:Lwz;

    invoke-static {v4}, Lwz;->f(Lwz;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 434
    :cond_1
    if-eqz v0, :cond_6

    .line 436
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, LwA;->a:LwB;

    iget-object v1, v1, LwB;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    invoke-static {v0}, Lby;->a(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_2

    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->e(Lwz;)Lt;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lby;->b(Ljava/io/InputStream;Ljava/io/File;Lt;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 449
    :cond_2
    if-eqz p1, :cond_3

    .line 451
    invoke-interface {p1, v2}, Lt;->a(Z)V

    .line 466
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 428
    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 455
    :cond_5
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 456
    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->b(Lwz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lsy;->a(ILjava/lang/Object;)Lss;

    .line 457
    invoke-virtual {v0}, Lsy;->g_()V

    goto :goto_1

    .line 461
    :cond_6
    if-eqz p1, :cond_3

    .line 463
    invoke-interface {p1, v1}, Lt;->a(Z)V

    goto :goto_1
.end method

.method private a(LwB;)Z
    .locals 2

    .prologue
    .line 602
    iget-object v0, p1, LwB;->a:Ljava/lang/String;

    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->h(Lwz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, LwB;->b:[Ljava/lang/String;

    invoke-direct {p0, v0}, LwA;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x1

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 609
    if-eqz p1, :cond_0

    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->i(Lwz;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->i(Lwz;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    array-length v1, p1

    iget-object v2, p0, LwA;->d:Lwz;

    invoke-static {v2}, Lwz;->i(Lwz;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->i(Lwz;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 613
    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 614
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 618
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LwA;->b:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 341
    :goto_0
    monitor-exit p0

    return-void

    .line 334
    :cond_0
    :try_start_1
    iget-object v0, p0, LwA;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, LwA;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, LwA;->b:Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 339
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 399
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v2, "updater.path"

    invoke-interface {v1, v2}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 401
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 403
    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 404
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 405
    invoke-virtual {v1, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    .line 407
    const-string v0, "http.target_host"

    invoke-interface {v2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 409
    const-string v1, "http.request"

    invoke-interface {v2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 411
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 415
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 419
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 516
    .line 517
    :try_start_0
    iget-object v1, p0, LwA;->d:Lwz;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, LwA;->d:Lwz;

    invoke-static {v3}, Lwz;->a(Lwz;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lwz;->a(Lwz;Ljava/net/URL;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->g(Lwz;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lby;->a(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    .line 547
    if-nez v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 551
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 557
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 561
    invoke-direct {p0, v1}, LwA;->a(Ljava/lang/String;)LwB;

    move-result-object v3

    .line 562
    if-eqz v3, :cond_3

    .line 564
    invoke-direct {p0, v3}, LwA;->a(LwB;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 568
    iput-object v3, p0, LwA;->a:LwB;

    .line 569
    iget-object v1, p0, LwA;->d:Lwz;

    iget-object v3, p0, LwA;->a:LwB;

    iget-object v3, v3, LwB;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lwz;->c(Lwz;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    :goto_1
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 586
    iget-object v1, p0, LwA;->d:Lwz;

    invoke-static {v1}, Lwz;->b(Lwz;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LwA;->d:Lwz;

    invoke-static {v2}, Lwz;->b(Lwz;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, LwA;->c:Z

    invoke-static {v1, v2, v3}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    const/4 v0, 0x1

    goto :goto_0

    .line 577
    :cond_3
    if-nez v1, :cond_2

    goto :goto_1

    .line 580
    :catch_0
    move-exception v1

    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    .line 543
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final finalize()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, LwA;->b()V

    .line 393
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v1, "updater.path_redirect"

    invoke-interface {v0, v1}, Ll;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {}, LwA;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwz;->a(Lwz;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    :goto_0
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {v0}, Lwz;->a(Lwz;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, LwA;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {}, Lwz;->e()I

    move-result v1

    invoke-static {v0, v1}, Lwz;->a(Lwz;I)I

    .line 364
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/updater/gui/AppUpdaterEventType;->UpdateRequired:Lcom/kms/updater/gui/AppUpdaterEventType;

    iget-object v2, p0, LwA;->d:Lwz;

    invoke-static {v2}, Lwz;->b(Lwz;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/updater/gui/AppUpdaterEventType;->newEvent(Ljava/lang/String;)LwC;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 365
    iget-object v0, p0, LwA;->d:Lwz;

    iget-boolean v1, p0, LwA;->c:Z

    invoke-virtual {v0, v1}, Lwz;->a(Z)V

    .line 366
    invoke-direct {p0}, LwA;->b()V

    .line 367
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {v0}, Lwz;->c(Lwz;)LwA;

    move-result-object v1

    monitor-enter v1

    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-direct {p0}, LwA;->a()V

    .line 376
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {v0}, Lwz;->d(Lwz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {v0}, Lwz;->e(Lwz;)Lt;

    move-result-object v0

    invoke-direct {p0, v0}, LwA;->a(Lt;)V

    .line 379
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {v0, v3}, Lwz;->a(Lwz;Z)Z

    .line 383
    :cond_0
    invoke-direct {p0}, LwA;->b()V

    .line 384
    iget-object v1, p0, LwA;->d:Lwz;

    monitor-enter v1

    .line 386
    :try_start_2
    iget-object v0, p0, LwA;->d:Lwz;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lwz;->b(Lwz;Z)Z

    .line 387
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 353
    :cond_1
    iget-object v0, p0, LwA;->d:Lwz;

    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v2, "updater.path"

    invoke-interface {v1, v2}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwz;->a(Lwz;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 387
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
