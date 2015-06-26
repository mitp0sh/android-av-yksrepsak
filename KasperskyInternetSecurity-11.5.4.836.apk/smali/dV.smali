.class public final LdV;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, LdV;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, LdV;->a:Landroid/view/SurfaceHolder;

    .line 99
    iget-object v0, p0, LdV;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 100
    iget-object v0, p0, LdV;->a:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, LdV;->b:Landroid/hardware/Camera;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, LdV;->requestLayout()V

    .line 107
    :cond_0
    return-void
.end method

.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->t()LdT;

    move-result-object v0

    .line 203
    invoke-interface {v0}, LdT;->h()V

    .line 204
    invoke-virtual {p0}, LdV;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 181
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->t()LdT;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1, v1}, LdT;->a([BLandroid/hardware/Camera$Parameters;)V

    .line 185
    :cond_0
    invoke-virtual {p0}, LdV;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_1

    .line 145
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 152
    invoke-static {v1}, LdJ;->a(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 153
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 154
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 155
    iget-object v2, p0, LdV;->b:Landroid/hardware/Camera;

    invoke-static {v2, v1}, LdJ;->a(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;)I

    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 166
    iget-object v1, p0, LdV;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 167
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 168
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    invoke-virtual {p0}, LdV;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, LdV;->b:Landroid/hardware/Camera;

    .line 130
    :cond_0
    return-void
.end method
