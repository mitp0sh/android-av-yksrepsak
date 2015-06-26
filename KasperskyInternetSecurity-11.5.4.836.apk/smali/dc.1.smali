.class public abstract Ldc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LcS;
.implements Ljava/lang/Runnable;


# static fields
.field private static synthetic h:Z


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Ldm;

.field private e:Landroid/os/PowerManager$WakeLock;

.field private f:Z

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Ldc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldc;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/Executor;Ldm;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ldc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc;->f:Z

    .line 29
    iput-object p1, p0, Ldc;->a:Ljava/io/File;

    .line 30
    iput-object p3, p0, Ldc;->d:Ldm;

    .line 31
    iput-object p2, p0, Ldc;->c:Ljava/util/concurrent/Executor;

    .line 32
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ldc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Ldc;->d:Ldm;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_0
    iget-object v0, p0, Ldc;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Ldc;->d:Ldm;

    invoke-interface {v0, p0}, Ldm;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/LinkedHashSet;)Z
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/QueueItem;

    .line 161
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getStatus()Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    move-result-object v0

    sget-object v2, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    if-ne v0, v2, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/LinkedHashSet;)V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/QueueItem;

    .line 170
    sget-object v2, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/antitheft/QueueItem;->setStatus(Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;)V

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method private b([Lcom/kaspersky/kts/antitheft/QueueItem;)V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Ldc;->a:Ljava/io/File;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 221
    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 223
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v2, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v2, v0}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    .line 230
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Ldc;->a:Ljava/io/File;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 176
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_0
    monitor-exit v1

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc;->g:Z

    .line 39
    return-void
.end method

.method public final a([Lcom/kaspersky/kts/antitheft/QueueItem;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ldc;->b([Lcom/kaspersky/kts/antitheft/QueueItem;)V

    .line 46
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/QueueItem;->isNetworkDependant()Z

    move-result v0

    invoke-direct {p0, v0}, Ldc;->a(Z)V

    .line 47
    return-void
.end method

.method protected abstract a(Lcom/kaspersky/kts/antitheft/QueueItem;)Z
.end method

.method final b()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ldc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldc;->a(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method protected final b(Lcom/kaspersky/kts/antitheft/QueueItem;)V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Ldc;->a:Ljava/io/File;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 187
    sget-boolean v2, Ldc;->h:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 188
    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    :cond_2
    iget-object v0, p0, Ldc;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 196
    :goto_0
    monitor-exit v1

    return-void

    .line 195
    :cond_3
    iget-object v2, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v2, v0}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected final c()Ldm;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ldc;->d:Ldm;

    return-object v0
.end method

.method protected final c(Lcom/kaspersky/kts/antitheft/QueueItem;)V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Ldc;->a:Ljava/io/File;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :cond_0
    iget-object v0, p0, Ldc;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 215
    :goto_0
    monitor-exit v1

    return-void

    .line 211
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    iget-object v2, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v2, v0}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 84
    iget-object v0, p0, Ldc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "AntiThiefQueueImplWakeLock"

    invoke-static {v0, v2}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Ldc;->e:Landroid/os/PowerManager$WakeLock;

    .line 99
    :goto_1
    :try_start_0
    iget-object v2, p0, Ldc;->a:Ljava/io/File;

    monitor-enter v2
    :try_end_0
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    iget-object v0, p0, Ldc;->a:Ljava/io/File;

    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 101
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-eqz v0, :cond_6

    .line 106
    :try_start_2
    iget-boolean v2, p0, Ldc;->f:Z

    if-eqz v2, :cond_1

    .line 110
    invoke-static {v0}, Ldc;->b(Ljava/util/LinkedHashSet;)V

    .line 111
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldc;->f:Z

    .line 115
    :cond_1
    invoke-static {v0}, Ldc;->a(Ljava/util/LinkedHashSet;)Z

    move-result v2

    .line 116
    if-eqz v2, :cond_6

    .line 117
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/QueueItem;

    .line 120
    iget-boolean v3, p0, Ldc;->g:Z

    if-nez v3, :cond_5

    .line 123
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getStatus()Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    move-result-object v3

    .line 129
    sget-object v4, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    if-ne v3, v4, :cond_3

    .line 130
    invoke-virtual {p0, v0}, Ldc;->a(Lcom/kaspersky/kts/antitheft/QueueItem;)Z

    move-result v1

    .line 131
    if-eqz v1, :cond_8

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getStatus()Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    move-result-object v4

    sget-object v5, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    if-ne v4, v5, :cond_4

    .line 136
    invoke-virtual {p0, v0}, Ldc;->b(Lcom/kaspersky/kts/antitheft/QueueItem;)V
    :try_end_2
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_3
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/WrongSynchDataException;->printStackTrace()V

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Critical error. Reintsall application or delete its data."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    .line 153
    iget-object v1, p0, Ldc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v1, p0, Ldc;->e:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 155
    iput-object v7, p0, Ldc;->e:Landroid/os/PowerManager$WakeLock;

    throw v0

    .line 101
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    iget-object v0, p0, Ldc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Ldc;->e:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 155
    iput-object v7, p0, Ldc;->e:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 137
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getStatus()Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    move-result-object v4

    sget-object v5, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->RUNNING:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->RUNNING:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    if-eq v3, v4, :cond_2

    .line 139
    invoke-virtual {p0, v0}, Ldc;->c(Lcom/kaspersky/kts/antitheft/QueueItem;)V
    :try_end_6
    .catch Lcom/kaspersky/kts/antitheft/WrongSynchDataException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_5
    move v0, v1

    .line 142
    :goto_3
    if-nez v0, :cond_7

    .line 153
    :cond_6
    iget-object v0, p0, Ldc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Ldc;->e:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 155
    iput-object v7, p0, Ldc;->e:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    :cond_7
    move v1, v0

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_3
.end method
