.class public final LdU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, LdU;->a:I

    iput p2, p0, LdU;->b:I

    .line 7
    return-void
.end method

.method static a([LdU;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 12
    move v1, v0

    move v2, v0

    .line 14
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 15
    aget-object v3, p0, v0

    .line 16
    iget v4, v3, LdU;->b:I

    iget v3, v3, LdU;->a:I

    mul-int/2addr v3, v4

    .line 17
    const v4, 0x12c000

    if-lt v4, v3, :cond_0

    if-le v3, v1, :cond_0

    move v1, v3

    move v2, v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    return v2
.end method
