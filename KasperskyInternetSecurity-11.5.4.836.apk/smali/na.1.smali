.class public final Lna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LmV;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna;->a:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 17
    iget-object v0, p0, Lna;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmV;

    .line 18
    invoke-interface {v0, p1}, LmV;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(LmV;)Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lna;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
