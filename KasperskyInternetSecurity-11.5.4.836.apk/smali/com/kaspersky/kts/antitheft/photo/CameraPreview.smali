.class public Lcom/kaspersky/kts/antitheft/photo/CameraPreview;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:LdV;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 78
    new-instance v0, LdV;

    invoke-direct {v0, p0}, LdV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->b:LdV;

    .line 79
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->b:LdV;

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->b:LdV;

    invoke-virtual {v0, v1}, LdV;->a(Landroid/hardware/Camera;)V

    .line 61
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 62
    iput-object v1, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->a:Landroid/hardware/Camera;

    .line 64
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, LdJ;->d()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->b:LdV;

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, LdV;->a(Landroid/hardware/Camera;)V

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    return-void

    .line 41
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/photo/CameraPreview;->finish()V

    .line 42
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->t()LdT;

    move-result-object v0

    .line 44
    invoke-interface {v0}, LdT;->h()V

    goto :goto_0
.end method
