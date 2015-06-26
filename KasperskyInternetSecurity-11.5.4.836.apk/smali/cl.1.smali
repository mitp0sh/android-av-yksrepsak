.class public final Lcl;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/channels/Selector;

.field private final b:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcl;->b:Ljava/nio/channels/SocketChannel;

    .line 22
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcl;->a:Ljava/nio/channels/Selector;

    .line 23
    iget-object v0, p0, Lcl;->b:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcl;->a:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

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
    iget-object v0, p0, Lcl;->a:Ljava/nio/channels/Selector;

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

.method public final declared-synchronized read()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 35
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [B

    .line 36
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcl;->read([BII)I

    move-result v2

    .line 37
    if-eq v2, v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    :cond_0
    monitor-exit p0

    return v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    .line 46
    iget-object v0, p0, Lcl;->b:Ljava/nio/channels/SocketChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 48
    monitor-exit p0

    return v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
