.class Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;


# direct methods
.method constructor <init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 369
    const-string v0, "Callback script"

    const-string v1, "close window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-virtual {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->finish()V

    .line 371
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 364
    const-string v0, "Callback script"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "console: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    const-string v0, "reportStatistics"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->g(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;->reportStatistics(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p5, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 355
    :goto_0
    const/4 v0, 0x1

    .line 358
    :goto_1
    return v0

    .line 345
    :cond_0
    const-string v0, "getTemplateSubstitutionText"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->g(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;->getTemplateSubstitutionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    const-string v0, "openUrl"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->g(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;->openUrl(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p5, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_1

    .line 358
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    .line 330
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->e(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->f(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
