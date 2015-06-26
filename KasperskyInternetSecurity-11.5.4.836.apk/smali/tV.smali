.class public final LtV;
.super LsX;
.source "SourceFile"


# instance fields
.field private final b:Lay;

.field private final c:J

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, LsX;-><init>()V

    .line 28
    new-instance v0, LtY;

    invoke-direct {v0}, LtY;-><init>()V

    iput-object v0, p0, LtV;->b:Lay;

    .line 34
    iget-object v0, p0, LtV;->b:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, LtV;->d:I

    .line 37
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->k()J

    move-result-wide v0

    iput-wide v0, p0, LtV;->c:J

    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LtW;

    invoke-direct {v1, p0, p1}, LtW;-><init>(LtV;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 47
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Luo;

    invoke-direct {v0}, Luo;-><init>()V

    .line 50
    :goto_0
    const-class v1, Lub;

    monitor-enter v1

    .line 51
    :try_start_0
    new-instance v2, Lub;

    invoke-direct {v2, p0}, Lub;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v2}, Lub;->d()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 55
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-interface {v0, v4, v5}, LtU;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    invoke-virtual {v2, v5, v4, v6}, Lub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v6, v4}, LsY;->a(Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lub;->a()V

    .line 75
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 47
    :cond_3
    new-instance v0, LtK;

    invoke-direct {v0}, LtK;-><init>()V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 71
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public final a()Lay;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, LtV;->b:Lay;

    return-object v0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, LtV;->d:I

    invoke-static {p1, v0}, LsN;->a(II)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, LtV;->b:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, LtV;->b:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, LtV;->b:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    .line 129
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 130
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 131
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, LtV;->b:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, LtV;->c:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, LtV;->d()I

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, LtV;->b:Lay;

    invoke-interface {v0}, Lay;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, LtV;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public final k()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0xe

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 89
    :goto_0
    return v0

    .line 87
    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x9

    return v0
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 99
    const-class v1, Lub;

    monitor-enter v1

    .line 100
    :try_start_0
    new-instance v0, Lub;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lub;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v0}, Lub;->c()V

    .line 102
    invoke-virtual {v0}, Lub;->a()V

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
