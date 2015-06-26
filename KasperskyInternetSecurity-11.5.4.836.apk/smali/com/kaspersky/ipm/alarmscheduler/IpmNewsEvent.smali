.class public Lcom/kaspersky/ipm/alarmscheduler/IpmNewsEvent;
.super Lcom/kms/kmsshared/alarmscheduler/DateAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/DateAlarmEvent;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/ipm/alarmscheduler/IpmNewsEvent;->mRunIfMissed:Z

    .line 15
    invoke-static {}, LH;->d()LG;

    move-result-object v0

    invoke-interface {v0}, LG;->b()Ljava/util/Date;

    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kaspersky/ipm/alarmscheduler/IpmNewsEvent;->setEventData(Ljava/util/Date;)V

    .line 20
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, LH;->d()LG;

    move-result-object v0

    invoke-interface {v0}, LG;->a()V

    .line 27
    return-void
.end method
