.class final LgU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LiO;


# instance fields
.field a:Z

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:LiP;

.field private k:Lhj;

.field private l:Z

.field private final m:I

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;LhC;LhH;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, LgU;->g:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LgU;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LgU;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, LgU;->j:LiP;

    .line 47
    iput-boolean v6, p0, LgU;->l:Z

    .line 49
    const/16 v0, 0x5dc

    iput v0, p0, LgU;->m:I

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LgU;->n:Landroid/os/Handler;

    .line 52
    iput-boolean v2, p0, LgU;->a:Z

    .line 53
    new-instance v0, LgV;

    invoke-direct {v0, p0}, LgV;-><init>(LgU;)V

    iput-object v0, p0, LgU;->o:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lih;

    invoke-direct {v0}, Lih;-><init>()V

    move-object v1, p3

    move-object v2, p7

    move-object v3, p6

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lhj;->a(Lid;Ljava/lang/String;LhH;LhC;III)Lhj;

    move-result-object v0

    iput-object v0, p0, LgU;->k:Lhj;

    .line 86
    iget-object v0, p0, LgU;->k:Lhj;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error loading monitor!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p4, p0, LgU;->d:Ljava/lang/String;

    .line 91
    iput-object p3, p0, LgU;->e:Ljava/lang/String;

    .line 92
    iput-object p5, p0, LgU;->f:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic a(LgU;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LgU;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(J)V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, LgU;->n:Landroid/os/Handler;

    iget-object v1, p0, LgU;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    iget-object v0, p0, LgU;->n:Landroid/os/Handler;

    iget-object v1, p0, LgU;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, LgU;->a:Z

    .line 293
    return-void
.end method

.method static synthetic b(LgU;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LgU;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(LgU;)Lhj;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LgU;->k:Lhj;

    return-object v0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, LgU;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 159
    iget-object v4, p0, LgU;->k:Lhj;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lhj;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {v2}, Lcom/kavsdk/shared/SdkUtils;->a(Z)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 164
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 165
    iget-object v5, p0, LgU;->k:Lhj;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lhj;->b(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 169
    :cond_1
    iget-object v0, p0, LgU;->k:Lhj;

    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Lhj;->b(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, LgU;->k:Lhj;

    iget-object v1, p0, LgU;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhj;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, LgU;->k:Lhj;

    iget-object v1, p0, LgU;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhj;->a(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, LgU;->k:Lhj;

    invoke-virtual {v0}, Lhj;->a()I

    move-result v0

    .line 187
    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, LgU;->k:Lhj;

    iget v1, p0, LgU;->b:I

    iget-boolean v4, p0, LgU;->l:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v1, v2}, Lhj;->a(II)V

    .line 193
    iget-object v0, p0, LgU;->k:Lhj;

    iget v1, p0, LgU;->c:I

    invoke-virtual {v0, v1}, Lhj;->a(I)V

    .line 200
    :goto_2
    return v3

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, LgU;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LgU;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    :goto_0
    iget-boolean v1, p0, LgU;->g:Z

    if-eq v1, v0, :cond_0

    .line 211
    if-eqz v0, :cond_2

    .line 212
    invoke-direct {p0}, LgU;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, LgU;->g:Z

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 209
    goto :goto_0

    .line 222
    :cond_2
    :try_start_1
    iget-object v0, p0, LgU;->k:Lhj;

    invoke-virtual {v0}, Lhj;->b()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, LgU;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(LgU;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, LgU;->d()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, LgU;->n:Landroid/os/Handler;

    iget-object v1, p0, LgU;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    iget-object v0, p0, LgU;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 299
    invoke-direct {p0}, LgU;->d()V

    .line 301
    const-wide/16 v0, 0x5dc

    invoke-direct {p0, v0, v1}, LgU;->a(J)V

    .line 302
    return-void
.end method

.method static synthetic e(LgU;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, LgU;->g:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 306
    const-wide/16 v0, 0x5dc

    invoke-direct {p0, v0, v1}, LgU;->a(J)V

    .line 307
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 310
    iget-boolean v0, p0, LgU;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LgU;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LgU;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LgX;

    invoke-direct {v1, p0}, LgX;-><init>(LgU;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, LgU;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-static {}, LiP;->a()LiP;

    move-result-object v0

    iput-object v0, p0, LgU;->j:LiP;

    .line 125
    iget-object v0, p0, LgU;->j:LiP;

    iget-object v1, p0, LgU;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, LiP;->a(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, LgU;->j:LiP;

    invoke-virtual {v0, p0}, LiP;->a(LiO;)V

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    invoke-direct {p0}, LgU;->d()V

    .line 131
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iput p1, p0, LgU;->b:I

    .line 238
    iget-boolean v0, p0, LgU;->g:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, LgU;->k:Lhj;

    iget-boolean v0, p0, LgU;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lhj;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_0
    monitor-exit p0

    return-void

    .line 239
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ZLandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, LgU;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 337
    :cond_0
    if-nez p1, :cond_1

    .line 338
    invoke-direct {p0}, LgU;->e()V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-direct {p0}, LgU;->g()V

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0}, LgU;->f()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, LgU;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, LgU;->j:LiP;

    invoke-virtual {v0, p0}, LiP;->b(LiO;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, LgU;->j:LiP;

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    invoke-direct {p0}, LgU;->d()V

    .line 149
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iput p1, p0, LgU;->c:I

    .line 248
    iget-boolean v0, p0, LgU;->g:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, LgU;->k:Lhj;

    invoke-virtual {v0, p1}, Lhj;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, LgU;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
