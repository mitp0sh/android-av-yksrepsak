.class public Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030016

    invoke-virtual {p0, v0, v2}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->a(II)V

    .line 20
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21
    const v1, 0x7f0701ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 25
    const v1, 0x7f0701ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 26
    new-instance v1, LlA;

    invoke-direct {v1, p0}, LlA;-><init>(Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 34
    const v1, 0x7f0701ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 35
    new-instance v1, LlB;

    invoke-direct {v1, p0}, LlB;-><init>(Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
