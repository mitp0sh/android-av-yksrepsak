.class public final LkE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, LkE;->b:Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;

    iput-object p2, p0, LkE;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 106
    iget-object v0, p0, LkE;->a:Ljava/lang/String;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 107
    iget-object v1, p0, LkE;->a:Ljava/lang/String;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 108
    if-gt v0, v1, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, LkE;->b:Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;

    iget-object v0, v0, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->setResult(I)V

    .line 111
    iget-object v0, p0, LkE;->b:Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;

    iget-object v0, v0, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-virtual {v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->finish()V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, LkE;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, LkE;->b:Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;

    iget-object v0, v0, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-virtual {v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    const-string v1, "renewal.form.ticket"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, LkE;->b:Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;

    iget-object v1, v1, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-virtual {v1, v4, v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->setResult(ILandroid/content/Intent;)V

    .line 118
    iget-object v0, p0, LkE;->b:Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;

    iget-object v0, v0, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-virtual {v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->finish()V

    goto :goto_0
.end method
