.class public final Lxf;
.super LwM;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, LwM;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 44
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x2

    .line 50
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
