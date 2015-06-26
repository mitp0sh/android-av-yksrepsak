.class public Lcom/kms/ipm/IpmMessageCancelledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 16
    const-string v0, "com.kms.ipm.cancelledMessageId"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 17
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->y()Lcom/kaspersky/components/ipm/IpmMessageManager;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/kaspersky/components/ipm/IpmMessageManager;->b(J)V

    .line 20
    :cond_0
    return-void
.end method
