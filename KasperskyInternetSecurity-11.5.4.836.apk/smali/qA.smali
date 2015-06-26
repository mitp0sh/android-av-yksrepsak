.class public final LqA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(I)I
    .locals 1

    .prologue
    .line 15
    mul-int/lit8 v0, p0, 0x25

    return v0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 10
    invoke-static {p0}, LqA;->a(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method
