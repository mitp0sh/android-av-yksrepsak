.class public Lcom/kaspersky/kts/gui/wizard/WizardActivity;
.super Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:LeP;

.field private d:Ljava/io/Serializable;

.field private e:I

.field private f:Lcom/kaspersky/kts/gui/wizard/WizardType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;-><init>()V

    return-void
.end method

.method private static a(Lcom/kaspersky/kts/gui/wizard/WizardType;Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 81
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    :cond_0
    if-eqz p2, :cond_1

    .line 84
    const-string v1, "com_kms_extra_info"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    :cond_1
    const-string v1, "com_kms_wizard_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method public static synthetic a(Lcom/kaspersky/kts/gui/wizard/WizardActivity;)LeP;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 229
    const/16 v0, 0xb

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->PremiumFeatures:Lcom/kaspersky/kts/gui/wizard/WizardType;

    invoke-static {p0, v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/app/Activity;ILcom/kaspersky/kts/gui/wizard/WizardType;)V

    .line 230
    return-void
.end method

.method private static a(Landroid/app/Activity;ILcom/kaspersky/kts/gui/wizard/WizardType;)V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v1, "com.kspersky.kts.gui.wizard.stepnumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v1, "com_kms_wizard_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->AllWebRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Lcom/kaspersky/kts/gui/wizard/WizardType;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->UcpRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Lcom/kaspersky/kts/gui/wizard/WizardType;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 246
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x2

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->DeviceAdminStep:Lcom/kaspersky/kts/gui/wizard/WizardType;

    invoke-static {p0, v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/app/Activity;ILcom/kaspersky/kts/gui/wizard/WizardType;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to show device admin step with disabled Anti-Thief at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LbC;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lki;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(LeP;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    .line 217
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->f:Lcom/kaspersky/kts/gui/wizard/WizardType;

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/kaspersky/kts/gui/wizard/WizardType;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->f:Lcom/kaspersky/kts/gui/wizard/WizardType;

    return-object v0
.end method

.method public final c()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->d:Ljava/io/Serializable;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b:I

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    invoke-interface {v0, p1}, LeP;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    invoke-interface {v0, p1, p2, p3}, LeP;->onActivityResult(IILandroid/content/Intent;)V

    .line 212
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 183
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    invoke-interface {v2}, LeP;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    :goto_0
    if-nez v0, :cond_0

    .line 195
    invoke-super {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onBackPressed()V

    .line 197
    :cond_0
    return-void

    .line 188
    :cond_1
    iget v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->f:Lcom/kaspersky/kts/gui/wizard/WizardType;

    sget-object v3, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    if-ne v2, v3, :cond_2

    .line 189
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->e:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 127
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->e:I

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 96
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 98
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    const-string v0, "com.kspersky.kts.gui.wizard.stepnumber"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->b:I

    .line 100
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    const-string v2, "com_kms_wizard_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "com_kms_wizard_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardType;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->f:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 107
    :goto_0
    const-string v0, "com_kms_extra_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->d:Ljava/io/Serializable;

    .line 108
    const v0, 0x7f0300ad

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->setContentView(I)V

    .line 109
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->f:Lcom/kaspersky/kts/gui/wizard/WizardType;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f0702da

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    const v1, 0x7f0702db

    new-instance v2, LfQ;

    invoke-direct {v2, p0}, LfQ;-><init>(Lcom/kaspersky/kts/gui/wizard/WizardActivity;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f0702dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    invoke-interface {v0}, LeP;->e()V

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onPause()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    invoke-interface {v0}, LeP;->d()V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->e()V

    .line 148
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c:LeP;

    invoke-interface {v0, p1}, LeP;->a(Z)V

    .line 204
    :cond_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/KMSBaseFragmentActivity;->onWindowFocusChanged(Z)V

    .line 205
    return-void
.end method
