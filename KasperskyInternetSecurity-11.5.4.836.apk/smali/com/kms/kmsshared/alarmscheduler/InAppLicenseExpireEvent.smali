.class public Lcom/kms/kmsshared/alarmscheduler/InAppLicenseExpireEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 16
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    .line 17
    iput-boolean v4, p0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseExpireEvent;->mRunIfMissed:Z

    .line 18
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->k()J

    move-result-wide v0

    .line 19
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 20
    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 21
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 22
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/InAppLicenseExpireEvent;->mNextDate:Ljava/util/Date;

    .line 23
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LsY;->a(LsX;)V

    .line 30
    return-void
.end method

.method public updateNextTime()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
