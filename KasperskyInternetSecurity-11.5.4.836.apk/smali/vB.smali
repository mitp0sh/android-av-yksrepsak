.class public final LvB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[LvE;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, v3, [LvE;

    iput-object v0, p0, LvB;->a:[LvE;

    .line 34
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 35
    iget-object v1, p0, LvB;->a:[LvE;

    new-instance v2, LvE;

    invoke-direct {v2, p0}, LvE;-><init>(LvB;)V

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method static synthetic a(LvB;)[LvE;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, LvB;->a:[LvE;

    return-object v0
.end method

.method private b(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, LvE;->b:Z

    .line 113
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, p1

    iput-object p2, v0, LvE;->a:LvA;

    .line 114
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, p1

    iput p3, v0, LvE;->c:I

    .line 115
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, p1

    iput-object p4, v0, LvE;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, LvD;

    invoke-direct {v0, p0}, LvD;-><init>(LvB;)V

    .line 62
    iget-object v1, p0, LvB;->a:[LvE;

    aget-object v1, v1, p1

    iget-boolean v1, v1, LvE;->b:Z

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, -0x2

    iput v1, v0, LvD;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-object v0

    .line 67
    :cond_0
    :try_start_1
    invoke-interface {p2}, LvA;->a()I

    .line 69
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, p4}, LvB;->b(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 72
    new-instance v1, LvC;

    invoke-direct {v1, p0, p1}, LvC;-><init>(LvB;I)V

    iput-object v1, v0, LvD;->b:Ljava/lang/Thread;

    .line 73
    iget-object v1, v0, LvD;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 74
    const/4 v1, 0x0

    iput v1, v0, LvD;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, p1

    iget-boolean v0, v0, LvE;->b:Z

    return v0
.end method

.method public final a(ILandroid/os/Handler;)Z
    .locals 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, LvB;->a:[LvE;

    aget-object v1, v1, p1

    iget-object v1, v1, LvE;->a:LvA;

    if-eqz v1, :cond_0

    .line 94
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, p1

    iget-object v0, v0, LvE;->a:LvA;

    invoke-interface {v0, p2}, LvA;->a(Landroid/os/Handler;)Z

    move-result v0

    .line 95
    iget-object v1, p0, LvB;->a:[LvE;

    aget-object v1, v1, p1

    iget-object v1, v1, LvE;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, LvB;->a:[LvE;

    aget-object v1, v1, p1

    iget-object v1, v1, LvE;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v2, p0, LvB;->a:[LvE;

    aget-object v2, v2, p1

    iget-object v2, v2, LvE;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    iget-object v2, p0, LvB;->a:[LvE;

    aget-object v2, v2, p1

    iget-object v2, v2, LvE;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(ILandroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, v1

    iget-object v0, v0, LvE;->a:LvA;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, v1

    iget-object v0, v0, LvE;->a:LvA;

    invoke-interface {v0, p2}, LvA;->b(Landroid/os/Handler;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, LvB;->a:[LvE;

    aget-object v1, v1, v2

    iget-boolean v1, v1, LvE;->b:Z

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, LvB;->a:[LvE;

    aget-object v0, v0, v2

    iget-object v0, v0, LvE;->a:LvA;

    invoke-interface {v0}, LvA;->d()Z

    move-result v0

    .line 89
    :cond_0
    return v0
.end method

.method public final declared-synchronized c(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LvB;->a:[LvE;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-boolean v1, v1, LvE;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 124
    :goto_0
    monitor-exit p0

    return v0

    .line 123
    :cond_0
    :try_start_1
    iget-object v1, p0, LvB;->a:[LvE;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, LvE;->a:LvA;

    invoke-interface {v1}, LvA;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
