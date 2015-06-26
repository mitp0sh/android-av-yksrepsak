.class public Lcom/kms/activation/gui/InternetConnectionRequiredActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->finish()V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 53
    invoke-virtual {p0, v2}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->finish()V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v0, v2}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030005

    invoke-virtual {p0, v0, v3}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a(II)V

    .line 27
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    const v1, 0x7f07016c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com_kms_connection_error_str"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_0
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 41
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void

    .line 36
    :cond_0
    const v1, 0x7f07016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
