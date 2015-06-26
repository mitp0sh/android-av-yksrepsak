.class public final Luh;
.super LtL;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lua;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, LtL;-><init>(Lua;Landroid/content/Context;)V

    .line 10
    new-instance v0, LtZ;

    iget-object v1, p0, Luh;->g:Ljava/lang/Object;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LtZ;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/app/Activity;)V

    iput-object v0, p0, Luh;->e:LtZ;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Luh;->d:Lua;

    invoke-interface {v0}, Lua;->i()V

    .line 16
    iget-object v0, p0, Luh;->e:LtZ;

    invoke-static {v0}, Luj;->a(Lud;)V

    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lui;

    invoke-direct {v1, p0}, Lui;-><init>(Luh;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    :try_start_0
    iget-object v1, p0, Luh;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    iget-object v0, p0, Luh;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 27
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    iget-object v0, p0, Luh;->e:LtZ;

    invoke-virtual {v0}, LtZ;->b()Z

    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Luh;->d:Lua;

    invoke-interface {v0}, Lua;->j()V

    .line 38
    :goto_1
    iget-object v0, p0, Luh;->f:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0}, Lcom/kms/licensing/iapurchase/BillingService;->b()V

    .line 39
    return-void

    .line 27
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Luh;->d:Lua;

    iget-object v1, p0, Luh;->e:LtZ;

    invoke-virtual {v1}, LtZ;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lua;->f(I)V

    goto :goto_1
.end method
