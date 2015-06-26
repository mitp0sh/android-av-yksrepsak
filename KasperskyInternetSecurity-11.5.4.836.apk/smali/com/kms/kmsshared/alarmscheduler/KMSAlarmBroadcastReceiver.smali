.class public Lcom/kms/kmsshared/alarmscheduler/KMSAlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lrq;

    new-instance v1, Lrt;

    invoke-direct {v1}, Lrt;-><init>()V

    invoke-direct {v0, p1, v1}, Lrq;-><init>(Landroid/content/Context;Lrp;)V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    .line 24
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, p2}, Lrq;->a(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
