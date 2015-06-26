.class public final Lig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic;


# instance fields
.field private a:Landroid/net/LocalSocket;

.field private b:Lie;


# direct methods
.method public constructor <init>(Lie;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lig;->a:Landroid/net/LocalSocket;

    .line 24
    iput-object p1, p0, Lig;->b:Lie;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lig;->a:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, p1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 100
    return-void
.end method

.method public final a([B)V
    .locals 2

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lig;->a:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 80
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lig;->b:Lie;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lig;->b:Lie;

    invoke-interface {v1, p0}, Lie;->b(Lic;)V

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a()[B
    .locals 7

    .prologue
    const/16 v5, 0x18

    const/4 v0, 0x0

    .line 29
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    :try_start_0
    iget-object v2, p0, Lig;->a:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 33
    const/16 v3, 0x18

    new-array v3, v3, [B

    .line 38
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 39
    if-eq v4, v5, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 45
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    new-instance v6, Lik;

    invoke-direct {v6}, Lik;-><init>()V

    .line 47
    invoke-static {v6, v5}, Lin;->a(Lik;Ljava/nio/ByteBuffer;)I

    .line 48
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 50
    iget v3, v6, Lik;->f:I

    new-array v3, v3, [B

    .line 53
    :cond_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 54
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 55
    add-int/2addr v0, v4

    .line 58
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 59
    iget v4, v6, Lik;->f:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v4, :cond_1

    .line 72
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lig;->b:Lie;

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p0, Lig;->b:Lie;

    invoke-interface {v1, p0}, Lie;->b(Lic;)V

    .line 67
    :cond_3
    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lig;->a:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 105
    iget-object v0, p0, Lig;->a:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 106
    iget-object v0, p0, Lig;->a:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 107
    return-void
.end method
