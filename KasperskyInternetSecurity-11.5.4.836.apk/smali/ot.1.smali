.class public final Lot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController;


# direct methods
.method public constructor <init>(Lcom/kms/gui/dialog/AlertController;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->b(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 131
    iget-object v0, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->b(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 137
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    :cond_1
    iget-object v1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->g(Lcom/kms/gui/dialog/AlertController;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    .line 143
    :cond_2
    iget-object v0, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->i(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v2}, Lcom/kms/gui/dialog/AlertController;->h(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_3
    return-void

    .line 132
    :cond_4
    iget-object v1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->c(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->d(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 133
    iget-object v0, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->d(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_5
    iget-object v1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->e(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->f(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v0, p0, Lot;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->f(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
