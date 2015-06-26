.class final Lgj;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgl;

.field final synthetic b:Lgi;

.field private synthetic c:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lgi;Landroid/webkit/WebView;Lgl;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lgj;->b:Lgi;

    iput-object p2, p0, Lgj;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Lgj;->a:Lgl;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lgj;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lgj;->b:Lgi;

    invoke-static {v0}, Lgi;->b(Lgi;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    move-result-object v0

    new-instance v1, Lgk;

    invoke-direct {v1, p0}, Lgk;-><init>(Lgj;)V

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgj;->b:Lgi;

    invoke-static {v1}, Lgi;->c(Lgi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 318
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 319
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const-string v1, "KMS"

    const-string v2, "Failed to open url "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
