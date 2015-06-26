.class public final Lhu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lhv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lhv;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lhu;->a:Lhv;

    .line 31
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;LiH;)V
    .locals 4

    .prologue
    .line 13
    const-class v1, Lhu;

    monitor-enter v1

    const/4 v0, 0x0

    .line 14
    :try_start_0
    sget-object v2, Lhu;->a:Lhv;

    if-nez v2, :cond_1

    .line 15
    const-class v2, Lhu;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    sget-object v3, Lhu;->a:Lhv;

    if-nez v3, :cond_0

    .line 17
    new-instance v0, Lhv;

    invoke-direct {v0}, Lhv;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Lhv;->a(Landroid/content/Context;)V

    .line 19
    sput-object v0, Lhu;->a:Lhv;

    .line 20
    const/4 v0, 0x1

    .line 22
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    :try_start_2
    invoke-static {}, Lhu;->a()Lhv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhv;->a(LiH;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :cond_2
    monitor-exit v1

    return-void

    .line 22
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
