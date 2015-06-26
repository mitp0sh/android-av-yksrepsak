.class public final Luf;
.super LtL;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lua;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, LtL;-><init>(Lua;Landroid/content/Context;)V

    .line 18
    new-instance v0, LtZ;

    iget-object v1, p0, Luf;->g:Ljava/lang/Object;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2, p3}, LtZ;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/app/Activity;)V

    iput-object v0, p0, Luf;->e:LtZ;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 23
    iget-object v0, p0, Luf;->d:Lua;

    invoke-interface {v0}, Lua;->f()V

    .line 24
    iget-object v0, p0, Luf;->e:LtZ;

    invoke-static {v0}, Luj;->a(Lud;)V

    .line 26
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 27
    const-class v2, Lub;

    monitor-enter v2

    .line 28
    :try_start_0
    new-instance v3, Lub;

    iget-object v1, p0, Luf;->f:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v1}, Lcom/kms/licensing/iapurchase/BillingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lub;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v3}, Lub;->b()Landroid/database/Cursor;

    move-result-object v4

    .line 31
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    :cond_0
    invoke-virtual {v0}, Lsk;->i()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 38
    :goto_0
    if-eqz v4, :cond_1

    .line 39
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_1
    invoke-virtual {v3}, Lub;->a()V

    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lug;

    invoke-direct {v2, p0, v1}, Lug;-><init>(Luf;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    :try_start_1
    iget-object v2, p0, Luf;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :try_start_2
    iget-object v0, p0, Luf;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 53
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :goto_1
    iget-object v0, p0, Luf;->e:LtZ;

    invoke-virtual {v0}, LtZ;->b()Z

    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Luf;->d:Lua;

    invoke-interface {v0}, Lua;->g()V

    .line 60
    iget-object v0, p0, Luf;->f:Lcom/kms/licensing/iapurchase/BillingService;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lk;->a(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V

    .line 64
    :goto_2
    iget-object v0, p0, Luf;->f:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0}, Lcom/kms/licensing/iapurchase/BillingService;->b()V

    .line 65
    return-void

    .line 36
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lsk;->j()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 53
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Luf;->d:Lua;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lua;->e(I)V

    goto :goto_2
.end method
