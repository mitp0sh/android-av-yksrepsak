.class public final LmC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LmC;


# instance fields
.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    invoke-virtual {v0}, Lsf;->a()J

    move-result-wide v0

    iput-wide v0, p0, LmC;->b:J

    .line 17
    return-void
.end method

.method public static declared-synchronized a()LmC;
    .locals 2

    .prologue
    .line 20
    const-class v1, LmC;

    monitor-enter v1

    :try_start_0
    sget-object v0, LmC;->a:LmC;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, LmC;

    invoke-direct {v0}, LmC;-><init>()V

    sput-object v0, LmC;->a:LmC;

    .line 23
    :cond_0
    sget-object v0, LmC;->a:LmC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, LmC;->b:J

    return-wide v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/kaspersky/components/cloudinfo/CloudInfoService;

    invoke-direct {v0}, Lcom/kaspersky/components/cloudinfo/CloudInfoService;-><init>()V

    invoke-static {}, Lcom/kaspersky/components/cloudinfo/CloudInfoService;->a()J

    move-result-wide v0

    .line 32
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 33
    iput-wide v0, p0, LmC;->b:J

    .line 34
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v0, v1}, Lsf;->a(J)V

    .line 36
    invoke-virtual {v2}, Lsf;->g_()V

    .line 38
    :cond_0
    return-void
.end method
