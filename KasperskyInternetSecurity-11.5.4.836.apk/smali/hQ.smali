.class public final LhQ;
.super LhZ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, LhZ;-><init>(Ljava/nio/ByteBuffer;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected final a(Z)LhP;
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, LhQ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 16
    new-instance v0, Lcom/kavsdk/remoting/protocol/WrongCastException;

    invoke-direct {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;-><init>()V

    throw v0

    .line 18
    :cond_0
    iget-object v0, p0, LhQ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 19
    new-instance v0, Lcom/kavsdk/remoting/protocol/WrongCastException;

    invoke-direct {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;-><init>()V

    throw v0

    .line 21
    :cond_1
    iget-object v0, p0, LhQ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 22
    iget-object v0, p0, LhQ;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 24
    :goto_0
    new-instance v2, LhP;

    invoke-direct {v2, v1, v0}, LhP;-><init>(IZ)V

    return-object v2

    .line 22
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
