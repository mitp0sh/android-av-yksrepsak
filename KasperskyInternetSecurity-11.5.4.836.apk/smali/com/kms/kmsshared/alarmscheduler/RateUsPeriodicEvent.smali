.class public Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;
.super Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;
.source "SourceFile"


# static fields
.field public static final SEC_1:I = 0x3e8

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;->updateNextTime()V

    .line 21
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;->updateNextTime()V

    .line 28
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v0

    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 30
    invoke-virtual {v0}, Lso;->g_()V

    .line 31
    return-void
.end method

.method public updateNextTime()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x337f9800

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 37
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v6}, Lso;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;->mNextDate:Ljava/util/Date;

    .line 42
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;->mNextDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;->mNextDate:Ljava/util/Date;

    add-long v4, v1, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 46
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 47
    add-long v0, v1, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 48
    invoke-virtual {v3}, Lso;->g_()V

    .line 55
    :cond_0
    return-void
.end method
