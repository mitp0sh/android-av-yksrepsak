.class public Lcom/kms/kmsshared/UsbConnectionListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 32
    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v0, Lrc;

    invoke-direct {v0, p0}, Lrc;-><init>(Lcom/kms/kmsshared/UsbConnectionListener;)V

    invoke-virtual {v0}, Lrc;->start()V

    goto :goto_0
.end method
