.class public final LwZ;
.super LwM;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, LwM;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 34
    rem-int/lit8 v1, p1, 0x64

    .line 35
    rem-int/lit8 v2, p1, 0xa

    .line 37
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 47
    :goto_0
    return v0

    .line 41
    :cond_0
    if-lt v2, v0, :cond_2

    const/4 v0, 0x4

    if-gt v2, v0, :cond_2

    const/16 v0, 0xc

    if-lt v1, v0, :cond_1

    const/16 v0, 0xe

    if-le v1, v0, :cond_2

    .line 43
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
