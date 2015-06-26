.class final LgX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LgU;


# direct methods
.method constructor <init>(LgU;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, LgX;->a:LgU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, LgX;->a:LgU;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, LgX;->a:LgU;

    invoke-static {v0}, LgU;->e(LgU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, LgX;->a:LgU;

    invoke-static {v0}, LgU;->c(LgU;)Lhj;

    move-result-object v0

    invoke-virtual {v0}, Lhj;->c()V

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
