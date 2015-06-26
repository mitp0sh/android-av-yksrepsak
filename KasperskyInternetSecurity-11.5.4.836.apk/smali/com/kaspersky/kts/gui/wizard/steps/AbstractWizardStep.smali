.class public abstract Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeK;
.implements LeL;


# instance fields
.field private final a:LoQ;

.field protected b:Landroid/view/LayoutInflater;

.field protected c:Landroid/content/Context;

.field protected d:Landroid/support/v4/app/Fragment;

.field protected e:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->b:Landroid/view/LayoutInflater;

    .line 45
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->d:Landroid/support/v4/app/Fragment;

    .line 47
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->e:Lcom/kms/kmsshared/KMSApplication;

    .line 48
    new-instance v0, LoQ;

    invoke-direct {v0, p2, p0}, LoQ;-><init>(Landroid/support/v4/app/Fragment;LeL;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->a:LoQ;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private e()Lcom/kaspersky/kts/gui/wizard/WizardFragment;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public static i()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public static j()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public static k()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public static l()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected static s()Z
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    invoke-virtual {v0}, Lsj;->r()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->e()Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1, p2, p3}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->c(I)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Light"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1, v0}, LbG;->a(Landroid/graphics/Typeface;Landroid/view/View;)V

    .line 56
    return-object v0
.end method

.method protected abstract c(I)Landroid/view/View;
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->a:LoQ;

    invoke-virtual {v0, p1}, LoQ;->a(I)Landroid/support/v4/app/DialogFragment;

    .line 108
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->a:LoQ;

    invoke-virtual {v0, p1}, LoQ;->b(I)V

    .line 113
    return-void
.end method

.method public final f(I)Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->a:LoQ;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, LoQ;->c(I)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final g(I)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->e()Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->e()Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->e()Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b()V

    .line 133
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->e()Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->a()V

    .line 140
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->e()Lcom/kaspersky/kts/gui/wizard/WizardFragment;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardFragment;->b()V

    .line 154
    :cond_0
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method
