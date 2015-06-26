.class public abstract LhZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhK;


# instance fields
.field protected a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    .line 17
    return-void
.end method

.method private a(IIZ)Z
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p3}, LhZ;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 100
    if-eq v1, p2, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 104
    :cond_1
    return v0
.end method

.method private a(IZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v1, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 87
    if-eq v1, p1, :cond_0

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, LhZ;->a(IIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    new-instance v0, Lcom/kavsdk/remoting/protocol/WrongCastException;

    invoke-direct {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v2, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c(Z)I
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, LhZ;->a(IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/kavsdk/remoting/protocol/WrongCastException;

    invoke-direct {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private d(Z)J
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x5

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, LhZ;->a(IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/kavsdk/remoting/protocol/WrongCastException;

    invoke-direct {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;-><init>()V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private e(Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 166
    new-instance v0, Lcom/kavsdk/remoting/protocol/WrongCastException;

    invoke-direct {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;-><init>()V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 169
    new-array v2, v0, [B

    .line 170
    iget-object v0, p0, LhZ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 171
    const-string v1, ""

    .line 173
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Z)LhP;
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LhZ;->b(Z)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LhZ;->c(Z)I

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LhZ;->d(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LhZ;->e(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()LhP;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LhZ;->a(Z)LhP;

    move-result-object v0

    return-object v0
.end method
