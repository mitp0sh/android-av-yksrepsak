.class public final Ltp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lay;


# instance fields
.field private a:Laz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lto;

    invoke-direct {v0}, Lto;-><init>()V

    iput-object v0, p0, Ltp;->a:Laz;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 28
    const-class v1, LsL;

    monitor-enter v1

    .line 29
    :try_start_0
    invoke-static {}, LsL;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 30
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 37
    const-class v1, LsL;

    monitor-enter v1

    .line 38
    :try_start_0
    invoke-static {}, LsL;->d()Z

    move-result v0

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Ltp;->a:Laz;

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final k()Laz;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ltp;->a:Laz;

    return-object v0
.end method
