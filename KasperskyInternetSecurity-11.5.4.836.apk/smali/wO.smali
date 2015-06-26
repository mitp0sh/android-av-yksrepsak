.class public final LwO;
.super LwM;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, LwM;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xb

    const/4 v0, 0x2

    .line 41
    rem-int/lit8 v1, p1, 0x64

    .line 42
    rem-int/lit8 v2, p1, 0xa

    .line 44
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eq v1, v4, :cond_0

    .line 58
    :goto_0
    return v0

    .line 48
    :cond_0
    if-lt v2, v0, :cond_2

    const/4 v0, 0x4

    if-gt v2, v0, :cond_2

    const/16 v0, 0xc

    if-lt v1, v0, :cond_1

    if-le v1, v5, :cond_2

    .line 50
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 52
    :cond_2
    if-eqz v2, :cond_4

    const/4 v0, 0x5

    if-lt v2, v0, :cond_3

    const/16 v0, 0x9

    if-le v2, v0, :cond_4

    :cond_3
    if-lt v1, v4, :cond_5

    if-gt v1, v5, :cond_5

    .line 54
    :cond_4
    const/16 v0, 0x10

    goto :goto_0

    .line 58
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
