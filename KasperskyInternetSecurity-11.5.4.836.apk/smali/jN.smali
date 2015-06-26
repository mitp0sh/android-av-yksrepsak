.class public final LjN;
.super LjM;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, LjM;-><init>(Landroid/app/Activity;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;)Landroid/support/v4/app/Fragment;
    .locals 8

    .prologue
    .line 70
    invoke-virtual {p0}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 73
    invoke-virtual/range {v0 .. v7}, LjN;->a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 76
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 78
    return-object v0
.end method

.method public final a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p6, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    invoke-interface {p5, v0}, LsF;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    invoke-virtual {p0}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    invoke-virtual {p7, p1, v0, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    :cond_1
    :goto_0
    return-object v0

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 83
    const-class v0, Lkk;

    invoke-static {p0}, Lkl;->a(LjN;)Lrz;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LjN;->a(Ljava/lang/Class;Lrz;)V

    .line 84
    const-class v0, Lme;

    invoke-static {}, LjG;->a()LjG;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LjN;->a(Ljava/lang/Class;Lrz;)V

    .line 86
    invoke-virtual {p0}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, LjK;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 88
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->a()Lmn;

    move-result-object v0

    .line 89
    invoke-static {}, Lso;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmn;->e()Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {}, LjK;->a()V

    .line 92
    :cond_0
    invoke-super {p0}, LjM;->d()V

    .line 93
    return-void
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, LjN;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lki;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 36
    return-void
.end method

.method public final i()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, LjM;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method
