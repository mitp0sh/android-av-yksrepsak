.class final Lmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmu;


# direct methods
.method private constructor <init>(Lmu;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lmv;->a:Lmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmu;B)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lmv;-><init>(Lmu;)V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->m(Lmu;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->m(Lmu;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 369
    invoke-interface {v0}, LmA;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 381
    invoke-static {p1}, Lmv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v2, Lcom/kms/antivirus/gui/AvScanResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 384
    const-string v1, "SCAN_MODE"

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->a(Lmu;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->l(Lmu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "com_kms_scan_result_cancelled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    :cond_1
    return-void
.end method

.method private a(Lsf;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->j(Lmu;)I

    move-result v0

    invoke-virtual {p1, v0}, Lsf;->a(I)V

    .line 359
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->k(Lmu;)I

    move-result v0

    invoke-virtual {p1, v0}, Lsf;->b(I)V

    .line 360
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->l(Lmu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lsf;->b(J)V

    .line 363
    :cond_0
    invoke-virtual {p1}, Lsf;->g_()V

    .line 364
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->l(Lmu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lrq;->a(I)V

    .line 378
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 393
    invoke-static {p0}, Lbz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 397
    new-array v0, v3, [Ljava/io/Serializable;

    const/4 v1, 0x0

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->d(Lmu;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->j(Lmu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->k(Lmu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->n(Lmu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->o(Lmu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->p(Lmu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lmv;->a:Lmu;

    invoke-static {v2}, Lmu;->q(Lmu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 400
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 270
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0, v8}, Lmu;->a(Lmu;Z)Z

    .line 271
    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 272
    iget-object v0, p0, Lmv;->a:Lmu;

    const-string v2, "KMSWakeLock"

    invoke-static {v3, v2}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-static {v0, v2}, Lmu;->a(Lmu;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 273
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->a(Lmu;)I

    move-result v0

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Quick:Lcom/kms/antivirus/AntivirusScanType;

    invoke-virtual {v2}, Lcom/kms/antivirus/AntivirusScanType;->getScanFlag()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 274
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lmw;

    invoke-direct {v2, p0}, Lmw;-><init>(Lmv;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 295
    :cond_0
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v4

    .line 296
    const-class v2, Lsf;

    monitor-enter v2

    .line 297
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v4, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 298
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 299
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 302
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lsf;->a(I)V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lsf;->b(I)V

    .line 304
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-ne v5, v9, :cond_1

    .line 308
    const/16 v0, 0x2180

    .line 314
    :goto_0
    if-nez v7, :cond_7

    .line 315
    or-int/lit16 v0, v0, 0x800

    move v2, v0

    .line 318
    :goto_1
    if-eqz v6, :cond_2

    .line 319
    const/4 v0, 0x5

    .line 324
    :goto_2
    iget-object v5, p0, Lmv;->a:Lmu;

    invoke-static {v5}, Lmu;->a(Lmu;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 325
    iget-object v1, p0, Lmv;->a:Lmu;

    invoke-static {v1, v2, v0, v9}, Lmu;->a(Lmu;IIZ)V

    .line 344
    :goto_3
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v5, p0, Lmv;->a:Lmu;

    invoke-static {v5}, Lmu;->h(Lmu;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lmu;->a(Lmu;J)J

    .line 346
    invoke-direct {p0, v4}, Lmv;->a(Lsf;)V

    .line 347
    invoke-direct {p0}, Lmv;->a()V

    .line 348
    invoke-direct {p0}, Lmv;->b()V

    .line 349
    invoke-direct {p0, v3}, Lmv;->a(Landroid/content/Context;)V

    .line 351
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0}, Lmu;->i(Lmu;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v0}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 352
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0, v10}, Lmu;->a(Lmu;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 353
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0, v10}, Lmu;->a(Lmu;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lmv;->a:Lmu;

    invoke-static {v0, v8}, Lmu;->b(Lmu;Z)Z

    .line 355
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 311
    :cond_1
    const/16 v0, 0x2002

    goto :goto_0

    :cond_2
    move v0, v1

    .line 321
    goto :goto_2

    .line 326
    :cond_3
    iget-object v5, p0, Lmv;->a:Lmu;

    invoke-static {v5}, Lmu;->a(Lmu;)I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 327
    iget-object v1, p0, Lmv;->a:Lmu;

    invoke-static {v1, v2, v0, v8}, Lmu;->a(Lmu;IIZ)V

    .line 328
    iget-object v1, p0, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->b(Lmu;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 329
    new-instance v5, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lmv;->a:Lmu;

    iget-object v6, p0, Lmv;->a:Lmu;

    invoke-static {v6}, Lmu;->d(Lmu;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmu;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v6, v2, v0, v5}, Lmu;->a(Lmu;Ljava/lang/String;II[Ljava/lang/String;)V

    .line 341
    :goto_4
    invoke-direct {p0}, Lmv;->c()V

    goto :goto_3

    .line 333
    :cond_4
    iget-object v1, p0, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->g(Lmu;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 334
    iget-object v1, p0, Lmv;->a:Lmu;

    invoke-static {v1, v2, v0, v8}, Lmu;->a(Lmu;IIZ)V

    .line 336
    :cond_5
    iget-object v1, p0, Lmv;->a:Lmu;

    invoke-static {v1}, Lmu;->c(Lmu;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 337
    iget-object v1, p0, Lmv;->a:Lmu;

    iget-object v5, p0, Lmv;->a:Lmu;

    invoke-static {v5}, Lmu;->d(Lmu;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v5, v2, v0, v6}, Lmu;->a(Lmu;Ljava/lang/String;II[Ljava/lang/String;)V

    goto :goto_4

    .line 339
    :cond_6
    iget-object v1, p0, Lmv;->a:Lmu;

    iget-object v5, p0, Lmv;->a:Lmu;

    invoke-static {v5}, Lmu;->d(Lmu;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2, v0, v10}, Lmu;->a(Lmu;Ljava/lang/String;II[Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move v2, v0

    goto/16 :goto_1
.end method
