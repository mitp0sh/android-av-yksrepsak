.class public abstract Lcom/sun/istack/Pool$Impl;
.super Ljava/lang/Object;
.source "Pool.java"

# interfaces
.implements Lcom/sun/istack/Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/istack/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/istack/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile queue:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/sun/istack/Pool$Impl;, "Lcom/sun/istack/Pool$Impl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/sun/istack/Pool$Impl;, "Lcom/sun/istack/Pool$Impl<TT;>;"
    iget-object v2, p0, Lcom/sun/istack/Pool$Impl;->queue:Ljava/lang/ref/WeakReference;

    .line 65
    .local v2, "q":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ConcurrentLinkedQueue<TT;>;>;"
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    .local v0, "d":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TT;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 75
    .end local v0    # "d":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TT;>;"
    .local v1, "d":Ljava/lang/Object;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TT;>;"
    :goto_0
    return-object v1

    .line 72
    .end local v1    # "d":Ljava/lang/Object;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TT;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 73
    .restart local v0    # "d":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TT;>;"
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sun/istack/Pool$Impl;->queue:Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 75
    .restart local v1    # "d":Ljava/lang/Object;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TT;>;"
    goto :goto_0
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final recycle(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/sun/istack/Pool$Impl;, "Lcom/sun/istack/Pool$Impl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/sun/istack/Pool$Impl;->getQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public final take()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/sun/istack/Pool$Impl;, "Lcom/sun/istack/Pool$Impl<TT;>;"
    invoke-direct {p0}, Lcom/sun/istack/Pool$Impl;->getQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "t":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/sun/istack/Pool$Impl;->create()Ljava/lang/Object;

    move-result-object v0

    .line 53
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method
