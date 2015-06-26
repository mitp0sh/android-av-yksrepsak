.class public final LfV;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 14
    new-array v0, v3, [[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [Z

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [Z

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    .line 23
    aget-object v0, v0, p1

    aget-boolean v0, v0, p0

    return v0

    .line 14
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static b(II)I
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lqq;->a()Z

    .line 30
    if-ge p0, p1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
