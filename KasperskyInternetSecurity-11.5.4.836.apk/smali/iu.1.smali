.class public final Liu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Liu;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Liu;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 61
    goto :goto_0

    .line 64
    :cond_3
    check-cast p1, Liu;

    .line 65
    iget v2, p0, Liu;->a:I

    iget v3, p1, Liu;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Liu;->b:I

    iget v3, p1, Liu;->b:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Liu;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Liu;->b:I

    add-int/2addr v0, v1

    .line 74
    return v0
.end method
