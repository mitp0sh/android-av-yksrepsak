.class public final Lcm;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/channels/Selector;

.field private final b:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcm;->b:Ljava/nio/channels/SocketChannel;

    .line 22
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcm;->a:Ljava/nio/channels/Selector;

    .line 23
    iget-object v0, p0, Lcm;->b:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcm;->a:Ljava/nio/channels/Selector;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 24
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcm;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    .line 36
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    invoke-virtual {p0, v0}, Lcm;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcm;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 48
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 50
    iget-object v2, p0, Lcm;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/kaspersky/components/webfilter/ConnectionClosedException;

    invoke-direct {v0}, Lcom/kaspersky/components/webfilter/ConnectionClosedException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_0
    monitor-exit p0

    return-void
.end method
