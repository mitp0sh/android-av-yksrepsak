.class public final LkB;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/activation/gui/RenewalValidationFormActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/RenewalValidationFormActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, LkB;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "javascript:window.HTMLOUT.processHTML(document.getElementsByTagName(\'html\')[0].innerHTML);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 73
    return-void
.end method
