.class public final Lmx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lmu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lmu;

    invoke-direct {v0}, Lmu;-><init>()V

    sput-object v0, Lmx;->a:Lmu;

    return-void
.end method

.method public static final declared-synchronized a(LgE;ILjava/lang/String;Z)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 90
    const-class v0, Lmx;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lmx;->a(LgE;ILjava/lang/String;ZZ)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final a(LgE;ILjava/lang/String;ZZ)Ljava/lang/Thread;
    .locals 6

    .prologue
    .line 95
    sget-object v0, Lmx;->a:Lmu;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lmu;->a(LgE;ILjava/lang/String;ZZ)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static a(IZ)V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0, p0, p1}, Lmu;->a(IZ)V

    .line 14
    return-void
.end method

.method public static declared-synchronized a(LmA;)V
    .locals 2

    .prologue
    .line 21
    const-class v1, Lmx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0, p0}, Lmu;->a(LmA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v1

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->a()Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->b()V

    .line 30
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->c()I

    move-result v0

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->d()I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->e()I

    move-result v0

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->f()I

    move-result v0

    return v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->g()I

    move-result v0

    return v0
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->h()V

    .line 74
    return-void
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->i()I

    move-result v0

    return v0
.end method

.method public static j()J
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lmx;->a:Lmu;

    invoke-virtual {v0}, Lmu;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
