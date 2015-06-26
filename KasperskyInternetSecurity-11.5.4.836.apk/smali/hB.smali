.class public final LhB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x10

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid array size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, LhB;->a:[B

    .line 17
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, LhB;->b:[B

    .line 18
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, LhB;->a:[B

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LhB;->b:[B

    return-object v0
.end method
