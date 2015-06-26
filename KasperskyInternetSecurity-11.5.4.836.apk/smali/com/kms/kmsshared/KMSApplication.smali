.class public Lcom/kms/kmsshared/KMSApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lap;
.implements Lau;
.implements Lu;


# static fields
.field public static b:Landroid/content/Context;

.field public static c:Lrq;

.field public static d:Lwz;

.field public static e:LwL;

.field private static p:Z

.field private static q:Landroid/net/ConnectivityManager;

.field private static x:Ljava/lang/Object;

.field private static z:LcW;


# instance fields
.field private A:LdT;

.field public a:LuV;

.field private volatile f:Lcom/kms/kmsdaemon/KMSDaemon;

.field private g:Llp;

.field private h:Lqj;

.field private final i:Ljava/lang/Object;

.field private volatile j:Z

.field private k:Lvm;

.field private l:Lqw;

.field private final m:Ljava/util/Set;

.field private n:LqS;

.field private o:LsQ;

.field private final r:LrW;

.field private final s:Lcom/kaspersky/components/ipm/IpmMessageManager;

.field private t:Lab;

.field private final u:Ljava/util/List;

.field private volatile v:Lwo;

.field private final w:Landroid/content/BroadcastReceiver;

.field private y:LvB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 673
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->x:Ljava/lang/Object;

    .line 1066
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->z:LcW;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->i:Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/util/Set;

    .line 155
    new-instance v0, LqS;

    invoke-direct {v0}, LqS;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->n:LqS;

    .line 156
    new-instance v0, LsQ;

    invoke-direct {v0}, LsQ;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    .line 161
    new-instance v0, LrX;

    new-instance v1, LqN;

    invoke-direct {v1, p0}, LqN;-><init>(Lcom/kms/kmsshared/KMSApplication;)V

    invoke-direct {v0, v1}, LrX;-><init>(LrT;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->r:LrW;

    .line 162
    new-instance v0, Lan;

    invoke-direct {v0, p0, p0}, Lan;-><init>(Lau;Lap;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->s:Lcom/kaspersky/components/ipm/IpmMessageManager;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/List;

    .line 177
    new-instance v0, LqC;

    invoke-direct {v0, p0}, LqC;-><init>(Lcom/kms/kmsshared/KMSApplication;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->w:Landroid/content/BroadcastReceiver;

    .line 800
    new-instance v0, LvB;

    invoke-direct {v0}, LvB;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    return-void
.end method

.method public static G()Lgo;
    .locals 2

    .prologue
    .line 1233
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1234
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lgo;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lgo;

    move-result-object v0

    return-object v0
.end method

.method public static H()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1246
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static I()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 212
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    .line 214
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v2

    const-string v3, "scanner_tmp"

    invoke-virtual {v2, v3, v6}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v3

    const-string v4, "monitor_tmp"

    invoke-virtual {v3, v4, v6}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v4

    const-string v5, "quarantine"

    invoke-virtual {v4, v5, v6}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lgz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v1

    .line 224
    const-class v2, Lsl;

    monitor-enter v2

    .line 225
    :try_start_0
    invoke-virtual {v1}, Lsl;->c()I

    move-result v3

    .line 226
    invoke-virtual {v1}, Lsl;->d()I

    move-result v4

    .line 227
    invoke-virtual {v1}, Lsl;->b()I

    move-result v1

    .line 228
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-interface {v0, v4}, Lgz;->a(I)I

    .line 231
    invoke-static {v1}, LmI;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Lgz;->b(I)I

    .line 232
    new-instance v1, LmH;

    invoke-direct {v1}, LmH;-><init>()V

    invoke-interface {v0, v1}, Lgz;->a(LgB;)LgB;

    .line 234
    const/4 v1, 0x2

    if-ne v3, v1, :cond_0

    .line 235
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgz;->a(Z)V

    .line 238
    :cond_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->Initialized:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 239
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private J()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x7

    const/4 v10, 0x2

    const/4 v7, 0x1

    .line 334
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v2

    .line 335
    invoke-virtual {v2, v11}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 336
    if-eq v6, v10, :cond_0

    .line 337
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 338
    invoke-virtual {v2, v7}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 339
    invoke-virtual {v2, v10}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 340
    if-ne v6, v7, :cond_2

    move v2, v7

    .line 341
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_1
    invoke-static/range {v0 .. v6}, Lcom/kms/kmsshared/KMSApplication;->a(JIJIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->R()I

    .line 346
    :cond_0
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v2

    .line 347
    invoke-virtual {v2, v11}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 348
    if-eq v6, v10, :cond_1

    .line 350
    invoke-virtual {v2, v8}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 351
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 352
    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 353
    if-ne v6, v7, :cond_4

    move v2, v7

    .line 354
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_3
    invoke-static/range {v0 .. v6}, Lcom/kms/kmsshared/KMSApplication;->a(JIJIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->a(Lru;)V

    .line 358
    :cond_1
    return-void

    :cond_2
    move v2, v8

    .line 340
    goto :goto_0

    :cond_3
    move v6, v9

    .line 341
    goto :goto_1

    :cond_4
    move v2, v8

    .line 353
    goto :goto_2

    :cond_5
    move v6, v9

    .line 354
    goto :goto_3
.end method

.method private static K()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 502
    invoke-static {}, Lsu;->c()Ljava/io/File;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 504
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v3

    .line 505
    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v4

    .line 507
    if-eqz v0, :cond_3

    .line 508
    invoke-virtual {v3}, Lsj;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    .line 509
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    move v1, v2

    .line 516
    :cond_0
    if-eqz v1, :cond_1

    .line 517
    const-class v1, Lsj;

    monitor-enter v1

    .line 518
    :try_start_0
    invoke-virtual {v3, v4}, Lsj;->d(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v3}, Lsj;->g_()V

    .line 520
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 508
    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private L()V
    .locals 3

    .prologue
    .line 534
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 535
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 537
    new-instance v1, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;

    invoke-direct {v1}, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;-><init>()V

    .line 538
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 540
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 541
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    return-void
.end method

.method private M()V
    .locals 0

    .prologue
    .line 553
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->O()V

    .line 554
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->N()V

    .line 555
    return-void
.end method

.method private static N()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 560
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 561
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 562
    :goto_0
    if-eqz v0, :cond_1

    .line 563
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v1}, Lrq;->a(I)V

    .line 568
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 561
    goto :goto_0

    .line 566
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v1}, Lrq;->b(I)V

    goto :goto_1
.end method

.method private static O()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 617
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 618
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 620
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v2}, Lrq;->a(I)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v2}, Lrq;->b(I)V

    goto :goto_0
.end method

.method private static P()Landroid/net/ConnectivityManager;
    .locals 3

    .prologue
    .line 675
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->q:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 676
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 677
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->q:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 679
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->q:Landroid/net/ConnectivityManager;

    .line 681
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->q:Landroid/net/ConnectivityManager;

    return-object v0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Q()Ljava/lang/Thread;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 699
    const-class v0, Lcom/kms/gui/KMSEnterCodeActivity;

    const v1, 0x7f07021f

    invoke-virtual {p0, v1}, Lcom/kms/kmsshared/KMSApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v3, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    .line 702
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0}, Lgz;->a()LgE;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusScanType;->Full:Lcom/kms/antivirus/AntivirusScanType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusScanType;->getScanFlag()I

    move-result v1

    const-string v2, "/"

    invoke-static {v0, v1, v2, v3}, Lmx;->a(LgE;ILjava/lang/String;Z)Ljava/lang/Thread;

    move-result-object v0

    .line 704
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 705
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v2

    .line 706
    const/4 v3, 0x7

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 707
    invoke-virtual {v2}, Lsf;->g_()V

    .line 709
    return-object v0
