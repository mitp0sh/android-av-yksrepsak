.class public Lcom/kaspersky/kts/gui/wizard/WizardFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# instance fields
.field private a:LfX;

.field private final b:Landroid/graphics/Point;

.field private c:LfR;

.field private d:Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    const v2, 0x7f0b01f3

    .line 209
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, LfR;

    .line 210
    if-eqz v0, :cond_0

    invoke-virtual {v0}, LfR;->g()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 211
    :cond_0
    invoke-static {p1}, LfR;->a(I)LfR;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    .line 212
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 214
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 215
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    invoke-virtual {v0, p2}, LfR;->b(I)V

    .line 218
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    const v2, 0x7f0b01f3

    .line 105
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, LfR;

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, LfR;->g()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 109
    :cond_0
    invoke-static {p1}, LfR;->a(I)LfR;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    .line 110
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 112
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 113
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 114
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->d:Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    invoke-virtual {v1, p1}, LfX;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->setCurrentStep(I)V

    .line 116
    :cond_1
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    .line 120
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b()Lcom/kaspersky/kts/gui/wizard/WizardType;

    move-result-object v1

    .line 121
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v2

    .line 124
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->getWizard(Lcom/kaspersky/kts/gui/wizard/WizardType;)Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Wizards;)V

    .line 126
    sget-object v3, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/kaspersky/kts/gui/wizard/WizardType;->Agreements:Lcom/kaspersky/kts/gui/wizard/WizardType;

    if-ne v1, v3, :cond_3

    .line 127
    :cond_0
    invoke-static {}, Lqq;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lsz;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    invoke-static {v0}, Lk;->c(Landroid/content/Context;)V

    .line 129
    invoke-static {v0}, Lm;->b(Landroid/content/Context;)V

    .line 132
    :cond_1
    sget-object v3, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    if-ne v1, v3, :cond_2

    .line 133
    invoke-virtual {v2}, Lsz;->c()V

    .line 134
    invoke-virtual {v2}, Lsz;->g_()V

    .line 137
    :cond_2
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lsj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 139
    invoke-static {}, Lqz;->d()V

    .line 144
    :goto_0
    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->a(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lkr;->d()V

    .line 148
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LfT;

    invoke-direct {v2, p0}, LfT;-><init>(Lcom/kaspersky/kts/gui/wizard/WizardFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 157
    :cond_3
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lsx;->b()Z

    move-result v2

    .line 159
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lse;->p()Z

    move-result v4

    .line 161
    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    .line 163
    invoke-virtual {v3}, Lse;->v()Z

    move-result v2

    .line 164
    invoke-virtual {v3}, Lse;->k()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 165
    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    .line 166
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v2

    sget-object v4, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountNotValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v4}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v4

    invoke-interface {v2, v4}, Lrx;->a(Lrw;)V

    .line 170
    :cond_4
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b()Lcom/kaspersky/kts/gui/wizard/WizardType;

    move-result-object v2

    sget-object v4, Lcom/kaspersky/kts/gui/wizard/WizardType;->AllWebRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

    if-ne v2, v4, :cond_5

    invoke-virtual {v1}, Lsx;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lse;->h(Z)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lse;->f(Z)V

    .line 173
    const/16 v1, 0xf

    invoke-virtual {v3, v1}, Lse;->a(I)V

    .line 174
    invoke-virtual {v3}, Lse;->g_()V

    .line 175
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LfU;

    invoke-direct {v2, p0}, LfU;-><init>(Lcom/kaspersky/kts/gui/wizard/WizardFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 189
    :cond_5
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->finish()V

    .line 190
    return-void

    .line 141
    :cond_6
    invoke-static {}, Lqz;->c()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    invoke-virtual {v0}, LfX;->b()I

    move-result v0

    .line 195
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b(I)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    invoke-virtual {v0}, LfX;->d()I

    move-result v0

    .line 205
    invoke-direct {p0, v0, p1}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a(II)V

    .line 206
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    invoke-virtual {v0}, LfX;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b(I)V

    .line 229
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    .line 47
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->d()I

    move-result v2

    .line 48
    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

    iput-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->d:Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b()Lcom/kaspersky/kts/gui/wizard/WizardType;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardType;->createSteps()LfX;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    .line 52
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->d:Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardType;->isStepCounterVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->d:Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    invoke-virtual {v1}, LfX;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->setStepsCount(I)V

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    invoke-virtual {v0}, LfX;->b()I

    move-result v0

    .line 61
    if-ne v0, v3, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c()V

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/graphics/Point;)V

    .line 75
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->e:I

    .line 76
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->f:I

    .line 78
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->k()V

    .line 79
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->d:Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b(I)V

    goto :goto_1

    .line 68
    :cond_3
    new-instance v0, LfX;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LfX;-><init>(Z)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a:LfX;

    .line 69
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->d:Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/StepsCounterControl;->setVisibility(I)V

    .line 70
    invoke-direct {p0, v2}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/graphics/Point;)V

    .line 85
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->e:I

    iget v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->f:I

    invoke-static {v0, v1}, LfV;->b(II)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, LfV;->b(II)I

    move-result v1

    .line 87
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->e:I

    .line 88
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->f:I

    .line 90
    invoke-static {v0, v1}, LfV;->a(II)Z

    move-result v2

    .line 92
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    invoke-virtual {v2, v0, v1}, LfR;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 95
    const v1, 0x7f0b01f3

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->c:LfR;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 97
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    return-void
.end method
