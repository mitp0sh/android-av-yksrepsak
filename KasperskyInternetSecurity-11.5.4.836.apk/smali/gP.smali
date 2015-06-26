.class public final LgP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgz;
.implements Lhg;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:LgP;


# instance fields
.field private final d:Ljava/lang/Object;

.field private volatile e:Z

.field private volatile f:Z

.field private g:Lid;

.field private h:Lhq;

.field private i:Lhh;

.field private j:LgU;

.field private k:Landroid/content/Context;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Lib;

.field private p:LgB;

.field private q:Ljava/lang/String;

.field private r:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LgP;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LgP;->d:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, LgP;->f:Z

    .line 85
    const/4 v0, 0x0

    iput v0, p0, LgP;->m:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, LgP;->n:I

    .line 105
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 613
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 614
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_1

    .line 617
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 618
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(LgP;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LgP;->k:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;LhC;)V
    .locals 2

    .prologue
    .line 454
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, LhC;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find libscan_kavd.so file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const-string v0, "stub"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 465
    :cond_1
    invoke-interface {p1}, LhC;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 468
    invoke-static {p0, p1}, LgP;->b(Landroid/content/Context;LhC;)V

    goto :goto_0
.end method

.method static synthetic a(LgP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, LgP;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 717
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    const/4 v0, 0x1

    .line 729
    :cond_0
    :goto_0
    return v0

    .line 720
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 721
    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    .line 722
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 723
    invoke-static {p0, v0}, LgP;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 724
    if-eqz v0, :cond_0

    .line 722
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 729
    :cond_2
    invoke-static {p0, p1}, LiN;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;LhC;)V
    .locals 4

    .prologue
    .line 473
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, LhC;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 475
    new-instance v2, Ljava/io/File;

    const-string v3, "libscan_kavd.so"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    invoke-static {v0, v2}, Lbr;->a(Ljava/io/File;Ljava/io/File;)V

    .line 480
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LhC;->a(Ljava/lang/String;)V

    .line 481
    invoke-interface {p1}, LhC;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Engine failed to start"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t file engine executable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(I)V
    .locals 3

    .prologue
    .line 534
    sparse-switch p0, :sswitch_data_0

    .line 540
    new-instance v0, Lcom/kavsdk/antivirus/QuarantineException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Quarantine operation failed: internal error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kavsdk/antivirus/QuarantineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 536
    :sswitch_1
    return-void

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, LgP;->k:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 630
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized f()Lgz;
    .locals 2

    .prologue
    .line 98
    const-class v1, LgP;

    monitor-enter v1

    :try_start_0
    sget-object v0, LgP;->c:LgP;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, LgP;

    invoke-direct {v0}, LgP;-><init>()V

    sput-object v0, LgP;->c:LgP;

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, LgP;->b:Z

    .line 102
    :cond_0
    sget-object v0, LgP;->c:LgP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 492
    sget-object v1, LgP;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, LgP;->b:Z

    .line 499
    sget-object v0, LgP;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 500
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, LgP;->i:Lhh;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0}, Lhh;->d()V

    .line 299
    iput-object v1, p0, LgP;->i:Lhh;

    .line 301
    :cond_0
    iget-object v0, p0, LgP;->h:Lhq;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, LgP;->h:Lhq;

    invoke-virtual {v0}, Lhq;->a()V

    .line 303
    iput-object v1, p0, LgP;->h:Lhq;

    .line 305
    :cond_1
    iget-object v0, p0, LgP;->j:LgU;

    if-eqz v0, :cond_2

    .line 307
    :try_start_0
    iget-object v0, p0, LgP;->j:LgU;

    invoke-virtual {v0}, LgU;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    iput-object v1, p0, LgP;->j:LgU;

    .line 313
    :cond_2
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static j()V
    .locals 2

    .prologue
    .line 505
    sget-object v1, LgP;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :goto_0
    :try_start_0
    sget-boolean v0, LgP;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 508
    :try_start_1
    sget-object v0, LgP;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 518
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    sput-boolean v0, LgP;->b:Z

    .line 519
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 527
    invoke-direct {p0}, LgP;->l()V

    .line 528
    iget-object v0, p0, LgP;->i:Lhh;

    if-eqz v0, :cond_0

    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0}, Lhh;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Quarantine is not inited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 733
    iget-boolean v0, p0, LgP;->e:Z

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Antivirus is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, LgP;->l()V

    .line 149
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    iget-object v1, p0, LgP;->j:LgU;

    monitor-enter v1

    .line 160
    :try_start_0
    iget v0, p0, LgP;->m:I

    .line 161
    iget-object v2, p0, LgP;->j:LgU;

    invoke-virtual {v2, p1}, LgU;->a(I)V

    .line 162
    iput p1, p0, LgP;->m:I

    .line 163
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal monitor scan mode value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(LgB;)LgB;
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, LgP;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, LgP;->p:LgB;

    .line 118
    iput-object p1, p0, LgP;->p:LgB;

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()LgE;
    .locals 7

    .prologue
    .line 240
    invoke-direct {p0}, LgP;->l()V

    .line 241
    new-instance v0, Lcom/kavsdk/antivirus/impl/ScannerImpl;

    iget-object v1, p0, LgP;->k:Landroid/content/Context;

    iget-object v2, p0, LgP;->g:Lid;

    iget-object v3, p0, LgP;->q:Ljava/lang/String;

    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LgP;->o:Lib;

    iget-object v6, p0, LgP;->r:[Landroid/content/pm/Signature;

    invoke-direct/range {v0 .. v6}, Lcom/kavsdk/antivirus/impl/ScannerImpl;-><init>(Landroid/content/Context;Lid;Ljava/lang/String;Ljava/lang/String;LhC;[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public final a(II)Ljava/util/List;
    .locals 4

    .prologue
    .line 582
    invoke-direct {p0}, LgP;->k()V

    .line 584
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0}, Lhh;->c()J

    move-result-wide v0

    .line 586
    if-ltz p1, :cond_0

    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    if-ltz p2, :cond_0

    int-to-long v2, p2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 591
    :cond_1
    if-le p1, p2, :cond_2

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start > end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_2
    new-instance v0, Lhi;

    invoke-direct {v0}, Lhi;-><init>()V

    .line 596
    iget-object v1, p0, LgP;->i:Lhh;

    invoke-virtual {v1, v0, p1, p2}, Lhh;->a(LhH;II)V

    .line 597
    invoke-virtual {v0}, Lhi;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LgP;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 450
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LgP;->k:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, LgP;->r:[Landroid/content/pm/Signature;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    :try_start_3
    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Lib;

    invoke-direct {v1, p1}, Lib;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LgP;->o:Lib;

    .line 348
    sget-boolean v1, LgP;->b:Z

    if-nez v1, :cond_2

    .line 349
    invoke-static {}, Lcom/kavsdk/shared/SdkUtils;->killParasiteProcesses()I

    .line 360
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 362
    :try_start_4
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->c()Lcom/kms/ksn/locator/SystemSettings;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lcom/kms/ksn/locator/SystemSettings;->getInitPipePath()Ljava/lang/String;

    move-result-object v1

    .line 365
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    new-instance v3, Lcom/kavsdk/pipes/Pipe;

    invoke-direct {v3, v1}, Lcom/kavsdk/pipes/Pipe;-><init>(Ljava/lang/String;)V

    .line 367
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LgQ;

    invoke-direct {v3, p0, v2}, LgQ;-><init>(LgP;Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 400
    :cond_1
    :try_start_5
    iget-object v1, p0, LgP;->o:Lib;

    invoke-static {p1, v1}, LgP;->a(Landroid/content/Context;LhC;)V

    .line 406
    invoke-static {}, LgP;->j()V

    .line 414
    :cond_2
    invoke-direct {p0}, LgP;->i()V

    .line 416
    new-instance v1, Lih;

    invoke-direct {v1}, Lih;-><init>()V

    iput-object v1, p0, LgP;->g:Lid;

    .line 417
    iput-object p2, p0, LgP;->q:Ljava/lang/String;

    .line 419
    iget-object v1, p0, LgP;->g:Lid;

    iget-object v2, p0, LgP;->o:Lib;

    invoke-static {v1, v2}, Lhq;->a(Lid;LhC;)Lhq;

    move-result-object v1

    iput-object v1, p0, LgP;->h:Lhq;

    .line 421
    iget-object v1, p0, LgP;->g:Lid;

    iget-object v2, p0, LgP;->o:Lib;

    invoke-static {v1, v0, v2}, Lhb;->a(Lid;Ljava/lang/String;LhC;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 422
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load bases from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Bases are absent or corrupted."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    :try_start_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t retrive PackageInfo for current application"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 391
    :catch_1
    move-exception v0

    .line 392
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create a pipe needed for the init process"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 425
    :cond_3
    iget-object v0, p0, LgP;->g:Lid;

    iget-object v1, p0, LgP;->o:Lib;

    invoke-static {v0, p4, v1}, Lhh;->a(Lid;Ljava/lang/String;LhC;)Lhh;

    move-result-object v0

    iput-object v0, p0, LgP;->i:Lhh;

    .line 426
    iget-object v0, p0, LgP;->i:Lhh;

    if-eqz v0, :cond_4

    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0}, Lhh;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0}, Lhh;->c()J

    .line 431
    :cond_4
    new-instance v7, Lhf;

    invoke-direct {v7}, Lhf;-><init>()V

    .line 432
    invoke-virtual {v7, p0}, Lhf;->a(Lhg;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 434
    :try_start_7
    new-instance v0, LgU;

    iget v1, p0, LgP;->m:I

    iget v2, p0, LgP;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v6, p0, LgP;->o:Lib;

    move-object v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, LgU;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;LhC;LhH;)V

    iput-object v0, p0, LgP;->j:LgU;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 445
    :try_start_8
    iget-object v0, p0, LgP;->i:Lhh;

    if-eqz v0, :cond_5

    iget-object v0, p0, LgP;->h:Lhq;

    if-eqz v0, :cond_5

    iget-object v0, p0, LgP;->j:LgU;

    if-nez v0, :cond_6

    .line 446
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal antivirus internal state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :catch_2
    move-exception v0

    .line 442
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to init file monitor."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 449
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, LgP;->e:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, LgP;->k()V

    .line 553
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0, p1}, Lhh;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, LgP;->c(I)V

    .line 554
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, LgP;->k()V

    .line 547
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0, p1, p2}, Lhh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, LgP;->c(I)V

    .line 548
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 225
    invoke-direct {p0}, LgP;->l()V

    .line 227
    iget-object v1, p0, LgP;->j:LgU;

    monitor-enter v1

    .line 228
    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    iget-object v0, p0, LgP;->j:LgU;

    iget v2, p0, LgP;->n:I

    invoke-virtual {v0, v2}, LgU;->b(I)V

    .line 230
    iget-object v0, p0, LgP;->j:LgU;

    iget v2, p0, LgP;->m:I

    invoke-virtual {v0, v2}, LgU;->a(I)V

    .line 231
    iget-object v0, p0, LgP;->j:LgU;

    invoke-virtual {v0}, LgU;->a()V

    .line 235
    :goto_0
    iput-boolean p1, p0, LgP;->l:Z

    .line 236
    monitor-exit v1

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, LgP;->j:LgU;

    invoke-virtual {v0}, LgU;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(LgH;)Z
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, LgP;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, LgP;->p:LgB;

    .line 277
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-interface {p1}, LgH;->a()Ljava/lang/String;

    move-result-object v1

    .line 280
    if-eqz v0, :cond_0

    .line 290
    invoke-static {v1}, Lhp;->a(Ljava/lang/String;)Lcom/kavsdk/antivirus/ThreatType;

    move-result-object v1

    .line 291
    invoke-interface {v0, p1, v1}, LgB;->a(LgH;Lcom/kavsdk/antivirus/ThreatType;)V

    .line 293
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(LgH;Landroid/app/Activity;)Z
    .locals 6

    .prologue
    .line 637
    invoke-interface {p1}, LgH;->e()Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-object v1, p0, LgP;->k:Landroid/content/Context;

    invoke-static {v1, v0}, LgP;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 640
    if-nez v1, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 678
    :goto_0
    return v0

    .line 644
    :cond_0
    invoke-direct {p0, v0}, LgP;->e(Ljava/lang/String;)V

    .line 646
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 647
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.DeviceAdminAdd"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 648
    const-string v3, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p2, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 653
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LgR;

    invoke-direct {v3, p0, v0, v2}, LgR;-><init>(LgP;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 678
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)I
    .locals 3

    .prologue
    .line 180
    invoke-direct {p0}, LgP;->l()V

    .line 182
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 186
    :cond_0
    iget-object v1, p0, LgP;->j:LgU;

    monitor-enter v1

    .line 187
    :try_start_0
    iget v0, p0, LgP;->n:I

    .line 188
    iget-object v2, p0, LgP;->j:LgU;

    invoke-virtual {v2, p1}, LgU;->b(I)V

    .line 189
    iput p1, p0, LgP;->n:I

    .line 190
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal monitor clean mode value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, LgP;->k()V

    .line 560
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0, p1}, Lhh;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, LgP;->c(I)V

    .line 561
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, LgP;->l()V

    .line 202
    iget-object v1, p0, LgP;->j:LgU;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-boolean v0, p0, LgP;->l:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()LgI;
    .locals 6

    .prologue
    .line 246
    invoke-direct {p0}, LgP;->l()V

    .line 248
    invoke-static {}, Lhb;->a()Lhb;

    move-result-object v0

    invoke-virtual {v0}, Lhb;->d()Lhc;

    move-result-object v0

    .line 249
    new-instance v1, LgI;

    invoke-direct {v1}, LgI;-><init>()V

    .line 251
    invoke-virtual {v0}, Lhc;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 253
    invoke-virtual {v0}, Lhc;->a()J

    move-result-wide v3

    .line 254
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 255
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, LgI;->b:I

    .line 256
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, LgI;->c:I

    .line 257
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, LgI;->d:I

    .line 258
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, LgI;->e:I

    .line 259
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, LgI;->f:I

    .line 260
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, LgI;->a:I

    .line 261
    invoke-virtual {v0}, Lhc;->c()I

    move-result v2

    iput v2, v1, LgI;->g:I

    .line 262
    invoke-virtual {v0}, Lhc;->d()J

    move-result-wide v2

    iput-wide v2, v1, LgI;->h:J

    .line 263
    invoke-virtual {v0}, Lhc;->e()J

    move-result-wide v2

    iput-wide v2, v1, LgI;->i:J

    .line 266
    :cond_0
    return-object v1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 682
    invoke-direct {p0}, LgP;->l()V

    .line 684
    invoke-static {p1}, LbC;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    :goto_0
    return v0

    .line 688
    :cond_0
    iget-object v1, p0, LgP;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 690
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 699
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 700
    iget-object v1, p0, LgP;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 701
    const/4 v0, 0x1

    goto :goto_0

    .line 692
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 565
    invoke-direct {p0}, LgP;->k()V

    .line 567
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0}, Lhh;->a()V

    .line 568
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 705
    invoke-direct {p0}, LgP;->l()V

    .line 707
    invoke-static {p1}, LbC;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 v0, 0x0

    .line 712
    :goto_0
    return v0

    .line 711
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, LgP;->k:Landroid/content/Context;

    invoke-static {v1, v0}, LgP;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e()J
    .locals 4

    .prologue
    .line 572
    invoke-direct {p0}, LgP;->k()V

    .line 573
    iget-object v0, p0, LgP;->i:Lhh;

    invoke-virtual {v0}, Lhh;->c()J

    move-result-wide v0

    .line 574
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 575
    long-to-int v2, v0

    invoke-static {v2}, LgP;->c(I)V

    .line 577
    :cond_0
    return-wide v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, LgP;->f:Z

    return v0
.end method
