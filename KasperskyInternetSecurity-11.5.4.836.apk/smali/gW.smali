.class final LgW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LgV;


# direct methods
.method constructor <init>(LgV;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, LgW;->a:LgV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, LgW;->a:LgV;

    iget-object v0, v0, LgV;->a:LgU;

    invoke-static {v0}, LgU;->b(LgU;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, LgW;->a:LgV;

    iget-object v0, v0, LgV;->a:LgU;

    invoke-static {v0}, LgU;->c(LgU;)Lhj;

    move-result-object v0

    invoke-virtual {v0}, Lhj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, LgW;->a:LgV;

    iget-object v0, v0, LgV;->a:LgU;

    invoke-static {v0}, LgU;->d(LgU;)V

    .line 68
    :cond_0
    iget-object v0, p0, LgW;->a:LgV;

    iget-object v0, v0, LgV;->a:LgU;

    invoke-static {v0}, LgU;->b(LgU;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, LgW;->a:LgV;

    iget-object v0, v0, LgV;->a:LgU;

    invoke-static {v0}, LgU;->d(LgU;)V

    .line 71
    :cond_1
    return-void
.end method
