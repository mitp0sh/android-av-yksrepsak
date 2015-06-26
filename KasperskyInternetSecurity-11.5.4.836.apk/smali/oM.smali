.class public final LoM;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Lcom/kms/gui/dialog/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 71
    new-instance v0, Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {p0}, LoM;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kms/gui/dialog/AlertController;-><init>(Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, LoM;->a:Lcom/kms/gui/dialog/AlertController;

    .line 72
    return-void
.end method

.method static synthetic a(LoM;)Lcom/kms/gui/dialog/AlertController;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, LoM;->a:Lcom/kms/gui/dialog/AlertController;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/widget/Button;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, LoM;->a:Lcom/kms/gui/dialog/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kms/gui/dialog/AlertController;->b(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, LoM;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0}, Lcom/kms/gui/dialog/AlertController;->a()V

    .line 196
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, LoM;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0, p2}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, LoM;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0, p2}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, LoM;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0, p1}, Lcom/kms/gui/dialog/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
