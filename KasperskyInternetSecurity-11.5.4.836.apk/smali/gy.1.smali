.class public final Lgy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z


# direct methods
.method public static a()Ljava/io/File;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lhs;->a()Lhs;

    move-result-object v0

    invoke-virtual {v0}, Lhs;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/io/File;Ljm;ILjava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    const-class v6, Lgy;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lgy;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 49
    :try_start_1
    invoke-static {}, Lhs;->a()Lhs;

    move-result-object v0

    const v4, 0x7f060008

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lhs;->a(Landroid/content/Context;Ljava/io/File;Ljm;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lgy;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :cond_0
    monitor-exit v6

    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to extract bases"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