.end method

.method private R()I
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->b(Lru;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 824
    monitor-enter p0

    .line 825
    :try_start_0
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-virtual {v2}, LsQ;->a()LaC;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, LaC;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 826
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LvB;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 827
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LvB;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 834
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, LvB;->c(I)Z

    .line 838
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 839
    new-instance v2, LvF;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, p3, v3}, LvF;-><init>(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/kms/antivirus/AntivirusUpdateReason;Ljava/lang/String;)V

    .line 840
    iget-object v3, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5, v0}, LvB;->a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;

    move-result-object v2

    .line 841
    iget v0, v2, LvD;->a:I

    .line 842
    if-eq v0, v1, :cond_4

    if-nez p1, :cond_4

    .line 843
    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateReason;->Scheduled:Lcom/kms/antivirus/AntivirusUpdateReason;

    if-ne p3, v1, :cond_3

    .line 844
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v3, Lcom/kms/KisMainActivity;

    const/4 v4, 0x0

    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v6, 0x7f070220

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    .line 848
    :cond_3
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v1

    .line 849
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 850
    const/4 v4, 0x4

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lsy;->a(ILjava/lang/Object;)Lss;

    .line 851
    invoke-virtual {v1}, Lsy;->g_()V

    .line 853
    :cond_4
    if-eqz p2, :cond_0

    .line 854
    iget-object v1, v2, LvD;->b:Ljava/lang/Thread;

    invoke-interface {p2, v1}, Lru;->onThreadCreated(Ljava/lang/Thread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/kmsshared/KMSApplication;)LsQ;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1242
    invoke-static {p0}, Lcom/kms/kmsshared/KMSApplication;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1243
    return-void
