.class public Lcom/kaspersky/ipm/alarmscheduler/IpmSyncEvent;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/ipm/alarmscheduler/IpmSyncEvent;->mRunIfMissed:Z

    .line 18
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lsj;->s()J

    move-result-wide v0

    .line 20
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 21
    const-wide/16 v0, 0x1

    .line 25
    :goto_0
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/ipm/alarmscheduler/IpmSyncEvent;->setEventData(I)V

    .line 26
    return-void

    .line 23
    :cond_0
    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, LH;->d()LG;

    move-result-object v0

    invoke-interface {v0}, LG;->c()V

    .line 33
    return-void
.end method
