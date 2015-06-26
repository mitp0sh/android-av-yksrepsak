.class public Lcom/kaspersky/components/ucp/UcpConnectClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaX;


# instance fields
.field private a:I

.field private final b:Ljava/util/HashSet;

.field private final c:Ljava/util/HashSet;

.field private volatile mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpConnectClient;->nativeClassInit()V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->b:Ljava/util/HashSet;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lcom/kaspersky/components/ucp/UcpConnectClient;->init(I)V

    .line 24
    return-void
.end method

.method private synchronized native declared-synchronized getStatus()I
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method

.method private onAccountCreationFailed(I)V
    .locals 3

    .prologue
    .line 93
    iput p1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->a:I

    .line 98
    iget-object v1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS;

    .line 100
    invoke-interface {v0, p1}, LaS;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private onAccountStatusChanged(ZJ)V
    .locals 4

    .prologue
    .line 76
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 82
    iget-object v2, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS;

    .line 84
    invoke-interface {v0, p1, v1}, LaS;->a(ZLjava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private onConnectionStatusChanged(I)V
    .locals 4

    .prologue
    .line 63
    invoke-static {p1}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->valueOf(I)Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->b:Ljava/util/HashSet;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    .line 67
    invoke-interface {v0, v1}, LaY;->a(Lcom/kaspersky/components/ucp/UcpConnectionStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private onRegistrationFailed(I)V
    .locals 3

    .prologue
    .line 109
    iput p1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->a:I

    .line 114
    iget-object v1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS;

    .line 116
    invoke-interface {v0, p1}, LaS;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a()Lcom/kaspersky/components/ucp/UcpConnectionStatus;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kaspersky/components/ucp/UcpConnectClient;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->valueOf(I)Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public final a(LaS;)V
    .locals 2

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(LaY;)V
    .locals 2

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LaS;)V
    .locals 2

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LaY;)V
    .locals 2

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/ucp/UcpConnectClient;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public synchronized native declared-synchronized createNewAccount(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public synchronized native declared-synchronized registerAccount(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public synchronized native declared-synchronized requestAccountStatusUpdate()V
.end method

.method public synchronized native declared-synchronized unregisterAccount()V
.end method
