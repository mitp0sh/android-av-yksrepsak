.class public Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;->mRunIfMissed:Z

    .line 16
    invoke-static {}, Lcom/kms/kmsshared/Utils;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;->setEventData(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/kms/kmsshared/Utils;->n()I

    move-result v0

    .line 23
    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesExpired:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx;->a(Lrw;)V

    .line 28
    :cond_0
    invoke-static {}, LnE;->a()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 30
    invoke-static {}, LnE;->d()V

    .line 32
    :cond_1
    return-void

    .line 23
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
