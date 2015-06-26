.class public abstract Lcom/kms/kmsshared/alarmscheduler/DateAlarmEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected setEventData(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/kms/kmsshared/alarmscheduler/DateAlarmEvent;->mNextDate:Ljava/util/Date;

    .line 11
    return-void
.end method

.method public updateNextTime()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
