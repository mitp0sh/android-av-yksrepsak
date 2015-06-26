.class public Lcom/kms/kmsshared/alarmscheduler/CheckUcpAccountRegistrationEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 16
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/CheckUcpAccountRegistrationEvent;->mRunIfMissed:Z

    .line 18
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->e()J

    move-result-wide v0

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 20
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 22
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/CheckUcpAccountRegistrationEvent;->mNextDate:Ljava/util/Date;

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    sub-long/2addr v2, v0

    div-long/2addr v2, v6

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 25
    new-instance v4, Ljava/util/Date;

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/kms/kmsshared/alarmscheduler/CheckUcpAccountRegistrationEvent;->mNextDate:Ljava/util/Date;

    goto :goto_0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->B()LaX;

    move-result-object v0

    invoke-interface {v0}, LaX;->requestAccountStatusUpdate()V

    .line 33
    return-void
.end method

.method public updateNextTime()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
