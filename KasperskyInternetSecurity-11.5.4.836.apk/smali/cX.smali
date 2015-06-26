.class final LcX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm;


# instance fields
.field private synthetic a:LcW;


# direct methods
.method constructor <init>(LcW;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, LcX;->a:LcW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, LcX;->a:LcW;

    invoke-static {v0}, LcW;->a(LcW;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, LcX;->a:LcW;

    invoke-static {v0}, LcW;->a(LcW;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