.end method

.method private static a(JIJIZ)Z
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v1, 0x0

    .line 361
    .line 362
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return v1

    .line 367
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 369
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 370
    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 372
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 373
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 376
    if-nez p6, :cond_1

    .line 377
    const/4 v4, 0x7

    invoke-virtual {v3, v4, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 379
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 380
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 381
    invoke-virtual {v3, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 382
    invoke-virtual {v3, v6, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 383
    const/16 v0, 0xd

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 384
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    const/4 v0, 0x6

    neg-int v2, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 387
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 389
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 390
    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    const/4 v0, 0x1

    .line 392
    const-string v1, "KMS-missing"

    const-string v2, "result is true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 395
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 1238
    instance-of v0, p0, Lcom/kms/KisMainActivity;

    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/KisMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1251
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1252
    invoke-static {v0}, LnD;->a(Landroid/content/Intent;)V

    .line 1254
    :cond_0
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    return-object v0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 1046
    sput-boolean p0, Lcom/kms/kmsshared/KMSApplication;->p:Z

    .line 1047
    return-void
.end method

.method private static c(Z)V
    .locals 3

    .prologue
    .line 526
    const-string v0, "SIW-WATCH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Run simwatch. Block screen = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz p0, :cond_0

    .line 529
    invoke-static {}, LqO;->a()Z

    .line 531
    :cond_0
    invoke-static {}, Lmb;->a()Lmb;

    move-result-object v0

    invoke-virtual {v0}, Lmb;->c()V

    .line 532
    return-void
.end method

.method public static g()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 630
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v0

    .line 631
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lso;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 633
    if-eqz v0, :cond_0

    .line 635
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v2}, Lrq;->a(I)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v2}, Lrq;->b(I)V

    goto :goto_0
.end method

.method public static h()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 644
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v1

    .line 645
    invoke-virtual {v1, v4}, Lso;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v1, v3}, Lso;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 647
    add-int/lit8 v0, v0, 0x1

    .line 648
    if-le v0, v3, :cond_1

    .line 650
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 651
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 657
    :goto_0
    invoke-virtual {v1}, Lso;->g_()V

    .line 659
    :cond_0
    return-void

    .line 655
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    goto :goto_0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->P()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 689
    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 691
    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 694
    :cond_0
    return v0
.end method

.method public static p()V
    .locals 1

    .prologue
    .line 994
    invoke-static {}, Lmb;->a()Lmb;

    move-result-object v0

    invoke-virtual {v0}, Lmb;->b()V

    .line 995
    return-void
.end method

.method public static q()Z
    .locals 1

    .prologue
    .line 1041
    sget-boolean v0, Lcom/kms/kmsshared/KMSApplication;->p:Z

    return v0
.end method

.method public static s()LcW;
    .locals 1

    .prologue
    .line 1068
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->z:LcW;

    return-object v0
.end method

.method public static v()Lgz;
    .locals 1

    .prologue
    .line 1165
    invoke-static {}, LgA;->a()Lgz;

    move-result-object v0

    return-object v0
.end method

.method public static w()Lcom/kms/kmsshared/KMSApplication;
    .locals 1

    .prologue
    .line 1169
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    return-object v0
.end method


