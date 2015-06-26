.class public Lcom/kms/kmsshared/alarmscheduler/LicenseExpireEvent;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireEvent;->mNextDate:Ljava/util/Date;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseExpireEvent;->mRunIfMissed:Z

    .line 23
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LsY;->a(LsX;)V

    .line 49
    return-void
.end method
