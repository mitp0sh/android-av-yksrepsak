.class final LcC;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:LcK;

.field private c:Ljava/nio/channels/ServerSocketChannel;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LcC;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(LcK;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-object p1, p0, LcC;->b:LcK;

    .line 25
    new-instance v0, LcD;

    invoke-direct {v0, p0}, LcD;-><init>(LcC;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LcC;->d:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 14
    sget-object v0, LcC;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    invoke-virtual {p0}, LcC;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    .line 58
    iget-object v0, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 59
    iget-object v0, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, LcC;->b:LcK;

    invoke-interface {v2}, LcK;->e()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 63
    :goto_0
    iget-object v0, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, LcC;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn;

    iget-object v3, p0, LcC;->b:LcK;

    iget-object v4, p0, LcC;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v0, v3, v4}, Lcn;-><init>(Ljava/nio/channels/SocketChannel;LcK;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    iget-object v0, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    .line 81
    :try_start_1
    iget-object v0, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    :cond_0
    :goto_1
    iget-object v0, p0, LcC;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    return-void

    .line 67
    :cond_1
    :try_start_2
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    iget-object v1, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_2

    .line 81
    :try_start_3
    iget-object v1, p0, LcC;->c:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 88
    :cond_2
    :goto_2
    iget-object v1, p0, LcC;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method
