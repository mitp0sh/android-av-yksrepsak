.class public Lcom/google/tagmanager/PreviewActivity;
.super Landroid/app/Activity;
.source "PreviewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private displayAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttonLabel"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    const/4 v1, -0x1

    new-instance v2, Lcom/google/tagmanager/PreviewActivity$1;

    invoke-direct {v2, p0}, Lcom/google/tagmanager/PreviewActivity$1;-><init>(Lcom/google/tagmanager/PreviewActivity;)V

    invoke-virtual {v0, v1, p3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 81
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v4, "Preview activity"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 44
    .local v0, "data":Landroid/net/Uri;
    invoke-static {p0}, Lcom/google/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/tagmanager/TagManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/tagmanager/TagManager;->setPreviewData(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot preview the app with the uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Launching current version instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "message":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 48
    const-string v4, "Preview failure"

    const-string v5, "Continue"

    invoke-direct {p0, v4, v3, v5}, Lcom/google/tagmanager/PreviewActivity;->displayAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v3    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 53
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoke the launch activity for package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/google/tagmanager/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 57
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No launch activity found for package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling preview threw an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