# virtual methods
.method public final A()Lwo;
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->v:Lwo;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->v:Lwo;

    .line 1209
    :goto_0
    return-object v0

    .line 1203
    :cond_0
    monitor-enter p0

    .line 1204
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->v:Lwo;

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->v:Lwo;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1207
    :cond_1
    :try_start_1
    new-instance v0, Lwo;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0}, Lwo;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->v:Lwo;

    .line 1208
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1209
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->v:Lwo;

    goto :goto_0
.end method

.method public final B()LaX;
    .locals 1

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->a()LaX;

    move-result-object v0

    return-object v0
.end method

.method public final C()LaV;
    .locals 1

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->b()LaV;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lbb;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->c()Lbb;

    move-result-object v0

    return-object v0
.end method

.method public final E()LaZ;
    .locals 1

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->d()LaZ;

    move-result-object v0

    return-object v0
.end method

.method public final F()LvB;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    return-object v0
.end method

.method public final declared-synchronized a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;)I
    .locals 1

    .prologue
    .line 819
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kms/kmsshared/KMSApplication;->a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(LdT;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/kms/kmsshared/KMSApplication;->A:LdT;

    .line 1074
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-virtual {v0}, LsQ;->a()LaC;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    invoke-virtual {v0, p1}, LuV;->a(Ljava/lang/String;)V

    .line 613
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 907
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LqE;

    invoke-direct {v1, p0, p1, p2}, LqE;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 917
    return-void
.end method

.method public final a(LqJ;)V
    .locals 2

    .prologue
    .line 890
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/util/Set;

    monitor-enter v1

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lru;)V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-virtual {v0}, LsQ;->a()LaC;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->Q()Ljava/lang/Thread;

    move-result-object v0

    .line 715
    if-eqz p1, :cond_0

    .line 716
    invoke-interface {p1, v0}, Lru;->onThreadCreated(Ljava/lang/Thread;)V

    .line 719
    :cond_0
    return-void
.end method

.method public final a(LuU;)V
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    invoke-static {p1}, LuV;->b(LuU;)V

    .line 1038
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 571
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    if-eqz p1, :cond_2

    .line 576
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v5}, Lrq;->b(I)V

    .line 577
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    invoke-static {v0}, LuV;->b(LuU;)V

    .line 580
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    invoke-virtual {v0}, Lvm;->a()V

    .line 581
    iput-object v6, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    goto :goto_0

    .line 586
    :cond_2
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lsm;->c()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v0}, Lsm;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 594
    new-instance v0, Lvm;

    invoke-direct {v0}, Lvm;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    .line 595
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    invoke-static {v0}, LuV;->a(LuU;)V

    .line 596
    invoke-virtual {p0, v6}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_3
    new-instance v0, Lvm;

    invoke-direct {v0}, Lvm;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    .line 601
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    invoke-static {v0}, LuV;->a(LuU;)V

    .line 602
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v5}, Lrq;->a(I)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1195
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/os/Handler;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 863
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    invoke-virtual {v0, v1}, LvB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    invoke-virtual {v0, v1}, LvB;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    invoke-virtual {v0, v1, p1}, LvB;->a(ILandroid/os/Handler;)Z

    move-result v0

    .line 868
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lru;)I
    .locals 2

    .prologue
    .line 815
    const/4 v0, 0x0

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateReason;->Scheduled:Lcom/kms/antivirus/AntivirusUpdateReason;

    invoke-virtual {p0, v0, p1, v1}, Lcom/kms/kmsshared/KMSApplication;->a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;)I

    move-result v0

    return v0
.end method

.method public final b()Lao;
    .locals 1

    .prologue
    .line 1183
    new-instance v0, LoT;

    invoke-direct {v0}, LoT;-><init>()V

    return-object v0
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 873
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    invoke-virtual {v0, v1}, LvB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    invoke-virtual {v0, v1, p1}, LvB;->b(ILandroid/os/Handler;)V

    .line 877
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0, p1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(Ljava/lang/String;)V

    .line 1055
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 922
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LqF;

    invoke-direct {v1, p0, p1, p2}, LqF;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 932
    return-void
.end method

.method public final c()Laq;
    .locals 1

    .prologue
    .line 1178
    new-instance v0, Lav;

    invoke-direct {v0, p0}, Lav;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 937
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LqG;

    invoke-direct {v1, p0, p1, p2}, LqG;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 946
    return-void
.end method

