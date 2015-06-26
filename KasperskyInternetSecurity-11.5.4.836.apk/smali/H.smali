.class public final LH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG;


# static fields
.field private static o:LG;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/kaspersky/components/ipm/IpmServiceImpl;

.field private c:LI;

.field private d:Ljava/util/Set;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/lang/Runnable;

.field private h:LO;

.field private i:Lv;

.field private j:I

.field private k:Lu;

.field private l:LR;

.field private m:LF;

.field private n:LM;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LH;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    return-void
.end method

.method static synthetic a(LH;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(LH;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(LH;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static d()LG;
    .locals 1

    .prologue
    .line 47
    sget-object v0, LH;->o:LG;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, LH;

    invoke-direct {v0}, LH;-><init>()V

    sput-object v0, LH;->o:LG;

    .line 50
    :cond_0
    sget-object v0, LH;->o:LG;

    return-object v0
.end method

.method static synthetic d(LH;)LR;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->l:LR;

    return-object v0
.end method

.method private e()Lcom/kaspersky/components/ipm/IpmServiceImpl;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, LH;->b:Lcom/kaspersky/components/ipm/IpmServiceImpl;

    return-object v0
.end method

.method static synthetic e(LH;)Lcom/kaspersky/components/ipm/IpmServiceImpl;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, LH;->e()Lcom/kaspersky/components/ipm/IpmServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(LH;)LO;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->h:LO;

    return-object v0
.end method

.method private f()Z
    .locals 7

    .prologue
    .line 258
    iget-object v0, p0, LH;->n:LM;

    invoke-interface {v0}, LM;->a()LL;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, LL;->b()J

    move-result-wide v1

    .line 260
    invoke-virtual {v0}, LL;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 261
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 262
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    add-long v0, v1, v3

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(LH;)LF;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->m:LF;

    return-object v0
.end method

.method static synthetic h(LH;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, LH;->j:I

    return v0
.end method

.method static synthetic i(LH;)Lv;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->i:Lv;

    return-object v0
.end method

.method static synthetic j(LH;)Lu;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->k:Lu;

    return-object v0
.end method

.method static synthetic k(LH;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LH;->g:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, LH;->h:LO;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, LO;->c()V

    .line 247
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/kaspersky/components/ipm/IpmMessageManager;Lv;IILu;LM;LR;Lw;Law;LF;)V
    .locals 8

    .prologue
    .line 84
    invoke-interface {p7}, LM;->a()LL;

    move-result-object v1

    invoke-virtual {v1}, LL;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, LH;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iput-object p1, p0, LH;->a:Landroid/content/Context;

    .line 93
    new-instance v1, Lcom/kaspersky/components/ipm/IpmServiceImpl;

    move-object/from16 v0, p9

    invoke-direct {v1, p1, p7, v0}, Lcom/kaspersky/components/ipm/IpmServiceImpl;-><init>(Landroid/content/Context;LM;Lw;)V

    iput-object v1, p0, LH;->b:Lcom/kaspersky/components/ipm/IpmServiceImpl;

    .line 94
    iput-object p3, p0, LH;->i:Lv;

    .line 95
    const/16 v1, 0xb

    iput v1, p0, LH;->j:I

    .line 96
    iput-object p6, p0, LH;->k:Lu;

    .line 97
    move-object/from16 v0, p8

    iput-object v0, p0, LH;->l:LR;

    .line 98
    move-object/from16 v0, p11

    iput-object v0, p0, LH;->m:LF;

    .line 100
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, LH;->d:Ljava/util/Set;

    .line 101
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, LH;->e:Ljava/util/concurrent/ExecutorService;

    .line 102
    new-instance v1, LO;

    const/16 v3, 0xc

    new-instance v5, LC;

    iget-object v2, p0, LH;->a:Landroid/content/Context;

    invoke-direct {v5, v2}, LC;-><init>(Landroid/content/Context;)V

    move-object v2, p3

    move-object v4, p2

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, LO;-><init>(Lv;ILcom/kaspersky/components/ipm/IpmMessageManager;LB;Law;LF;)V

    iput-object v1, p0, LH;->h:LO;

    .line 106
    iget-object v1, p0, LH;->h:LO;

    invoke-virtual {v1}, LO;->a()V

    .line 107
    new-instance v1, LK;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LK;-><init>(LH;B)V

    iput-object v1, p0, LH;->g:Ljava/lang/Runnable;

    .line 108
    iput-object p7, p0, LH;->n:LM;

    .line 111
    invoke-direct {p0}, LH;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p0}, LH;->c()V

    .line 117
    :goto_1
    new-instance v1, LI;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LI;-><init>(LH;B)V

    iput-object v1, p0, LH;->c:LI;

    .line 118
    iget-object v1, p0, LH;->a:Landroid/content/Context;

    iget-object v2, p0, LH;->c:LI;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p0, LH;->i:Lv;

    iget v2, p0, LH;->j:I

    invoke-interface {v1, v2}, Lv;->a(I)V

    goto :goto_1
.end method

.method public final b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, LH;->h:LO;

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, LO;->b()Ljava/util/Date;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, LH;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, LH;->k:Lu;

    invoke-interface {v0}, Lu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, LH;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, LH;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, LH;->i:Lv;

    iget v1, p0, LH;->j:I

    invoke-interface {v0, v1}, Lv;->b(I)V

    .line 236
    iget-object v1, p0, LH;->d:Ljava/util/Set;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, LH;->d:Ljava/util/Set;

    iget-object v2, p0, LH;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
