.class public Lcom/kms/selfprotection/gui/UninstallActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->b:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/kms/kmsshared/Utils;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const v0, 0x7f0b010b

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    invoke-static {}, Lqq;->a()Z

    const v1, 0x7f0706ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 160
    const v1, 0x7f070259

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 162
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 163
    const v1, 0x7f07025a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 165
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->h()V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lsm;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    const/16 v0, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_0
    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->i()V

    .line 202
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 203
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;)V

    .line 207
    :cond_1
    iget-boolean v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->b:Z

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 208
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    invoke-interface {v0}, LkM;->f()V

    .line 210
    invoke-static {p0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->h()V

    .line 179
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/kms/gui/KMSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0043

    if-ne v0, v1, :cond_3

    .line 111
    iget v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    if-ne v0, v3, :cond_2

    .line 114
    invoke-static {}, Los;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "com.kms.gui.entercodemode"

    sget-object v2, Lcom/kms/gui/KMSEnterCodeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "com.kms.gui.unblockuninstall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->f()V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->g(Landroid/content/Context;)V

    .line 132
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->h()V

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0044

    if-ne v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 138
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 139
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;)V

    .line 143
    :cond_4
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->c()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0300a9

    invoke-virtual {p0, v0, v2}, Lcom/kms/selfprotection/gui/UninstallActivity;->a(II)V

    .line 46
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {}, Los;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f0b010b

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kms.uninstall.blockedapp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kms.UninstallActivity.launchedFromAd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->b:Z

    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 73
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->c()V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onRestart()V

    .line 95
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    .line 97
    iget v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->f()V

    .line 104
    :cond_0
    return-void
.end method
