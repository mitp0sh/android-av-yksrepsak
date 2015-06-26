.class public Lcom/kaspersky/ipm/alarmscheduler/BbyMessageEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/ipm/alarmscheduler/BbyMessageEvent;->mRunIfMissed:Z

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kaspersky/ipm/alarmscheduler/BbyMessageEvent;->mNextDate:Ljava/util/Date;

    .line 17
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->z()Lab;

    move-result-object v0

    invoke-virtual {v0}, Lab;->a()V

    .line 23
    return-void
.end method

.method public updateNextTime()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
