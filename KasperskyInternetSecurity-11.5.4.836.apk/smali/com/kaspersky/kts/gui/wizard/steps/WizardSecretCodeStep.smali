.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 35
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 108
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->c:Landroid/content/Context;

    const v1, 0x7f07019b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    .line 122
    iget-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->h:Z

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p0, v4}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->d(I)V

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->h:Z

    .line 129
    :cond_2
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    invoke-static {}, Lqz;->c()V

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(I)V

    .line 132
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->p()V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->c:Landroid/content/Context;

    const v1, 0x7f070199

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->b()V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->c:Landroid/content/Context;

    const v1, 0x7f070197

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->b()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->g:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->g:Landroid/widget/Button;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    new-instance v0, LoN;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701aa

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f0701ab

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    const v1, 0x7f0701ac

    invoke-virtual {v0, v1, p0}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f0701ad

    invoke-virtual {v0, v1, p0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public final c(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->h:Z

    .line 50
    const v0, 0x7f0b021a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->g:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->e()V

    .line 54
    const v0, 0x7f0b0218

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->a:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->f:Landroid/widget/EditText;

    .line 58
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    return-object v1

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->h:Z

    .line 97
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->c()V

    .line 99
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->b()V

    .line 102
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->e()V

    .line 86
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->c()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b021a
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->d()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;->e()V

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method
