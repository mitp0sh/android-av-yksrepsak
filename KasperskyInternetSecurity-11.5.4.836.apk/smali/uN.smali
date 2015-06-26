.class public final LuN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LuN;

.field private static b:LuO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, LuN;->a:LuN;

    .line 11
    sput-object v0, LuN;->b:LuO;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, LuO;->getInstance()LuO;

    move-result-object v0

    sput-object v0, LuN;->b:LuO;

    .line 23
    return-void
.end method

.method public static a()LuN;
    .locals 1

    .prologue
    .line 14
    sget-object v0, LuN;->a:LuN;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, LuN;

    invoke-direct {v0}, LuN;-><init>()V

    sput-object v0, LuN;->a:LuN;

    .line 17
    :cond_0
    sget-object v0, LuN;->a:LuN;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 28
    const/16 v1, 0xa

    sget-object v2, LuN;->b:LuO;

    invoke-virtual {v2, p1}, LuO;->getCurrentAutoSyncState(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 29
    invoke-virtual {v0}, Lsm;->g_()V

    .line 31
    sget-object v0, LuN;->b:LuO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LuO;->toggleAutoSync(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 38
    sget-object v1, LuN;->b:LuO;

    invoke-virtual {v0}, Lsm;->k()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, LuO;->toggleAutoSync(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
