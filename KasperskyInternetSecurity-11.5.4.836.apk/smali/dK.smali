.class public final LdK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 7
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 9
    const-string v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    return-object v0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 15
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 16
    const/4 v0, 0x0

    goto :goto_0
.end method
