.class public final LtS;
.super LtL;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lua;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, LtL;-><init>(Lua;Landroid/content/Context;)V

    .line 13
    new-instance v0, LtZ;

    iget-object v1, p0, LtS;->g:Ljava/lang/Object;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LtZ;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/app/Activity;)V

    iput-object v0, p0, LtS;->e:LtZ;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 18
    iget-object v0, p0, LtS;->d:Lua;

    invoke-interface {v0}, Lua;->e()V

    .line 19
    iget-object v0, p0, LtS;->e:LtZ;

    invoke-static {v0}, Luj;->a(Lud;)V

    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LtT;

    invoke-direct {v1, p0}, LtT;-><init>(LtS;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    :try_start_0
    iget-object v1, p0, LtS;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    iget-object v0, p0, LtS;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_0
    iget-object v0, p0, LtS;->e:LtZ;

    invoke-virtual {v0}, LtZ;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, LtS;->d:Lua;

    invoke-interface {v0, v2}, Lua;->a(Z)V

    .line 41
    :goto_1
    iget-object v0, p0, LtS;->f:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0}, Lcom/kms/licensing/iapurchase/BillingService;->b()V

    .line 42
    return-void

    .line 31
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, LtS;->d:Lua;

    invoke-interface {v0, v2}, Lua;->d(I)V

    goto :goto_1
.end method
