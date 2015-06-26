.class public final Lin;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lik;Ljava/nio/ByteBuffer;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lik;->a:I

    .line 12
    iget v2, p0, Lik;->a:I

    if-ne v2, v0, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lik;->c:I

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lik;->d:I

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lik;->e:Z

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lik;->b:I

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lik;->f:I

    .line 18
    const/16 v1, 0x18

    .line 22
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 15
    goto :goto_0
.end method
