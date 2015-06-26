.class public final Lfd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 1

    .prologue
    .line 15
    if-ge p0, p1, :cond_1

    .line 17
    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 28
    :cond_1
    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_2

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method
