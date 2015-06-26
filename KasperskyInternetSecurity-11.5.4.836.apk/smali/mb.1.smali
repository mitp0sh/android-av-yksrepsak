.class public final Lmb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lmb;

.field private static c:Lma;


# instance fields
.field private volatile b:LlZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lmb;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lmb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmb;->a:Lmb;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lmb;

    invoke-direct {v0}, Lmb;-><init>()V

    sput-object v0, Lmb;->a:Lmb;

    .line 17
    :cond_0
    sget-object v0, Lmb;->a:Lmb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 33
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lmb;->b:LlZ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmb;->b:LlZ;

    invoke-virtual {v0}, LlZ;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    if-eqz p1, :cond_2

    .line 39
    iget-object v0, p0, Lmb;->b:LlZ;

    invoke-virtual {v0}, LlZ;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    iget-object v0, p0, Lmb;->b:LlZ;

    invoke-virtual {v0}, LlZ;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, LlZ;

    invoke-direct {v0, p1}, LlZ;-><init>(Z)V

    iput-object v0, p0, Lmb;->b:LlZ;

    .line 51
    iget-object v0, p0, Lmb;->b:LlZ;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LlZ;->setPriority(I)V

    .line 52
    iget-object v0, p0, Lmb;->b:LlZ;

    invoke-virtual {v0}, LlZ;->start()V

    .line 53
    sget-object v0, Lmb;->c:Lma;

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lmb;->c:Lma;

    invoke-virtual {v0}, Lma;->a()V

    .line 57
    :cond_1
    new-instance v0, Lma;

    iget-object v1, p0, Lmb;->b:LlZ;

    invoke-direct {v0, v1}, Lma;-><init>(LlZ;)V

    sput-object v0, Lmb;->c:Lma;

    .line 58
    monitor-exit p0

    :goto_1
    return-void

    .line 47
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmb;->a(Z)V

    .line 24
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmb;->a(Z)V

    .line 29
    return-void
.end method
