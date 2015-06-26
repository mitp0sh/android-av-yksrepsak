.class public Lcom/kms/antitheft/gui/BlockTextActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Lse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:Lse;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 58
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:Lse;

    invoke-virtual {v0}, Lse;->g_()V

    .line 59
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->finish()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030018

    invoke-virtual {p0, v0, v2}, Lcom/kms/antitheft/gui/BlockTextActivity;->a(II)V

    .line 32
    invoke-static {}, Lkh;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 34
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    :cond_0
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:Lse;

    .line 39
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/BlockTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    const v1, 0x7f07017d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 42
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/BlockTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/BlockTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->c:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:Lse;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/BlockTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    const v1, 0x7f07017e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    return-void
.end method
