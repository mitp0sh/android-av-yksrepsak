.class Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;


# direct methods
.method constructor <init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebViewClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 315
    const-string v0, "Callback script"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oh no error! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 319
    const-string v0, "Callback script"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oh no ssl error! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebViewClient;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 310
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
