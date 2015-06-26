.class public Lcom/kms/kmsshared/alarmscheduler/LicenseRefreshEvent;
.super Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ZJI)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;-><init>()V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/kms/kmsshared/alarmscheduler/LicenseRefreshEvent;->setEventData(ZJI)V

    .line 17
    iput-boolean v1, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseRefreshEvent;->mRunIfMissed:Z

    .line 18
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    .line 26
    new-instance v1, LtA;

    invoke-direct {v1, v2, v0}, LtA;-><init>(Ltf;LsY;)V

    .line 27
    invoke-interface {v0, v1, v2}, LsY;->a(Lte;Landroid/os/Handler;)V

    .line 28
    return-void
.end method
