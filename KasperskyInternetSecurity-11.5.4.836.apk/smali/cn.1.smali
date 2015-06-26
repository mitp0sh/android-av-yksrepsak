.class final Lcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/nio/channels/SocketChannel;

.field private final b:LcK;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Ljava/nio/channels/SocketChannel;LcK;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    .line 29
    iput-object p2, p0, Lcn;->b:LcK;

    .line 30
    iput-object p3, p0, Lcn;->c:Ljava/util/concurrent/ExecutorService;

    .line 31
    iget-object v0, p0, Lcn;->b:LcK;

    invoke-interface {v0}, LcK;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcn;->d:Ljava/net/InetSocketAddress;

    .line 32
    return-void
.end method

.method private a(Lcom/kaspersky/components/webfilter/Request;)Ljava/nio/channels/SocketChannel;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-virtual {p1}, Lcom/kaspersky/components/webfilter/Request;->i()LcI;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lcn;->b:LcK;

    invoke-interface {v0}, LcK;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {v1}, LcI;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 74
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, LcI;->c()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 81
    :cond_0
    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 83
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 84
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 87
    return-object v0
.end method

.method private static a(LcI;Ljava/io/OutputStream;)V
    .locals 6

    .prologue
    .line 131
    invoke-virtual {p0}, LcI;->a()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v1, 0x0

    .line 136
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    .line 139
    const-string v2, "HTTP/1.1 200 OK\nContent-Type: %s; Date: Wed, 30 Nov 2011 12:38:20 GMT\nConnection: close\n\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 141
    :cond_0
    invoke-static {v0, p1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 147
    :cond_2
    throw v0

    .line 145
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Lcom/kaspersky/components/webfilter/Request;Lcu;)V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/kaspersky/components/webfilter/Request;->i()LcI;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, LcI;->b()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 93
    invoke-virtual {p2}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcn;->a(LcI;Ljava/io/OutputStream;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn;->b(Lcom/kaspersky/components/webfilter/Request;Lcu;)V

    goto :goto_0
.end method

.method private b(Lcom/kaspersky/components/webfilter/Request;Lcu;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 100
    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Lcn;->a(Lcom/kaspersky/components/webfilter/Request;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 107
    :try_start_1
    new-instance v0, Lcl;

    invoke-direct {v0, v3}, Lcl;-><init>(Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :try_start_2
    new-instance v2, Lcm;

    invoke-direct {v2, v3}, Lcm;-><init>(Ljava/nio/channels/SocketChannel;)V
    :try_end_2
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :try_start_3
    invoke-virtual {p1}, Lcom/kaspersky/components/webfilter/Request;->h()Lcom/kaspersky/components/webfilter/Request$Method;

    move-result-object v1

    sget-object v4, Lcom/kaspersky/components/webfilter/Request$Method;->CONNECT:Lcom/kaspersky/components/webfilter/Request$Method;

    if-ne v1, v4, :cond_0

    .line 111
    new-instance v1, Lcu;

    invoke-direct {v1, v0, v2}, Lcu;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcn;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, p2, v1, v4}, Lct;->a(Lcom/kaspersky/components/webfilter/Request;Lcu;Lcu;Ljava/util/concurrent/ExecutorService;)V
    :try_end_3
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 123
    :goto_0
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 125
    invoke-static {v3}, LcF;->a(Ljava/io/Closeable;)V

    .line 127
    :goto_1
    return-void

    .line 113
    :cond_0
    :try_start_4
    new-instance v1, Lcu;

    invoke-direct {v1, v0, v2}, Lcu;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {p1, p2, v1}, Lco;->a(Lcom/kaspersky/components/webfilter/Request;Lcu;Lcu;)V
    :try_end_4
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    :goto_2
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 125
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    :goto_3
    :try_start_5
    invoke-virtual {p2}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v1

    const-string v4, "HTTP/1.1 404 Not found\nContent-Type: text/html; Date: Wed, 30 Nov 2011 12:38:20 GMT\nConnection: close\n\n404 Not found"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 123
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 125
    invoke-static {v3}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 123
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    :goto_4
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 125
    invoke-static {v3}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 125
    invoke-static {v3}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    .line 123
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v2, v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    .line 118
    :catch_6
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v2, v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3

    .line 123
    :catch_9
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_2

    :catch_a
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_b
    move-exception v2

    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    .line 40
    :try_start_0
    iget-object v0, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 41
    iget-object v0, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 43
    new-instance v2, Lcl;

    iget-object v0, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    invoke-direct {v2, v0}, Lcl;-><init>(Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    new-instance v0, Lcm;

    iget-object v5, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    invoke-direct {v0, v5}, Lcm;-><init>(Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :cond_0
    :try_start_2
    new-instance v5, Lcom/kaspersky/components/webfilter/Request;

    iget-object v1, p0, Lcn;->d:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    invoke-direct {v5, v2, v1}, Lcom/kaspersky/components/webfilter/Request;-><init>(Ljava/io/InputStream;Z)V

    .line 51
    iget-object v1, p0, Lcn;->b:LcK;

    invoke-interface {v1, v5, v0}, LcK;->a(Lcom/kaspersky/components/webfilter/Request;Ljava/io/OutputStream;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 52
    new-instance v1, Lcu;

    invoke-direct {v1, v2, v0}, Lcu;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {p0, v5, v1}, Lcn;->a(Lcom/kaspersky/components/webfilter/Request;Lcu;)V

    .line 56
    invoke-virtual {v5}, Lcom/kaspersky/components/webfilter/Request;->c()Z
    :try_end_2
    .catch Lcom/kaspersky/components/webfilter/ConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :cond_1
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 63
    iget-object v0, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 64
    :goto_1
    return-void

    :cond_2
    move v1, v4

    .line 48
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 61
    :goto_2
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 63
    iget-object v0, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 61
    :goto_3
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 63
    iget-object v0, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 63
    iget-object v1, p0, Lcn;->a:Ljava/nio/channels/SocketChannel;

    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    .line 61
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 58
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_3

    .line 57
    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method
