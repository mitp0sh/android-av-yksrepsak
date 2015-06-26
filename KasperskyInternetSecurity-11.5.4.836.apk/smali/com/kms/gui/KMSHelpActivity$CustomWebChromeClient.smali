.class final Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSHelpActivity;


# direct methods
.method private constructor <init>(Lcom/kms/gui/KMSHelpActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kms/gui/KMSHelpActivity;B)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;-><init>(Lcom/kms/gui/KMSHelpActivity;)V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSHelpActivity;->c(Lcom/kms/gui/KMSHelpActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkh;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSHelpActivity;->d(Lcom/kms/gui/KMSHelpActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSHelpActivity;->b(Lcom/kms/gui/KMSHelpActivity;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kms/gui/KMSHelpActivity;->b(Lcom/kms/gui/KMSHelpActivity;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 114
    .line 115
    if-eqz p3, :cond_5

    .line 116
    const-string v0, "getHelp:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 118
    if-ge v0, v2, :cond_0

    .line 119
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 122
    :cond_0
    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v2, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    .line 127
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSHelpActivity;->a(Lcom/kms/gui/KMSHelpActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v0, v1}, Lcom/kms/gui/KMSHelpActivity;->a(Lcom/kms/gui/KMSHelpActivity;Z)Z

    .line 129
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v3, v0}, Lcom/kms/kmsshared/Utils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 144
    :cond_1
    const/4 v0, 0x1

    .line 147
    :goto_1
    if-nez v0, :cond_2

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    .line 150
    :cond_2
    return v0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSHelpActivity;->b(Lcom/kms/gui/KMSHelpActivity;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_4

    const-string v0, "index"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    invoke-static {v2}, Lcom/google/android/apps/analytics/easytracking/GA;->e(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a()V

    .line 134
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v3, v0}, Lcom/kms/kmsshared/Utils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/kms/gui/KMSHelpActivity;->a(Lcom/kms/gui/KMSHelpActivity;Landroid/util/Pair;)Landroid/util/Pair;

    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;->a:Lcom/kms/gui/KMSHelpActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSHelpActivity;->b(Lcom/kms/gui/KMSHelpActivity;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
