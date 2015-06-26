.class public Lcom/kaspersky/kts/antitheft/remoting/AntiThiefScheduler;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1c22040c5fdc863cL


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefScheduler;->mRunIfMissed:Z

    .line 18
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    invoke-virtual {v1}, Lse;->a()I

    move-result v1

    .line 20
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 23
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set syncInterval(minutes): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefScheduler;->setEventData(I)V

    .line 28
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "KMS-ANTI-THIEF"

    const-string v1, "AntiThiefScheduler.onStartEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->d()V

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->c()V

    goto :goto_0
.end method
