.class final Ldb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/os/PowerManager$WakeLock;

.field private synthetic b:Lda;


# direct methods
.method constructor <init>(Lda;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Ldb;->b:Lda;

    iput-object p2, p0, Ldb;->a:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 350
    .line 353
    :try_start_0
    iget-object v0, p0, Ldb;->b:Lda;

    iget-object v0, v0, Lda;->a:LcW;

    invoke-static {v0}, LcW;->a(LcW;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ldb;->b:Lda;

    iget-object v2, v2, Lda;->a:LcW;

    invoke-static {v2}, LcW;->a(LcW;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    iget-object v2, p0, Ldb;->b:Lda;

    iget-object v2, v2, Lda;->a:LcW;

    invoke-static {v2}, LcW;->a(LcW;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 356
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 358
    iget-object v2, p0, Ldb;->b:Lda;

    iget-object v2, v2, Lda;->a:LcW;

    invoke-static {v2}, LcW;->c(LcW;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldb;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    throw v0

    .line 356
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :cond_0
    iget-object v0, p0, Ldb;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 361
    return-void
.end method
