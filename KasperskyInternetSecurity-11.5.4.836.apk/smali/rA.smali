.class public final LrA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx;


# instance fields
.field private final a:Lrx;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LrA;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LrA;->c:Ljava/util/concurrent/ExecutorService;

    .line 22
    iput-object p1, p0, LrA;->a:Lrx;

    .line 23
    return-void
.end method

.method static synthetic a(LrA;)Lrx;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, LrA;->a:Lrx;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lrz;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LrA;->a:Lrx;

    invoke-interface {v0, p1, p2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 28
    return-void
.end method

.method public final a(Lrw;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, LrB;

    invoke-direct {v0, p0, p1}, LrB;-><init>(LrA;Lrw;)V

    .line 44
    instance-of v1, p1, Lkk;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, LrA;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, LrA;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lrz;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LrA;->a:Lrx;

    invoke-interface {v0, p1}, Lrx;->a(Lrz;)V

    .line 33
    return-void
.end method
