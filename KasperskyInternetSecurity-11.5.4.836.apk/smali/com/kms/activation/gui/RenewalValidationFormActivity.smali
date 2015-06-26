.class public Lcom/kms/activation/gui/RenewalValidationFormActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, LkD;

    invoke-direct {v0, p0}, LkD;-><init>(Lcom/kms/activation/gui/RenewalValidationFormActivity;)V

    iput-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->c:Landroid/view/View$OnClickListener;

    .line 99
    return-void
.end method

.method public static synthetic a(Lcom/kms/activation/gui/RenewalValidationFormActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lqq;->a()Z

    .line 41
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    const-string v2, "renewal.form.content"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->b:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 55
    :cond_0
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->a:Landroid/webkit/WebView;

    .line 56
    iget-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;

    invoke-direct {v2, p0}, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;-><init>(Lcom/kms/activation/gui/RenewalValidationFormActivity;)V

    const-string v3, "HTMLOUT"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->a:Landroid/webkit/WebView;

    new-instance v2, LkB;

    invoke-direct {v2, p0}, LkB;-><init>(Lcom/kms/activation/gui/RenewalValidationFormActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    iget-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const v0, 0x7f0b0153

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, LkC;

    invoke-direct {v1, p0}, LkC;-><init>(Lcom/kms/activation/gui/RenewalValidationFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0b0154

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
