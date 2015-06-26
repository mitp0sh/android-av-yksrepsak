.class public final LhW;
.super LhX;
.source "SourceFile"


# instance fields
.field private c:Lic;

.field private d:Ljava/nio/ByteBuffer;

.field private e:I

.field private f:LhP;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(LhT;LhP;Lic;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, LhX;-><init>(LhT;)V

    .line 18
    iput v0, p0, LhW;->g:I

    .line 19
    iput-boolean v0, p0, LhW;->h:Z

    .line 23
    iput-object p1, p0, LhW;->b:LhT;

    .line 24
    iput-object p3, p0, LhW;->c:Lic;

    .line 25
    iput-object p2, p0, LhW;->f:LhP;

    .line 26
    iput p4, p0, LhW;->e:I

    .line 27
    return-void
.end method

.method private e()[B
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lik;

    iget v1, p0, LhW;->e:I

    const/4 v2, 0x0

    iget-object v3, p0, LhW;->f:LhP;

    iget v3, v3, LhP;->a:I

    iget-object v4, p0, LhW;->f:LhP;

    iget-boolean v4, v4, LhP;->b:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lik;-><init>(IIIZ)V

    .line 31
    iget-object v1, p0, LhW;->a:LhR;

    invoke-virtual {v1, v0}, LhR;->a(Lik;)V

    .line 32
    iget-object v0, p0, LhW;->a:LhR;

    invoke-virtual {v0}, LhR;->a()[B

    move-result-object v0

    return-object v0
.end method

.method private static f()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/kavsdk/remoting/IllegalCallException;

    invoke-direct {v0}, Lcom/kavsdk/remoting/IllegalCallException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()LhK;
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, LhW;->a(Ljava/lang/Runnable;)LhK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)LhK;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 43
    invoke-static {}, LhW;->f()V

    .line 45
    :cond_0
    invoke-direct {p0}, LhW;->e()[B

    move-result-object v2

    .line 48
    const/4 v3, 0x0

    iput-object v3, p0, LhW;->d:Ljava/nio/ByteBuffer;

    .line 49
    iget-object v3, p0, LhW;->b:LhT;

    invoke-virtual {v3, p0, v2, p1}, LhT;->a(LhM;[BLjava/lang/Runnable;)V

    .line 50
    iget-object v2, p0, LhW;->d:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 51
    iget-object v0, p0, LhW;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 52
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    iget-boolean v0, p0, LhW;->h:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget-object v0, p0, LhW;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 60
    new-instance v0, LhQ;

    invoke-direct {v0, v2}, LhQ;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, LhW;->d:Ljava/nio/ByteBuffer;

    .line 86
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, LhW;->e:I

    .line 78
    iget-object v0, p0, LhW;->c:Lic;

    invoke-direct {p0}, LhW;->e()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lic;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, LhW;->e:I

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, LhW;->h:Z

    .line 96
    return-void
.end method
