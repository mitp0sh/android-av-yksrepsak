.class public Lcom/kms/kmsshared/alarmscheduler/ScanExpiredSingleTimeEvent;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/ScanExpiredSingleTimeEvent;->mRunIfMissed:Z

    .line 14
    invoke-static {}, Lcom/kms/kmsshared/Utils;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/alarmscheduler/ScanExpiredSingleTimeEvent;->setEventData(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/kms/kmsshared/Utils;->m()I

    move-result v0

    .line 20
    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanExpired:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->newEvent()Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 25
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
