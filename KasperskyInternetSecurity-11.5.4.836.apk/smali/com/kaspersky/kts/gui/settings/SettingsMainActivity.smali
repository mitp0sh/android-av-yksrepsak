.class public Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;
.super Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Lcom/kms/kmsshared/DefaultActionHandler;

.field private final c:LjN;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;-><init>()V

    .line 28
    new-instance v0, LjN;

    const v1, 0x7f03008a

    invoke-direct {v0, p0, v1}, LjN;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 67
    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 69
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 72
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 74
    :cond_0
    const v0, 0x7f0b017e

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->b:Lcom/kms/kmsshared/DefaultActionHandler;

    invoke-virtual {v0, p1}, Lcom/kms/kmsshared/DefaultActionHandler;->a(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V

    .line 62
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->a:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    invoke-virtual {v0, p1, p2}, LjN;->a(II)V

    .line 119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lqq;->a()Z

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->finish()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0142
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->d()V

    .line 84
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LjN;->a(Z)V

    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->a()V

    .line 39
    new-instance v0, Lcom/kms/kmsshared/DefaultActionHandler;

    invoke-direct {v0, p0}, Lcom/kms/kmsshared/DefaultActionHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->b:Lcom/kms/kmsshared/DefaultActionHandler;

    .line 41
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c()V

    .line 43
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-string v1, "com.kaspersky.kts.gui.settings.number"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->a:I

    .line 46
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->d()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->g()V

    .line 136
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onDestroy()V

    .line 137
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->e()V

    .line 124
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->d()V

    .line 113
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onStart()V

    .line 106
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->c()V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->c:LjN;

    invoke-virtual {v0}, LjN;->f()V

    .line 130
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->onStop()V

    .line 131
    return-void
.end method
