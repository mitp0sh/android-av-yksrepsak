.class final LgV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LgU;


# direct methods
.method constructor <init>(LgU;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, LgV;->a:LgU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, LgV;->a:LgU;

    const/4 v1, 0x0

    iput-boolean v1, v0, LgU;->a:Z

    .line 57
    iget-object v0, p0, LgV;->a:LgU;

    invoke-static {v0}, LgU;->a(LgU;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LgW;

    invoke-direct {v1, p0}, LgW;-><init>(LgV;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
