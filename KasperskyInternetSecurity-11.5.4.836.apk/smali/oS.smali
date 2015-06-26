.class public final LoS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Ll;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "ipm.url"

    invoke-interface {p1, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LoS;->a:Z

    .line 15
    return-void
.end method


# virtual methods
.method public final a()LL;
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 30
    new-instance v1, LL;

    invoke-direct {v1}, LL;-><init>()V

    .line 31
    invoke-virtual {v0}, Lsj;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LL;->a(J)V

    .line 32
    invoke-virtual {v0}, Lsj;->x()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LL;->b(J)V

    .line 33
    iget-boolean v0, p0, LoS;->a:Z

    invoke-virtual {v1, v0}, LL;->a(Z)V

    .line 34
    return-object v1
.end method

.method public final a(LL;)V
    .locals 4

    .prologue
    .line 19
    const-class v1, Lsj;

    monitor-enter v1

    .line 20
    :try_start_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, LL;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lsj;->a(J)V

    .line 22
    invoke-virtual {p1}, LL;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lsj;->b(J)V

    .line 23
    invoke-virtual {v0}, Lsj;->g_()V

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
