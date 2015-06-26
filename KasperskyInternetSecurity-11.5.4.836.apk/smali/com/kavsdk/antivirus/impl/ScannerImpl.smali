.class public Lcom/kavsdk/antivirus/impl/ScannerImpl;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements LgE;
.implements LgT;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile c:Z

.field private final d:LgY;

.field private e:LgF;

.field private f:LgG;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Landroid/content/Context;

.field private final j:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/kavsdk/antivirus/impl/ScannerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lid;Ljava/lang/String;Ljava/lang/String;LhC;[Landroid/content/pm/Signature;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    invoke-static {p2, p3, p4, p5}, LgY;->a(Lid;Ljava/lang/String;Ljava/lang/String;LhC;)LgY;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pipe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->g:Ljava/lang/String;

    .line 80
    const-string v0, ""

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->h:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->i:Landroid/content/Context;

    .line 82
    iput-object p6, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->j:[Landroid/content/pm/Signature;

    .line 87
    return-void
.end method

.method private a(Ljava/lang/String;IILgF;LgG;Z)V
    .locals 12

    .prologue
    .line 143
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v8, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->File:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    const/4 v10, 0x0

    new-instance v11, Lhk;

    invoke-direct {v11, p0}, Lhk;-><init>(LgT;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move v6, p2

    move v7, p3

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(Ljava/lang/String;Ljava/io/InputStream;LgF;LgG;[Ljava/lang/String;IILcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;ZZLhk;)V

    .line 144
    return-void
.end method

.method private a(Ljava/lang/String;IILgF;LgG;[Ljava/lang/String;Z)V
    .locals 12

    .prologue
    .line 215
    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v8, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Folder:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    const/4 v10, 0x0

    new-instance v11, Lhk;

    invoke-direct {v11, p0}, Lhk;-><init>(LgT;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    move v6, p2

    move v7, p3

    move/from16 v9, p7

    invoke-direct/range {v0 .. v11}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(Ljava/lang/String;Ljava/io/InputStream;LgF;LgG;[Ljava/lang/String;IILcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;ZZLhk;)V

    .line 216
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;LgF;LgG;[Ljava/lang/String;IILcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;ZZLhk;)V
    .locals 8

    .prologue
    .line 326
    if-nez p3, :cond_0

    .line 327
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File or folder name can\'t be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_1
    invoke-static {p7}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 335
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect scanMode or cleanMode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_2
    if-eqz p9, :cond_5

    .line 339
    iget-object v1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 346
    :cond_3
    sget-object v1, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Stream:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    move-object/from16 v0, p8

    if-ne v0, v1, :cond_4

    .line 347
    or-int/lit16 p6, p6, 0x2000

    .line 351
    :cond_4
    :try_start_0
    invoke-static {}, LgA;->a()Lgz;

    move-result-object v1

    check-cast v1, LgP;

    invoke-virtual {v1}, LgP;->h()Z

    move-result v1

    .line 353
    iput-object p3, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->e:LgF;

    .line 354
    iput-object p4, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->f:LgG;

    .line 355
    iget-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, p6, v1}, LgY;->a(II)V

    .line 356
    sget-object v1, Lhl;->a:[I

    invoke-virtual/range {p8 .. p8}, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 368
    const/4 v1, -0x6

    .line 371
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->e:LgF;

    .line 372
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->f:LgG;

    .line 374
    if-eqz v1, :cond_7

    const/4 v2, -0x3

    if-eq v1, v2, :cond_7

    const/16 v2, -0xc

    if-eq v1, v2, :cond_7

    const/16 v2, -0x15

    if-eq v1, v2, :cond_7

    .line 378
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 341
    :cond_5
    iget-object v1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_3

    .line 342
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already in use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 359
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    move-object/from16 v0, p11

    invoke-virtual {v1, p1, p7, p5, v0}, LgY;->a(Ljava/lang/String;I[Ljava/lang/String;LhH;)I

    move-result v1

    goto :goto_1

    .line 362
    :pswitch_1
    iget-object v1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    move-object/from16 v0, p11

    invoke-virtual {v1, p1, p7, v0}, LgY;->a(Ljava/lang/String;ILhH;)I

    move-result v1

    goto :goto_1

    .line 365
    :pswitch_2
    iget-object v1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->h:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p1

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v7}, LgY;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LhH;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 381
    :cond_7
    iget-object v1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    return-void

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 396
    .line 398
    invoke-interface {p3}, LgH;->a()Ljava/lang/String;

    move-result-object v0

    .line 400
    const/16 v2, 0xc

    if-ne p1, v2, :cond_2

    .line 401
    iget-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->f:LgG;

    if-eqz v2, :cond_3

    .line 402
    invoke-static {v0}, Lhp;->b(Ljava/lang/String;)Lcom/kavsdk/antivirus/SuspiciousThreatType;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 406
    invoke-interface {p3}, LgH;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->j:[Landroid/content/pm/Signature;

    invoke-static {v2, p3, v3}, Lcom/kavsdk/shared/SdkUtils;->a(Landroid/content/Context;LgH;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->f:LgG;

    invoke-interface {v2, p3, v0}, LgG;->a(LgH;Lcom/kavsdk/antivirus/SuspiciousThreatType;)V

    :cond_0
    move v0, v1

    .line 417
    :goto_0
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 426
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->e:LgF;

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->e:LgF;

    invoke-interface {v0, p1, p2, p3, p4}, LgF;->a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I

    move-result v0

    goto :goto_0

    .line 419
    :pswitch_1
    invoke-virtual {p0}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->c()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Ljava/util/Vector;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 125
    iget-object v1, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    invoke-virtual {v2, p1, v0}, LgY;->a(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folderName can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->c:Z

    .line 310
    iget-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    invoke-virtual {v0}, LgY;->a()V

    .line 311
    return-void
.end method

.method public final a(Landroid/content/pm/ApplicationInfo;ILgF;LgG;ZZZZ)V
    .locals 12

    .prologue
    .line 240
    new-instance v3, Lhm;

    invoke-direct {v3, p3}, Lhm;-><init>(LgF;)V

    .line 245
    const/16 v6, 0x2002

    .line 249
    if-eqz p7, :cond_0

    .line 250
    const/16 v6, 0x2202

    .line 253
    :cond_0
    if-nez p8, :cond_1

    .line 254
    or-int/lit16 v6, v6, 0x800

    .line 257
    :cond_1
    if-eqz p4, :cond_2

    .line 258
    or-int/lit16 v6, v6, 0x1000

    .line 260
    :cond_2
    new-instance v11, Lhk;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, p0, v0}, Lhk;-><init>(LgT;Ljava/lang/String;)V

    .line 261
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v8, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Folder:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v4, p4

    move v7, p2

    invoke-direct/range {v0 .. v11}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(Ljava/lang/String;Ljava/io/InputStream;LgF;LgG;[Ljava/lang/String;IILcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;ZZLhk;)V

    .line 274
    invoke-virtual {v3}, Lhm;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    :goto_1
    return-void

    .line 261
    :cond_3
    sget-object v8, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->File:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    goto :goto_0

    .line 278
    :cond_4
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v8, Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;->Folder:Lcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v4, p4

    move v7, p2

    invoke-direct/range {v0 .. v11}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(Ljava/lang/String;Ljava/io/InputStream;LgF;LgG;[Ljava/lang/String;IILcom/kavsdk/antivirus/impl/ScannerImpl$ScanObjectType;ZZLhk;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;IILgF;Z)V
    .locals 7

    .prologue
    .line 136
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(Ljava/lang/String;IILgF;LgG;Z)V

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/String;IILgF;[Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 207
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->a(Ljava/lang/String;IILgF;LgG;[Ljava/lang/String;Z)V

    .line 208
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    invoke-virtual {v0, p1}, LgY;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->c:Z

    .line 95
    invoke-direct {p0}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanning is not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanning is already paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    invoke-virtual {v0, v2}, LgY;->a(Z)V

    .line 102
    iput-boolean v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->c:Z

    .line 103
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->c:Z

    .line 107
    invoke-direct {p0}, Lcom/kavsdk/antivirus/impl/ScannerImpl;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanning is not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanning is not paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->d:LgY;

    invoke-virtual {v0, v2}, LgY;->a(Z)V

    .line 114
    iput-boolean v2, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->c:Z

    .line 115
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/impl/ScannerImpl;->c:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 433
    const-string v0, "com.kaspersky.emulator.ACTION_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const-string v0, "com.kaspersky.emulator.ACTION_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const-string v0, "com.kaspersky.emulator.ACTION_DETECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    const-string v0, "com.kaspersky.emulator.ACTION_TROUBLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    :cond_0
    return-void
.end method
