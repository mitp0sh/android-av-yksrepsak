.class public Lcom/kms/kmsshared/alarmscheduler/CheckUCPRedirectEvent;
.super Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 17
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 19
    iput-boolean v3, p0, Lcom/kms/kmsshared/alarmscheduler/CheckUCPRedirectEvent;->mRunIfMissed:Z

    .line 20
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/kms/kmsshared/alarmscheduler/CheckUCPRedirectEvent;->setEventData(ZJI)V

    .line 21
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lrq;->b(I)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lwy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lwy;->b()V

    goto :goto_0
.end method