.method public final d()V
    .locals 13

    .prologue
    .line 242
    iget-object v12, p0, Lcom/kms/kmsshared/KMSApplication;->i:Ljava/lang/Object;

    monitor-enter v12

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v12

    .line 330
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    new-instance v1, LsE;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, LsE;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, LsE;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/kms/kmsshared/KMSApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lsy;->g_()V

    .line 255
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lsf;->g_()V

    .line 259
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->L()V

    .line 260
    invoke-static {}, Lsr;->h()Lsj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 263
    :try_start_1
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->I()V
    :try_end_1
    .catch Lcom/kavsdk/license/SdkLicenseViolationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v1

    invoke-interface {v1}, Lmk;->l()V

    .line 271
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-static {v1}, LnE;->a(LsQ;)V

    .line 273
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Lsj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lsz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-static {}, LnE;->b()V

    .line 279
    :cond_1
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    new-instance v0, LuV;

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LuV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    .line 282
    :cond_2
    new-instance v0, Llp;

    invoke-direct {v0}, Llp;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Llp;

    .line 283
    new-instance v0, Lqj;

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lqj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->h:Lqj;

    .line 284
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Llp;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->h:Lqj;

    invoke-virtual {v0, v1}, Llp;->a(Llw;)V

    .line 285
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lrq;->a(I)V

    .line 286
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lrq;->a(I)V

    .line 287
    new-instance v0, Lqw;

    invoke-direct {v0}, Lqw;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->l:Lqw;

    .line 289
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v1

    .line 290
    if-eqz v1, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->A()Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->f()V

    .line 295
    :cond_3
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lse;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    const/4 v0, 0x0

    .line 298
    if-eqz v1, :cond_4

    .line 299
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->C()LaV;

    move-result-object v0

    .line 301
    :cond_4
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->z:LcW;

    invoke-virtual {v2, v0}, LcW;->a(LaU;)V

    .line 302
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v2, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefStatusRefresh:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v2}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v2

    invoke-interface {v0, v2}, Lrx;->a(Lrw;)V

    .line 305
    :cond_5
    if-nez v1, :cond_6

    invoke-static {}, LjJ;->o()LvH;

    move-result-object v0

    invoke-virtual {v0}, LvH;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lrq;->a(I)V

    .line 308
    :cond_6
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->h()Z

    move-result v0

    if-nez v0, :cond_7

    .line 309
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lrq;->a(I)V

    .line 312
    :cond_7
    invoke-static {}, LH;->d()LG;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->y()Lcom/kaspersky/components/ipm/IpmMessageManager;

    move-result-object v2

    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/16 v4, 0xb

    const/16 v5, 0xc

    invoke-static {}, LjJ;->q()LM;

    move-result-object v7

    new-instance v8, LcQ;

    invoke-direct {v8}, LcQ;-><init>()V

    new-instance v9, Lnc;

    invoke-direct {v9}, Lnc;-><init>()V

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v10

    new-instance v11, LcO;

    invoke-direct {v11}, LcO;-><init>()V

    move-object v6, p0

    invoke-interface/range {v0 .. v11}, LG;->a(Landroid/content/Context;Lcom/kaspersky/components/ipm/IpmMessageManager;Lv;IILu;LM;LR;Lw;Law;LF;)V

    .line 316
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->M()V

    .line 317
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->g()V

    .line 318
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->J()V

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 321
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/kms/kmsshared/KMSApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 322
    if-nez v0, :cond_8

    .line 323
    const-string v0, "KMS"

    const-string v1, "KMSApplicaiton: can\'t bind KMSDaemon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_8
    new-instance v0, LoT;

    invoke-direct {v0}, LoT;-><init>()V

    invoke-virtual {v0}, LoT;->a()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->j:Z

    .line 330
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :try_start_3
    const-string v1, "KMS"

    const-string v2, "Unable to init antivirus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 951
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LqH;

    invoke-direct {v1, p0, p1, p2}, LqH;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 960
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 965
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LqI;

    invoke-direct {v1, p0, p1, p2}, LqI;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 975
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->j:Z

    return v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->M()V

    .line 549
    return-void
.end method

