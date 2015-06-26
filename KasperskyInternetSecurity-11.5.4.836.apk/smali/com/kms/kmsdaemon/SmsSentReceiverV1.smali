.class public Lcom/kms/kmsdaemon/SmsSentReceiverV1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lqh;

    invoke-direct {v0, p0, p2}, Lqh;-><init>(Lcom/kms/kmsdaemon/SmsSentReceiverV1;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lqh;->start()V

    .line 61
    return-void
.end method
