.class public abstract Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Lkz;
.implements LnX;


# instance fields
.field protected a:LkA;

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 33
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->t()V

    .line 34
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->e:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lay;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->g:Z

    .line 36
    invoke-interface {v0}, Lay;->b()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->h:I

    .line 37
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 96
    const-string v0, "renewal.form.ticket"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->e:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->a:LkA;

    invoke-interface {v1, v0, v2}, LsY;->b(Ljava/lang/String;Landroid/os/Handler;)V

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;Z)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->f:Z

    return v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, LkA;

    invoke-direct {v0, p0}, LkA;-><init>(Lkz;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->a:LkA;

    .line 48
    return-void
.end method

.method private u()V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lqq;->a()Z

    .line 81
    new-instance v0, LnT;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->c:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->c:Landroid/content/Context;

    const v4, 0x7f0706b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, LnT;-><init>(Landroid/content/Context;LnX;ILjava/lang/String;)V

    invoke-virtual {v0}, LnT;->a()V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->p()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->d_()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, LoK;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->u()V

    .line 115
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 109
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 110
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 114
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 70
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->d(I)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->c:Landroid/content/Context;

    const-class v2, Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v1, "renewal.form.content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->e:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->d()V

    .line 147
    const/16 v0, 0x64

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep$1;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep$1;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public final d_()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Z
.end method

.method public e_()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lkr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->d(I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->a:LkA;

    invoke-static {v0}, Lkr;->a(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public final f_()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->d:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->g:Z

    iget v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->h:I

    invoke-static {v0, v1, v2, v3}, Lkr;->a(Landroid/support/v4/app/Fragment;IZI)V

    .line 65
    return-void
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
