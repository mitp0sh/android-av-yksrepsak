.class public final Lkq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v2

    .line 48
    invoke-interface {v2}, LaC;->c()I

    move-result v1

    .line 50
    invoke-interface {v2}, LaC;->b()Ljava/lang/String;

    move-result-object v0

    .line 52
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 57
    :cond_0
    invoke-static {}, LjJ;->o()LvH;

    move-result-object v1

    invoke-virtual {v1}, LvH;->c()Ljava/lang/String;

    move-result-object v1

    .line 62
    :cond_1
    :goto_0
    invoke-static {v1, v0, v2}, LvL;->a(Ljava/lang/String;Ljava/lang/String;LaC;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_2
    invoke-static {}, LjJ;->o()LvH;

    move-result-object v1

    invoke-virtual {v1}, LvH;->b()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "0"

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lkq;->a()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const v0, 0x7f0703b7

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->g()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Activity;LkA;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0, p2}, Lkq;->a(Landroid/content/Context;LkA;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Lkq;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;LkA;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    .line 67
    invoke-interface {v0, p1, p0}, LsY;->a(Landroid/os/Handler;Landroid/content/Context;)V

    .line 68
    return-void
.end method
