.class public final LjK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->i()V

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, LnT;

    new-instance v1, Lqk;

    invoke-direct {v1}, Lqk;-><init>()V

    const/4 v2, 0x0

    const v3, 0x7f0706b2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, LnT;-><init>(Landroid/content/Context;LnX;ILjava/lang/String;)V

    invoke-virtual {v0}, LnT;->a()V

    .line 46
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p1}, Lnj;->a(Landroid/support/v4/app/FragmentManager;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lsr;->o()Lsn;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lsn;->b()Z

    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, LnH;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 36
    :cond_0
    return-void
.end method
