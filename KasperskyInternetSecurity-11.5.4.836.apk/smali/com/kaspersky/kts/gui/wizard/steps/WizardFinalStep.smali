.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LnX;


# instance fields
.field private f:LnT;

.field private g:Landroid/view/View;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 42
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f0b01fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-static {}, Lqq;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    const v0, 0x7f0b0214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    .line 73
    invoke-static {}, Lqq;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300b0

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    invoke-virtual {v0, p2, v1}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->setCodesList(Ljava/util/List;Landroid/view/View;)V

    .line 81
    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$1;

    invoke-direct {v1, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$1;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->setOnCodeClickListener(Loc;)V

    .line 91
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 202
    const v0, 0x7f0b0212

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->c:Landroid/content/Context;

    const v2, 0x7f0706b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lse;->v()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->c:Landroid/content/Context;

    const v3, 0x7f0706b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method private t()V
    .locals 5

    .prologue
    .line 156
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 157
    const-class v1, Lsj;

    monitor-enter v1

    .line 158
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lsj;->c(Z)V

    .line 159
    invoke-virtual {v0}, Lsj;->f()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Lsj;->g_()V

    .line 161
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 163
    invoke-static {v2}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-static {}, Lqz;->c()V

    .line 168
    :goto_0
    invoke-static {}, Lqq;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    new-instance v2, LkA;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LkA;-><init>(Lkz;)V

    invoke-interface {v1, v2, v0}, LsY;->a(Landroid/os/Handler;Landroid/content/Context;)V

    .line 172
    :cond_0
    new-instance v0, LnT;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0706b2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, LnT;-><init>(Landroid/content/Context;LnX;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->f:LnT;

    .line 175
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->f:LnT;

    invoke-virtual {v0}, LnT;->a()V

    .line 177
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 166
    :cond_1
    invoke-static {}, Lqz;->d()V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, LoK;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 122
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->d()V

    .line 124
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    invoke-virtual {v1}, Lsj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, LnE;->b()V

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->l()I

    .line 129
    const/16 v0, 0x64

    return v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->m()Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b8

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->a(Landroid/view/View;Ljava/util/List;)V

    .line 62
    :goto_0
    const v1, 0x7f0b0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->g:Landroid/view/View;

    .line 64
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->b(Landroid/view/View;)V

    .line 66
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b7

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->a(Landroid/view/View;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->h:Z

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->g(I)V

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->p()V

    .line 144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$2;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$2;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->b(Landroid/view/View;)V

    .line 111
    invoke-super {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->g()V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-boolean v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->h:Z

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01fa

    if-ne v0, v1, :cond_1

    .line 184
    invoke-static {}, Lkr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->d(I)V

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->h:Z

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->h:Z

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->b(Z)V

    .line 192
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;->t()V

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method
