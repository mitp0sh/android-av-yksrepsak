.class public abstract Lvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LvA;


# instance fields
.field private a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lvw;->a:Ljava/util/Set;

    .line 17
    return-void
.end method


# virtual methods
.method protected final a(III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lvw;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 36
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method protected final a(IIILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lvw;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 42
    const/16 v2, 0x8

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lvw;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lvw;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method
