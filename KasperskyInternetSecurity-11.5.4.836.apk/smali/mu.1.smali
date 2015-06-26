.class public final Lmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LgF;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private final C:Ljava/util/Vector;

.field private D:LgE;

.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:Landroid/os/PowerManager$WakeLock;

.field private i:Z

.field private j:Z

.field private k:Landroid/content/pm/ApplicationInfo;

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:J

.field private x:I

.field private y:Ljava/util/Set;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmu;->y:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmu;->C:Ljava/util/Vector;

    .line 264
    return-void
.end method

.method static synthetic a(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->a:I

    return v0
.end method

.method static synthetic a(Lmu;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lmu;->m:I

    return p1
.end method

.method static synthetic a(Lmu;J)J
    .locals 0

    .prologue
    .line 47
    iput-wide p1, p0, Lmu;->f:J

    return-wide p1
.end method

.method static synthetic a(Lmu;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lmu;->h:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic a(Lmu;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lmu;->B:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lmu;->C:Ljava/util/Vector;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 477
    invoke-interface {v0, p1}, LmA;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 479
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

.method private a(IIZ)V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    iput-boolean v5, p0, Lmu;->j:Z

    .line 406
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_6

    .line 409
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 410
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 412
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    :cond_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v3, "/system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 418
    :cond_3
    if-eqz p3, :cond_4

    .line 419
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lmu;->m:I

    .line 420
    iget v0, p0, Lmu;->m:I

    invoke-direct {p0, v0}, Lmu;->a(I)V

    .line 422
    :cond_4
    invoke-direct {p0, v1, p2}, Lmu;->a(Ljava/util/List;I)V

    .line 430
    :goto_1
    if-eqz p3, :cond_5

    .line 432
    new-array v0, v6, [Ljava/io/Serializable;

    iget-object v1, p0, Lmu;->b:Ljava/lang/String;

    aput-object v1, v0, v4

    iget v1, p0, Lmu;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    iget v2, p0, Lmu;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lmu;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lmu;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lmu;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lmu;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v6, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 436
    :cond_5
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 437
    const/16 v1, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 438
    invoke-virtual {v0}, Lsf;->g_()V

    .line 439
    invoke-static {}, LnE;->d()V

    .line 441
    iput-boolean v4, p0, Lmu;->j:Z

    .line 442
    return-void

    .line 424
    :cond_6
    if-eqz p3, :cond_7

    .line 425
    iput v4, p0, Lmu;->m:I

    .line 426
    iget v0, p0, Lmu;->m:I

    invoke-direct {p0, v0}, Lmu;->a(I)V

    .line 428
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lmu;->a(Ljava/util/List;I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 465
    const-string v0, "AvScanDispatcher"

    const-string v1, "scanObject(%s, %d, %d, %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lmu;->D:LgE;

    invoke-interface {v0, p1}, LgE;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lmu;->D:LgE;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, LgE;->a(Ljava/lang/String;IILgF;[Ljava/lang/String;Z)V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lmu;->D:LgE;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p0

    invoke-interface/range {v1 .. v6}, LgE;->a(Ljava/lang/String;IILgF;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 620
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 621
    invoke-virtual {v0, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 623
    if-nez v0, :cond_1

    .line 625
    iput v1, p0, Lmu;->x:I

    .line 652
    :cond_0
    :goto_0
    iget v0, p0, Lmu;->x:I

    packed-switch v0, :pswitch_data_0

    .line 671
    :goto_1
    return-void

    .line 627
    :cond_1
    if-ne v0, v1, :cond_2

    .line 629
    iput v4, p0, Lmu;->x:I

    goto :goto_0

    .line 631
    :cond_2
    if-ne v0, v2, :cond_3

    .line 633
    iput v2, p0, Lmu;->x:I

    goto :goto_0

    .line 635
    :cond_3
    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lmu;->A:Z

    if-nez v0, :cond_0

    .line 637
    iput v4, p0, Lmu;->x:I

    .line 638
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 639
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v3, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 641
    const-string v2, "com.kms.useraction.info"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v2, "com.kms.useraction.file"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v2, "com.kms.useraction.type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 644
    const-string v2, "com.kms.useraction.mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v2, "com.kms.useraction.launchedfrom"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 647
    invoke-direct {p0}, Lmu;->k()V

    .line 648
    invoke-direct {p0}, Lmu;->n()V

    goto :goto_0

    .line 656
    :pswitch_0
    :try_start_0
    invoke-static {p3, p2, p1}, Lmp;->a(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget v0, p0, Lmu;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->q:I
    :try_end_0
    .catch Lcom/kavsdk/antivirus/QuarantineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 659
    :catch_0
    move-exception v0

    const-string v0, "AvScanDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AvScanDispatcher: cannot push to quarantine "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 663
    :pswitch_1
    invoke-static {p3, p2, v4}, Lmp;->a(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Z)V

    .line 664
    iget v0, p0, Lmu;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->o:I

    goto :goto_1

    .line 667
    :pswitch_2
    iget v0, p0, Lmu;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->p:I

    .line 668
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/List;I)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 445
    if-eqz p1, :cond_2

    .line 446
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 447
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 451
    iput-object v0, p0, Lmu;->k:Landroid/content/pm/ApplicationInfo;

    .line 452
    iget-object v0, p0, Lmu;->D:LgE;

    iget-object v1, p0, Lmu;->k:Landroid/content/pm/ApplicationInfo;

    move v2, p2

    move-object v3, p0

    move v6, v5

    invoke-interface/range {v0 .. v8}, LgE;->a(Landroid/content/pm/ApplicationInfo;ILgF;LgG;ZZZZ)V

    .line 453
    iget v0, p0, Lmu;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->s:I

    .line 454
    iget-boolean v0, p0, Lmu;->e:Z

    if-eqz v0, :cond_0

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 459
    :cond_2
    sget-object v0, Lcom/kavsdk/antivirus/ThreatType;->None:Lcom/kavsdk/antivirus/ThreatType;

    invoke-virtual {p0, v7, v7, v4, v0}, Lmu;->a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I

    goto :goto_0
.end method

.method static synthetic a(Lmu;IIZ)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lmu;->a(IIZ)V

    return-void
.end method

.method static synthetic a(Lmu;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lmu;->a(Ljava/lang/String;II[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lmu;Z)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmu;->j:Z

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lmu;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmu;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lmu;->o()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V
    .locals 5

    .prologue
    .line 678
    invoke-static {p2}, Lcom/kms/kmsshared/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 679
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 680
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 681
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 684
    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 686
    :try_start_0
    invoke-static {v0, v1}, Lrl;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 695
    const/4 v0, 0x0

    .line 696
    iget-object v4, p0, Lmu;->k:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 700
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 711
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 713
    const-string v4, "com.kms.useraction.info"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v4, "com.kms.useraction.file"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v0, "com.kms.useraction.package"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v0, "com.kms.useraction.type"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 717
    const-string v0, "com.kms.useraction.mode"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    const-string v0, "com.kms.useraction.launchedfrom"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 722
    invoke-direct {p0}, Lmu;->k()V

    .line 723
    invoke-direct {p0}, Lmu;->n()V

    .line 724
    iget v0, p0, Lmu;->x:I

    packed-switch v0, :pswitch_data_0

    .line 732
    :goto_2
    return-void

    .line 690
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lmu;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 729
    :pswitch_0
    invoke-static {v1}, Lmp;->a(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lmu;->y:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    iget v0, p0, Lmu;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->p:I

    goto :goto_2

    .line 705
    :catch_1
    move-exception v3

    goto :goto_1

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lmu;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmu;->a(I)V

    return-void
.end method

.method static synthetic b(Lmu;Z)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmu;->i:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    invoke-virtual {v1}, Lsf;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lmu;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lmu;->c:Z

    return v0
.end method

.method static synthetic d(Lmu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmu;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lmu;)LgE;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmu;->D:LgE;

    return-object v0
.end method

.method static synthetic f(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->m:I

    return v0
.end method

.method static synthetic g(Lmu;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lmu;->d:Z

    return v0
.end method

.method static synthetic h(Lmu;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lmu;->g:J

    return-wide v0
.end method

.method static synthetic i(Lmu;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmu;->h:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic j(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->u:I

    return v0
.end method

.method static synthetic k(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->n:I

    return v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmu;->D:LgE;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lmu;->D:LgE;

    invoke-interface {v0}, LgE;->b()V

    .line 149
    :cond_0
    return-void
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmu;->D:LgE;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lmu;->D:LgE;

    invoke-interface {v0}, LgE;->d()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lmu;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lmu;->e:Z

    return v0
.end method

.method static synthetic m(Lmu;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 177
    iget-boolean v0, p0, Lmu;->z:Z

    if-nez v0, :cond_1

    .line 179
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 180
    iget-object v0, p0, Lmu;->y:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    iget v0, p0, Lmu;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmu;->p:I

    .line 189
    iget v0, p0, Lmu;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->o:I

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lmu;->y:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmu;->z:Z

    .line 195
    :cond_1
    return-void
.end method

.method static synthetic n(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->r:I

    return v0
.end method

.method private declared-synchronized n()V
    .locals 1

    .prologue
    .line 739
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lmu;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    goto :goto_0

    .line 745
    :cond_0
    monitor-exit p0

    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic o(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->q:I

    return v0
.end method

.method private static o()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .prologue
    .line 748
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 749
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 755
    return-object v0

    .line 753
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get application info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic p(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->o:I

    return v0
.end method

.method static synthetic q(Lmu;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmu;->p:I

    return v0
.end method


# virtual methods
.method public final a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I
    .locals 9

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v2, 0x0

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 487
    iget-wide v3, p0, Lmu;->l:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 488
    iput-wide v0, p0, Lmu;->l:J

    .line 489
    const-string v0, "AvScanDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Continue scanning: event time - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lmu;->l:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 608
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lmu;->e:Z

    if-eqz v0, :cond_f

    .line 609
    const/4 v0, 0x2

    .line 611
    :goto_1
    return v0

    .line 494
    :pswitch_1
    iget-boolean v0, p0, Lmu;->j:Z

    if-nez v0, :cond_2

    .line 495
    iget v0, p0, Lmu;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->s:I

    .line 498
    :cond_2
    iget v0, p0, Lmu;->m:I

    if-eqz v0, :cond_1

    .line 499
    iget v0, p0, Lmu;->s:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lmu;->m:I

    div-int/2addr v0, v1

    .line 500
    iget v1, p0, Lmu;->t:I

    sub-int v1, v0, v1

    if-lez v1, :cond_4

    .line 501
    iput v0, p0, Lmu;->t:I

    .line 502
    iget-object v1, p0, Lmu;->C:Ljava/util/Vector;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 504
    iget v4, p0, Lmu;->s:I

    invoke-interface {v0, v4}, LmA;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    :cond_4
    const-string v0, "AvScanDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mScannedFileCount = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmu;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :pswitch_2
    iget v0, p0, Lmu;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->r:I

    .line 515
    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    invoke-interface {p3}, LgH;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_5
    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 523
    :pswitch_3
    iget-boolean v0, p0, Lmu;->j:Z

    if-nez v0, :cond_6

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 524
    :cond_6
    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lmu;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V

    goto/16 :goto_0

    .line 526
    :cond_7
    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lmu;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V

    goto/16 :goto_0

    .line 531
    :pswitch_4
    packed-switch p2, :pswitch_data_1

    .line 547
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 548
    iget-wide v3, p0, Lmu;->v:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_9

    .line 549
    iput-wide v0, p0, Lmu;->v:J

    .line 550
    iget-object v1, p0, Lmu;->C:Ljava/util/Vector;

    monitor-enter v1

    .line 551
    :try_start_2
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 552
    iget v4, p0, Lmu;->u:I

    invoke-interface {v0, v4}, LmA;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 554
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 538
    :pswitch_5
    iget v0, p0, Lmu;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->p:I

    goto :goto_3

    .line 544
    :pswitch_6
    iget v0, p0, Lmu;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->u:I

    goto :goto_3

    .line 554
    :cond_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 556
    :cond_9
    const-string v0, "AvScanDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mScannedFileCount = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmu;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :pswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 562
    iget-wide v3, p0, Lmu;->w:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_c

    .line 563
    iput-wide v0, p0, Lmu;->w:J

    .line 564
    const-string v0, ""

    .line 565
    iget v1, p0, Lmu;->a:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_a

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmu;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 572
    :goto_5
    iget-object v3, p0, Lmu;->C:Ljava/util/Vector;

    monitor-enter v3

    .line 573
    :try_start_4
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, LgH;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmu;->B:Ljava/lang/String;

    .line 575
    iget-object v5, p0, Lmu;->B:Ljava/lang/String;

    invoke-interface {v0, v5}, LmA;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 577
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 568
    :cond_a
    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {p3}, LgH;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    .line 577
    :cond_b
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 579
    :cond_c
    const-string v0, "AvScanDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mScannedFileCount = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmu;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :pswitch_8
    iget v0, p0, Lmu;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmu;->n:I

    .line 585
    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/kms/kmsshared/reports/Reports;->addDetection(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->h()V

    .line 587
    invoke-static {}, Lcom/kms/kmsshared/Utils;->h()V

    .line 589
    iget-object v1, p0, Lmu;->C:Ljava/util/Vector;

    monitor-enter v1

    .line 590
    :try_start_6
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 591
    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, LmA;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    .line 593
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_d
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 595
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 596
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 598
    if-nez v0, :cond_1

    .line 599
    iget-boolean v0, p0, Lmu;->j:Z

    if-eqz v0, :cond_e

    .line 600
    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lmu;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V

    goto/16 :goto_0

    .line 602
    :cond_e
    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lmu;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/ThreatType;)V

    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 611
    goto/16 :goto_1

    :cond_10
    move-object v1, v0

    goto/16 :goto_5

    .line 492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 531
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final declared-synchronized a(LgE;ILjava/lang/String;ZZ)Ljava/lang/Thread;
    .locals 5

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    const-string v0, "AvScanDispatcher"

    const-string v1, "scanPath(scanner, %d, %s, %b, %b)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lmu;->i:Z

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmu;->i:Z

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmu;->e:Z

    .line 227
    iput p2, p0, Lmu;->a:I

    .line 228
    iput-object p3, p0, Lmu;->b:Ljava/lang/String;

    .line 229
    iput-boolean p4, p0, Lmu;->c:Z

    .line 230
    iput-boolean p5, p0, Lmu;->d:Z

    .line 231
    iput-object p1, p0, Lmu;->D:LgE;

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lmu;->u:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lmu;->m:I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lmu;->n:I

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lmu;->o:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lmu;->p:I

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lmu;->q:I

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmu;->f:J

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lmu;->r:I

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lmu;->s:I

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lmu;->t:I

    .line 243
    iget-object v0, p0, Lmu;->y:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmu;->z:Z

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmu;->A:Z

    .line 246
    const-string v0, ""

    iput-object v0, p0, Lmu;->B:Ljava/lang/String;

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmu;->g:J

    .line 249
    iget-wide v0, p0, Lmu;->g:J

    iput-wide v0, p0, Lmu;->v:J

    .line 250
    iget-wide v0, p0, Lmu;->g:J

    iput-wide v0, p0, Lmu;->w:J

    .line 252
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lmv;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lmv;-><init>(Lmu;B)V

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 255
    iget-object v2, p0, Lmu;->C:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :try_start_1
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 259
    invoke-interface {v0}, LmA;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_1
    monitor-exit p0

    return-object v0

    .line 261
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 262
    goto :goto_1
.end method

.method public final a(IZ)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lmu;->x:I

    .line 97
    iput-boolean p2, p0, Lmu;->A:Z

    .line 98
    return-void
.end method

.method public final a(LmA;)V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lmu;->C:Ljava/util/Vector;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lmu;->C:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {p0}, Lmu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget v0, p0, Lmu;->u:I

    .line 203
    iget-object v0, p0, Lmu;->B:Ljava/lang/String;

    invoke-interface {p1, v0}, LmA;->a(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lmu;->i:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmu;->e:Z

    .line 106
    iget-object v0, p0, Lmu;->D:LgE;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lmu;->D:LgE;

    invoke-interface {v0}, LgE;->a()V

    .line 109
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lmu;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lmu;->u:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lmu;->m()V

    .line 129
    iget v0, p0, Lmu;->o:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lmu;->q:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lmu;->r:I

    return v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmu;->i:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 161
    iget-object v0, p0, Lmu;->D:LgE;

    invoke-interface {v0}, LgE;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lmu;->D:LgE;

    invoke-interface {v0}, LgE;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lmu;->n:I

    return v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lmu;->f:J

    return-wide v0
.end method
