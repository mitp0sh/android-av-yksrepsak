.class public Lcom/kms/antivirus/AvSynchronizedQueue;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x5899339639322bf0L


# instance fields
.field private mActive:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kms/antivirus/AvSynchronizedQueue;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lmt;

    invoke-virtual {p0, p1}, Lcom/kms/antivirus/AvSynchronizedQueue;->add(Lmt;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized add(Lmt;)Z
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kms/antivirus/AvSynchronizedQueue;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 40
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 36
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/kms/antivirus/AvSynchronizedQueue;->poll()Lmt;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized poll()Lmt;
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/antivirus/AvSynchronizedQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kms/antivirus/AvSynchronizedQueue;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    goto :goto_0

    .line 28
    :cond_0
    :try_start_2
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setActive(Z)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kms/antivirus/AvSynchronizedQueue;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    return-void
.end method
