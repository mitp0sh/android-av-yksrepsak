.class public LcW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic l:Z


# instance fields
.field private volatile a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Set;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ldi;

.field private f:LcU;

.field private g:Ldd;

.field private h:Lda;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:LcZ;

.field private k:Ldm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, LcW;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LcW;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LcW;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, LcZ;

    invoke-direct {v0, p0, v1}, LcZ;-><init>(LcW;B)V

    iput-object v0, p0, LcW;->j:LcZ;

    .line 307
    new-instance v0, LcX;

    invoke-direct {v0, p0}, LcX;-><init>(LcW;)V

    iput-object v0, p0, LcW;->k:Ldm;

    .line 63
    iput-object p1, p0, LcW;->b:Landroid/content/Context;

    .line 64
    iget-object v0, p0, LcW;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, LdJ;->a(Landroid/content/pm/PackageManager;)V

    .line 65
    return-void
.end method

.method static synthetic a(LcW;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, LcW;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, LcW;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(LcW;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LcW;->c:Ljava/util/Set;

    return-object v0
.end method

.method private a(Z)Z
    .locals 1

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p0}, LcW;->b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, LcW;->b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->d()Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(LcW;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LcW;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(LcW;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic d(LcW;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, LcW;->g()V

    return-void
.end method

.method static synthetic e(LcW;)LcU;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LcW;->f:LcU;

    return-object v0
.end method

.method static synthetic f(LcW;)Ldd;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LcW;->g:Ldd;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, LcW;->b:Landroid/content/Context;

    const-string v1, "836416529817"

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LcW;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    .line 137
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lrq;->b(I)V

    .line 139
    iget-object v0, p0, LcW;->f:LcU;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, LcW;->f:LcU;

    invoke-virtual {v0}, LcU;->a()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, LcW;->f:LcU;

    .line 143
    :cond_1
    iget-object v0, p0, LcW;->g:Ldd;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, LcW;->g:Ldd;

    invoke-virtual {v0}, Ldd;->a()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, LcW;->g:Ldd;

    .line 148
    :cond_2
    iget-object v0, p0, LcW;->h:Lda;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, LcW;->b:Landroid/content/Context;

    iget-object v1, p0, LcW;->h:Lda;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, LcW;->h:Lda;

    .line 152
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, LcW;->e:Ldi;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, LcW;->c:Ljava/util/Set;

    .line 155
    iget-object v0, p0, LcW;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_4
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(LaU;)V
    .locals 9

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lse;->j()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 71
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v2

    invoke-virtual {v2}, Lse;->m()Z

    move-result v7

    .line 73
    invoke-direct {p0, v7}, LcW;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, LcW;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    invoke-direct {p0}, LcW;->g()V

    .line 79
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v8

    .line 80
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LcW;->c:Ljava/util/Set;

    .line 81
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    .line 83
    sget-boolean v0, LcW;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LcW;->h:Lda;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_0
    :try_start_1
    new-instance v0, Lda;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lda;-><init>(LcW;B)V

    iput-object v0, p0, LcW;->h:Lda;

    .line 85
    iget-object v0, p0, LcW;->b:Landroid/content/Context;

    iget-object v1, p0, LcW;->h:Lda;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    sget-boolean v0, LcW;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LcW;->g:Ldd;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_1
    const-string v0, "at_requests.dat"

    invoke-direct {p0, v0}, LcW;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 90
    new-instance v0, Ldd;

    invoke-virtual {p0}, LcW;->b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v2

    iget-object v3, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, LcW;->k:Ldm;

    iget-object v5, p0, LcW;->j:LcZ;

    invoke-direct/range {v0 .. v5}, Ldd;-><init>(Ljava/io/File;Lcom/kaspersky/kts/antitheft/remoting/CommandManager;Ljava/util/concurrent/Executor;Ldm;Ldp;)V

    iput-object v0, p0, LcW;->g:Ldd;

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 93
    iget-object v0, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, LcW;->g:Ldd;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    :cond_2
    sget-boolean v0, LcW;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LcW;->f:LcU;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_3
    const-string v0, "at_commands.dat"

    invoke-direct {p0, v0}, LcW;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 99
    new-instance v1, LcU;

    iget-object v2, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ldo;

    invoke-virtual {p0}, LcW;->b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ldo;-><init>(Lcom/kaspersky/kts/antitheft/remoting/CommandManager;LaU;)V

    invoke-direct {v1, v0, v2, v3}, LcU;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Ldo;)V

    iput-object v1, p0, LcW;->f:LcU;

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, LcW;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, LcW;->f:LcU;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 106
    :cond_4
    new-instance v0, Ldi;

    invoke-virtual {p0}, LcW;->b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v2

    iget-object v3, p0, LcW;->f:LcU;

    iget-object v4, p0, LcW;->k:Ldm;

    new-instance v5, LcY;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, LcY;-><init>(LcW;B)V

    iget-object v6, p0, LcW;->j:LcZ;

    move v1, v7

    invoke-direct/range {v0 .. v6}, Ldi;-><init>(ZLcom/kaspersky/kts/antitheft/remoting/CommandManager;LcS;Ldm;Ldh;Ldp;)V

    iput-object v0, p0, LcW;->e:Ldi;

    .line 108
    if-eqz v8, :cond_6

    .line 109
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lrq;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_6
    :try_start_2
    iget-object v0, p0, LcW;->c:Ljava/util/Set;

    iget-object v1, p0, LcW;->e:Ldi;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/kaspersky/kts/antitheft/ActionInfo;)V
    .locals 4

    .prologue
    .line 243
    new-instance v0, Lcom/kaspersky/kts/antitheft/CommandItem;

    invoke-direct {v0, p1}, Lcom/kaspersky/kts/antitheft/CommandItem;-><init>(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    .line 244
    iget-object v1, p0, LcW;->f:LcU;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, LcW;->f:LcU;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/kaspersky/kts/antitheft/CommandItem;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, LcU;->a([Lcom/kaspersky/kts/antitheft/QueueItem;)V

    .line 247
    :cond_0
    return-void
.end method

.method public final a(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lcom/kaspersky/kts/antitheft/ActionInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Z)V

    .line 237
    invoke-virtual {v0, p2}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setPhone(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setActionId(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v0}, LcW;->a(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    .line 240
    return-void
.end method

.method public final b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;
    .locals 7

    .prologue
    .line 198
    iget-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    if-nez v0, :cond_2

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    if-nez v0, :cond_1

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 202
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v2, "antitheft.server_using_self_signed_certificate"

    invoke-interface {v1, v2}, Ll;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 204
    :goto_0
    new-instance v0, LdZ;

    const v1, 0x7f060012

    const-string v2, "qwerty"

    iget-object v3, p0, LcW;->b:Landroid/content/Context;

    const/4 v4, -0x1

    const-string v5, "KMS-ANTI-THIEF"

    invoke-direct/range {v0 .. v6}, LdZ;-><init>(ILjava/lang/String;Landroid/content/Context;ILjava/lang/String;Z)V

    .line 207
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v2, "antitheft.server"

    invoke-interface {v1, v2}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {}, Ldk;->a()Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    move-result-object v2

    .line 209
    new-instance v3, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-direct {v3, v1, v0, v2}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;-><init>(Ljava/lang/String;Leg;Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V

    iput-object v3, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    .line 210
    iget-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(I)V

    .line 212
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_2
    iget-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    return-object v0

    .line 202
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(LaU;)V
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LcW;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse;->f(Z)V

    .line 170
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lse;->a(I)V

    .line 171
    invoke-virtual {v0}, Lse;->g_()V

    .line 174
    iget-object v0, p0, LcW;->e:Ldi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldi;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    invoke-virtual {p0}, LcW;->b()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    .line 184
    iget-object v0, p0, LcW;->f:LcU;

    invoke-static {p1}, LcU;->a(LaU;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, LcW;->c:Ljava/util/Set;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, LcW;->c:Ljava/util/Set;

    iget-object v2, p0, LcW;->e:Ldi;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LcW;->e:Ldi;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, LcW;->e:Ldi;

    invoke-virtual {v0}, Ldi;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, LcW;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized f()V
    .locals 5

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->h()Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;

    invoke-static {}, Lg;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-virtual {v3}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/AtMobileStatuses;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :try_start_1
    iget-object v0, p0, LcW;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->a(Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V

    .line 260
    invoke-static {v1}, Ldk;->a(Lcom/kaspersky/kts/antitheft/AtMobileStatuses;)V
    :try_end_1
    .catch Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    :try_start_2
    iget-object v1, p0, LcW;->j:LcZ;

    invoke-virtual {v1, v0}, LcZ;->a(Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
