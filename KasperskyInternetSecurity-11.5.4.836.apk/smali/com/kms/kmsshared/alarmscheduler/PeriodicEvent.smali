.class public abstract Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDay:I

.field private mModeDaily:Z

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public isPeriodic()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public setEventData(ZJI)V
    .locals 0

    .prologue
    .line 18
    iput-wide p2, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mTime:J

    .line 19
    iput p4, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mDay:I

    .line 20
    iput-boolean p1, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mModeDaily:Z

    .line 21
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->updateNextTime()V

    .line 22
    return-void
.end method

.method public updateNextTime()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v1, 0x7

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mModeDaily:Z

    if-eqz v0, :cond_2

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 33
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 34
    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 36
    new-instance v4, Ljava/util/GregorianCalendar;

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 37
    iget-wide v5, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mTime:J

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 39
    iget-boolean v5, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mModeDaily:Z

    if-nez v5, :cond_0

    .line 41
    iget v5, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mDay:I

    invoke-virtual {v3, v1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 44
    :cond_0
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 45
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 46
    invoke-virtual {v3, v7, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 47
    invoke-virtual {v3, v8, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 48
    const/16 v1, 0xd

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 49
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    const/4 v1, 0x6

    invoke-virtual {v3, v1, v0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 53
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 55
    :goto_1
    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mNextDate:Ljava/util/Date;

    .line 56
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
