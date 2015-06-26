.class public Lcom/kms/kmsshared/alarmscheduler/LicenseExpireNotificationEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireNotificationEvent;->mRunIfMissed:Z

    .line 22
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireNotificationEvent;->updateNextTime()V

    .line 23
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 28
    const-class v1, Lsj;

    monitor-enter v1

    .line 29
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lsj;->b(Z)V

    .line 30
    invoke-virtual {v0}, Lsj;->g_()V

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 33
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->d()V

    .line 35
    const-class v1, LsL;

    monitor-enter v1

    .line 37
    :try_start_1
    invoke-static {}, LsL;->g()V
    :try_end_1
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateNextTime()V
    .locals 6

    .prologue
    .line 47
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 48
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 49
    invoke-interface {v0}, LaC;->d()I

    move-result v1

    .line 50
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 51
    new-instance v3, Ljava/util/Date;

    invoke-interface {v0}, LaC;->e()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 52
    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 54
    sget-object v3, Ltb;->a:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 55
    if-le v1, v5, :cond_1

    .line 56
    const/4 v0, 0x6

    neg-int v1, v5

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 60
    :cond_0
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireNotificationEvent;->mNextDate:Ljava/util/Date;

    .line 61
    return-void

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
