.class public final LiV;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIIII)I
    .locals 1

    .prologue
    .line 18
    if-eqz p0, :cond_0

    .line 27
    :goto_0
    return p0

    .line 21
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    .line 22
    const p0, 0x1030054

    goto :goto_0

    .line 24
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    .line 25
    const p0, 0x103007f

    goto :goto_0

    .line 27
    :cond_2
    const p0, 0x103013e

    goto :goto_0
.end method
