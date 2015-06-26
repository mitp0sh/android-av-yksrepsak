.class public final LwJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;Z)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, LwJ;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    iput-boolean p2, p0, LwJ;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 239
    iget-boolean v0, p0, LwJ;->a:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, LwJ;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const v1, 0x7f070247

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    iget-object v0, p0, LwJ;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-virtual {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->finish()V

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, LwJ;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->d(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, LwJ;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-virtual {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->finish()V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, LwJ;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->e(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V

    goto :goto_0
.end method
