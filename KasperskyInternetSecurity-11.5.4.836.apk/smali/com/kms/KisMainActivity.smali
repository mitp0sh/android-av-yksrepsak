.class public final Lcom/kms/KisMainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Luz;

.field private b:Lcom/kms/KisShieldFragment;

.field private final c:LjN;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 56
    new-instance v0, LjN;

    const v1, 0x7f030038

    invoke-direct {v0, p0, v1}, LjN;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    .line 155
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v1

    .line 157
    invoke-virtual {v0}, Lsx;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lsx;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lsz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/kms/KisMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    const-string v1, "com.kaspersky.kts.gui.settingspanelid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 88
    if-eq v0, v2, :cond_0

    .line 89
    invoke-static {p0, v0}, Lwh;->b(Landroid/app/Activity;I)V

    .line 106
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kms/antivirus/gui/AvUserActionActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(Landroid/app/Activity;)V

    .line 109
    :cond_1
    return-void

    .line 96
    :cond_2
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    const-string v0, "MARKET_STAT_WERE_SENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/KisMainActivity;->d:Z

    .line 100
    invoke-virtual {p0}, Lcom/kms/KisMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lk;->b(Landroid/content/Context;)V

    .line 102
    invoke-static {v0}, Lm;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/kms/KisMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->c()Laq;

    move-result-object v0

    invoke-interface {v0}, Laq;->a()Ljava/util/List;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 202
    iget-object v0, v0, Lat;->b:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    sget-object v2, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    if-ne v0, v2, :cond_2

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/kms/KisMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    invoke-virtual {v0, p1, p2}, LjN;->a(II)V

    .line 170
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->a()V

    .line 65
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/kms/KisMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {p0, v1}, LbI;->c(Landroid/app/Activity;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    :cond_0
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 72
    const-string v0, "MARKET_STAT_WERE_SENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/KisMainActivity;->d:Z

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/kms/KisMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kms/KisMainActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->g()V

    .line 192
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 193
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kms/KisMainActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 174
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/kms/KisMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, LpP;->a()LpP;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, LpP;->a(Z)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->e()V

    .line 180
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 181
    return-void
.end method

.method protected final onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->d()V

    .line 129
    invoke-virtual {p0}, Lcom/kms/KisMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 132
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    const v1, 0x7f0b0024

    const-class v2, Lcom/kms/KisShieldFragment;

    const-string v3, "shield"

    const-class v5, Lcom/kms/KisShieldFragment;

    invoke-static {v5}, Lne;->a(Ljava/lang/Class;)LsF;

    move-result-object v5

    invoke-virtual/range {v0 .. v7}, LjN;->a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kms/KisShieldFragment;

    iput-object v0, p0, Lcom/kms/KisMainActivity;->b:Lcom/kms/KisShieldFragment;

    .line 133
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    const v1, 0x7f0b0025

    const-class v2, Luz;

    const-string v3, "menu"

    const-class v5, Luz;

    invoke-static {v5}, Lne;->a(Ljava/lang/Class;)LsF;

    move-result-object v5

    invoke-virtual/range {v0 .. v7}, LjN;->a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Luz;

    iput-object v0, p0, Lcom/kms/KisMainActivity;->a:Luz;

    .line 134
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    const v1, 0x7f0b0028

    const-class v2, Lcom/kms/issues/KisIssuesFragment;

    const-string v3, "issues"

    const-class v5, Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v5}, Lne;->a(Ljava/lang/Class;)LsF;

    move-result-object v5

    invoke-virtual/range {v0 .. v7}, LjN;->a(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;LsF;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/Fragment;

    .line 137
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 139
    invoke-static {}, LpP;->a()LpP;

    move-result-object v0

    invoke-virtual {v0}, LpP;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, LjJ;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LjO;

    invoke-direct {v1, p0}, LjO;-><init>(Lcom/kms/KisMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/kms/KisMainActivity;->a()V

    .line 151
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "MARKET_STAT_WERE_SENT"

    iget-boolean v1, p0, Lcom/kms/KisMainActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method protected final onStart()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->c()V

    .line 115
    invoke-static {}, Lcom/kms/kmsshared/Utils;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p0}, LjK;->a(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0}, Lcom/kms/KisMainActivity;->b()V

    .line 118
    invoke-virtual {p0}, Lcom/kms/KisMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, LjK;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 120
    :cond_0
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kms/KisMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->f()V

    .line 186
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 187
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kms/KisMainActivity;->a:Luz;

    invoke-virtual {v0, p1}, Luz;->a(Z)V

    .line 221
    iget-object v0, p0, Lcom/kms/KisMainActivity;->b:Lcom/kms/KisShieldFragment;

    invoke-virtual {v0, p1}, Lcom/kms/KisShieldFragment;->a(Z)V

    .line 222
    return-void
.end method
