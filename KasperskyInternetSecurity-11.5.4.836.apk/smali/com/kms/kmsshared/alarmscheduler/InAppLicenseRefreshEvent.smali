.class public Lcom/kms/kmsshared/alarmscheduler/InAppLicenseRefreshEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    .line 17
    iput-boolean v2, p0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseRefreshEvent;->mRunIfMissed:Z

    .line 18
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 19
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 20
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseRefreshEvent;->mNextDate:Ljava/util/Date;

    .line 21
    return-void
.end method


# virtual methods
.method public isPeriodic()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onStartEvent()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    .line 27
    invoke-static {v0}, LtV;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public updateNextTime()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseRefreshEvent;->mNextDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 34
    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 35
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseRefreshEvent;->mNextDate:Ljava/util/Date;

    .line 36
    return-void
.end method
