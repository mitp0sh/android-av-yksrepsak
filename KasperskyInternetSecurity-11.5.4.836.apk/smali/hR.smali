.class public final LhR;
.super Lia;
.source "SourceFile"


# instance fields
.field private a:Lik;

.field private b:LhT;


# direct methods
.method public constructor <init>(LhT;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lia;-><init>()V

    .line 19
    iput-object p1, p0, LhR;->b:LhT;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lik;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, LhR;->a:Lik;

    .line 37
    return-void
.end method

.method protected final a(Ljava/nio/ByteBuffer;LhJ;)V
    .locals 2

    .prologue
    .line 41
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    iget-object v0, p0, LhR;->b:LhT;

    invoke-virtual {v0, p2}, LhT;->b(LhJ;)LhP;

    move-result-object v1

    .line 44
    iget v0, v1, LhP;->a:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    iget-boolean v0, v1, LhP;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    iget-boolean v0, v1, LhP;->b:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, LhR;->b:LhT;

    invoke-virtual {v0, p2}, LhT;->a(LhJ;)V

    .line 50
    :cond_0
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[B
    .locals 4

    .prologue
    .line 24
    invoke-super {p0}, Lia;->a()[B

    move-result-object v0

    .line 25
    array-length v1, v0

    add-int/lit8 v1, v1, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 27
    iget-object v2, p0, LhR;->a:Lik;

    array-length v3, v0

    invoke-virtual {v2, v3}, Lik;->a(I)V

    .line 28
    iget-object v2, p0, LhR;->a:Lik;

    invoke-virtual {v2}, Lik;->b()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
