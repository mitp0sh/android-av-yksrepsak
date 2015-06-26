.class public Lcom/kms/kmsshared/alarmscheduler/LicenseScheduler;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    .line 19
    const-class v2, LsL;

    monitor-enter v2

    .line 21
    :try_start_0
    invoke-static {}, LsL;->getLicenseExpireDate()J
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 25
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseScheduler;->mNextDate:Ljava/util/Date;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseScheduler;->mRunIfMissed:Z

    .line 28
    return-void

    .line 22
    :catch_0
    move-exception v3

    .line 23
    :try_start_2
    invoke-virtual {v3}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    const-class v1, LsL;

    monitor-enter v1
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    invoke-static {}, LsL;->c()V

    .line 35
    invoke-static {}, LsL;->b()V

    .line 36
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LsY;->a(LsX;)V

    .line 43
    return-void

    .line 36
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateNextTime()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
