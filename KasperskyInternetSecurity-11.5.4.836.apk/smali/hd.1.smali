.class public final Lhd;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 26
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    invoke-static {}, LiK;->f()LiK;

    move-result-object v0

    .line 31
    invoke-interface {v0}, LiH;->a()J

    move-result-wide v1

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0}, LiH;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 34
    invoke-static {}, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Time since the first start of SDK is %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    :cond_0
    invoke-static {}, Lht;->a()Lht;

    move-result-object v1

    invoke-virtual {v1}, Lht;->m()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    .line 38
    invoke-static {}, Lcom/kavsdk/antivirus/impl/FirmwareStatisticManager;->c()V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, LiH;->a(J)V

    .line 40
    invoke-interface {v0}, LiH;->e()V

    .line 46
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
