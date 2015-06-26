.class public final LdL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroid/hardware/Camera;
    .locals 7

    .prologue
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 10
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 11
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_1

    .line 12
    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 13
    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 14
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 11
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    return-object v0
.end method
