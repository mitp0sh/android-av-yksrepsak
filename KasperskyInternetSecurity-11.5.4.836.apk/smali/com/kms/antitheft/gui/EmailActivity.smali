.class public Lcom/kms/antitheft/gui/EmailActivity;
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
    .line 19
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v1, 0x7f0b0096

    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->d:Lse;

    invoke-virtual {p0}, Lcom/kms/antitheft/gui/EmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "emailSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/kms/antitheft/gui/EmailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 56
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->d:Lse;

    invoke-virtual {v0}, Lse;->g_()V

    .line 57
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/EmailActivity;->finish()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/EmailActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030029

    invoke-virtual {p0, v0, v4}, Lcom/kms/antitheft/gui/EmailActivity;->a(II)V

    .line 32
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->d:Lse;

    .line 33
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->a:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->a:Landroid/widget/Button;

    const v1, 0x7f07017d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 38
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->b:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->b:Landroid/widget/Button;

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 43
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->c:Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/kms/antitheft/gui/EmailActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kms/antitheft/gui/EmailActivity;->d:Lse;

    invoke-virtual {p0}, Lcom/kms/antitheft/gui/EmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "emailSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    const v1, 0x7f070180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method
