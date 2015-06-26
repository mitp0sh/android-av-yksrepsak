.class public Lcom/kms/gui/KMSHelpActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/webkit/WebView;

.field private c:Ljava/util/List;

.field private d:Landroid/util/Pair;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->c:Ljava/util/List;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->f:Z

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/kms/gui/KMSHelpActivity;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kms/gui/KMSHelpActivity;->d:Landroid/util/Pair;

    return-object p1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/kms/gui/KMSHelpActivity;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/kms/gui/KMSHelpActivity;Z)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/kms/gui/KMSHelpActivity;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->d:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic b(Lcom/kms/gui/KMSHelpActivity;Z)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/kms/gui/KMSHelpActivity;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/kms/gui/KMSHelpActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x400

    const/4 v3, -0x1

    .line 44
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSHelpActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/kms/gui/KMSHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 49
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lsj;->d()Z

    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/kms/gui/KMSHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 58
    :cond_0
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->b:Landroid/webkit/WebView;

    .line 59
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/kms/gui/KMSHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    iput v3, p0, Lcom/kms/gui/KMSHelpActivity;->a:I

    .line 65
    if-eqz v0, :cond_1

    .line 67
    const-string v2, "com.kms.gui.helpid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kms/gui/KMSHelpActivity;->a:I

    .line 69
    :cond_1
    iget v0, p0, Lcom/kms/gui/KMSHelpActivity;->a:I

    if-ne v0, v3, :cond_2

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KMSHelpActivity - help id does not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iget v0, p0, Lcom/kms/gui/KMSHelpActivity;->a:I

    invoke-static {v0, p0}, Lcom/kms/kmsshared/Utils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v0, Landroid/util/Pair;

    iget v3, p0, Lcom/kms/gui/KMSHelpActivity;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->d:Landroid/util/Pair;

    .line 75
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/kms/gui/KMSHelpActivity$CustomWebChromeClient;-><init>(Lcom/kms/gui/KMSHelpActivity;B)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->b:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 81
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 84
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iput-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->d:Landroid/util/Pair;

    .line 85
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/kms/gui/KMSHelpActivity;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kms/gui/KMSHelpActivity;->d:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-boolean v6, p0, Lcom/kms/gui/KMSHelpActivity;->e:Z

    move v0, v6

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