.method public final declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 978
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-virtual {v0}, LsQ;->a()LaC;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Lsm;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 983
    new-instance v0, Lvm;

    invoke-direct {v0}, Lvm;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    .line 984
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->k:Lvm;

    invoke-static {v0}, LuV;->a(LuU;)V

    .line 985
    invoke-virtual {p0, p2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 987
    :cond_2
    :try_start_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f070210

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 662
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/rateus/gui/KMSRateUsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->startActivity(Landroid/content/Intent;)V

    .line 666
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v0

    .line 667
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 668
    invoke-virtual {v0}, Lso;->g_()V

    .line 670
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v0

    invoke-virtual {v0}, LrF;->c()V

    .line 773
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/Utils;->a()V

    .line 775
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    .line 779
    :cond_1
    return-void
.end method

.method public final l()I
    .locals 3

    .prologue
    .line 803
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/kms/antivirus/AntivirusUpdateReason;->FirstUpdate:Lcom/kms/antivirus/AntivirusUpdateReason;

    invoke-virtual {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;)I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 3

    .prologue
    .line 807
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/kms/antivirus/AntivirusUpdateReason;->OnDemand:Lcom/kms/antivirus/AntivirusUpdateReason;

    invoke-virtual {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(ZLru;Lcom/kms/antivirus/AntivirusUpdateReason;)I

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LvB;->c(I)Z

    .line 881
    return-void
.end method

.method public final o()Lcom/kms/kmsdaemon/KMSDaemon;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 404
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 406
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 408
    new-instance v0, Lbw;

    new-instance v1, LqK;

    invoke-direct {v1}, LqK;-><init>()V

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbw;-><init>(Lbx;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 410
    new-instance v0, LsC;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, LsC;-><init>(Landroid/content/Context;)V

    .line 411
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {}, LsC;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, LsC;->a(Landroid/content/Context;)V

    .line 415
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSLog$Level;->ERROR:Lcom/kms/kmsshared/KMSLog$Level;

    invoke-static {v0}, Lcom/kms/kmsshared/KMSLog;->a(Lcom/kms/kmsshared/KMSLog$Level;)V

    .line 416
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting application thread id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->K()Z

    move-result v8

    .line 419
    new-instance v0, LsE;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, LsE;-><init>(Landroid/content/Context;)V

    .line 420
    invoke-virtual {v0, v8}, LsE;->a(Z)V

    .line 422
    sget-object v0, Lcom/kms/KisTheme;->Default:Lcom/kms/KisTheme;

    invoke-static {p0, v0}, LjJ;->a(Lcom/kms/kmsshared/KMSApplication;Lcom/kms/KisTheme;)V

    .line 425
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lrx;)V

    .line 427
    new-instance v0, LwL;

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, LwL;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->e:LwL;

    .line 429
    new-instance v0, LmD;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, LmD;-><init>(Lrx;)V

    .line 430
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-static {v0}, Lmx;->a(LmA;)V

    .line 433
    new-instance v0, LsP;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, LsP;-><init>(Lrx;)V

    .line 434
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-virtual {v1, v0}, LsQ;->a(Lax;)V

    .line 437
    sget-object v0, Lcom/kms/kmsshared/KMSLog$Level;->ERROR:Lcom/kms/kmsshared/KMSLog$Level;

    invoke-static {v0}, Lcom/kms/kmsshared/KMSLog;->a(Lcom/kms/kmsshared/KMSLog$Level;)V

    .line 438
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Application thread id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v8, :cond_1

    .line 441
    invoke-static {}, Lst;->a()V

    .line 442
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->j()V

    .line 444
    :cond_1
    new-instance v0, Lwz;

    invoke-direct {v0}, Lwz;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    .line 445
    invoke-static {p0}, Lcom/kaspersky/kts/antitheft/GpsStateNotifier;->a(Landroid/content/Context;)V

    .line 447
    new-instance v0, Lrq;

    new-instance v1, Lrt;

    invoke-direct {v1}, Lrt;-><init>()V

    invoke-direct {v0, p0, v1}, Lrq;-><init>(Landroid/content/Context;Lrp;)V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    .line 449
    new-instance v0, Lab;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    iget-object v3, p0, Lcom/kms/kmsshared/KMSApplication;->s:Lcom/kaspersky/components/ipm/IpmMessageManager;

    new-instance v4, LcM;

    invoke-direct {v4, p0}, LcM;-><init>(Landroid/content/Context;)V

    new-instance v5, Laf;

    invoke-direct {v5, p0}, Laf;-><init>(Landroid/content/Context;)V

    const/16 v6, 0xd

    new-instance v7, Li;

    invoke-direct {v7}, Li;-><init>()V

    invoke-direct/range {v0 .. v7}, Lab;-><init>(Law;Lv;Lcom/kaspersky/components/ipm/IpmMessageManager;LV;Lai;ILX;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lab;

    .line 453
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->y:LvB;

    invoke-virtual {v0, v1, p0, v2, v8}, LsQ;->a(Lv;Landroid/content/Context;LvB;Z)V

    .line 454
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-static {v0}, LoR;->a(LsQ;)V

    .line 455
    invoke-static {p0, v9}, LoR;->a(Landroid/content/Context;Z)Z

    .line 458
    invoke-static {p0}, LoR;->a(Landroid/content/Context;)Z

    .line 460
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    invoke-virtual {v0}, Lsj;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->c(Z)V

    .line 462
    invoke-static {}, Lcom/kms/kmsshared/Utils;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LqD;

    invoke-direct {v1, p0}, LqD;-><init>(Lcom/kms/kmsshared/KMSApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 471
    invoke-virtual {v0, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->r:LrW;

    const-class v1, LmZ;

    invoke-interface {v0, v1}, LrW;->a(Ljava/lang/Class;)Z

    .line 476
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->r:LrW;

    const-string v1, "CallBlocker"

    invoke-interface {v0, v1}, LrW;->b(Ljava/lang/String;)Z

    .line 478
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->s:Lcom/kaspersky/components/ipm/IpmMessageManager;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lab;

    invoke-interface {v0, v1}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(LN;)V

    .line 479
    new-instance v0, LcW;

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LcW;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->z:LcW;

    .line 481
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    invoke-static {v9}, Lk;->a(Z)V

    .line 483
    invoke-static {p0}, Lk;->a(Landroid/content/Context;)V

    .line 484
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm;->a(Ljava/lang/String;)V

    .line 491
    :goto_0
    return-void

    .line 486
    :cond_3
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v0

    .line 487
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 488
    const/4 v1, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 489
    invoke-virtual {v0}, Lso;->g_()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 724
    check-cast p2, Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    .line 725
    invoke-virtual {p2}, Lcom/kms/kmsdaemon/KMSDaemon$Binder;->a()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    .line 726
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v1

    invoke-virtual {v0, v1}, LuV;->a(LrF;)V

    .line 728
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->a:LuV;

    invoke-virtual {v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LrE;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->h:Lqj;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqj;->a(LrF;)V

    .line 731
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    new-instance v1, Lqp;

    invoke-direct {v1}, Lqp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LrE;)V

    .line 732
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->g:Llp;

    invoke-virtual {v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LrE;)V

    .line 733
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    invoke-virtual {v0}, Lsb;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-static {p0}, LkW;->a(Landroid/content/Context;)LrE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LrE;)V

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v0

    invoke-virtual {v0}, LrF;->b()V

    .line 737
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LqP;

    invoke-direct {v1, p0}, LqP;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 739
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    invoke-virtual {v0}, LsQ;->a()LaC;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    invoke-interface {v0}, LkM;->e()V

    .line 743
    :cond_2
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/util/Set;

    monitor-enter v1

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 746
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqJ;

    .line 749
    invoke-interface {v0}, LqJ;->b()Z

    .line 750
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    .line 785
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/util/Set;

    monitor-enter v1

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 788
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 797
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

.method public onTerminate()V
    .locals 0

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->k()V

    .line 762
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 763
    return-void
.end method

.method public final r()Llv;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Llp;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Llp;

    invoke-virtual {v0}, Llp;->b()Llv;

    move-result-object v0

    .line 1063
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()LdT;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->A:LdT;

    return-object v0
.end method

.method public final u()LsY;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:LsQ;

    return-object v0
.end method

.method public final x()LrW;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->r:LrW;

    return-object v0
.end method

.method public final y()Lcom/kaspersky/components/ipm/IpmMessageManager;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->s:Lcom/kaspersky/components/ipm/IpmMessageManager;

    return-object v0
.end method

.method public final z()Lab;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lab;

    return-object v0
.end method
