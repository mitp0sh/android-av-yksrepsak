.class public Lcom/kms/kmsshared/alarmscheduler/LicenseInfoExpiredEvent;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseInfoExpiredEvent;->mNextDate:Ljava/util/Date;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/LicenseInfoExpiredEvent;->mRunIfMissed:Z

    .line 14
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->InformationExpired:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v1}, Lcom/kms/licensing/LicenseEventType;->newEvent()LsZ;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 19
    return-void
.end method
