.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;


# instance fields
.field private a:Landroid/view/View;

.field private f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

.field private g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

.field private h:Lcom/kaspersky/kts/gui/controls/FormEditControl;

.field private i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

.field private j:Lcom/kaspersky/kts/gui/controls/FormEditControl;

.field private k:LeU;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private final u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

.field private v:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 81
    const/4 v0, 0x1

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->t:I

    .line 85
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lwv;

    invoke-direct {v0, p0}, Lwv;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;)V

    :goto_0
    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    .line 88
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->c:Landroid/content/Context;

    const-string v1, "836416529817"

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void

    .line 85
    :cond_0
    new-instance v0, Ldl;

    invoke-direct {v0, p0}, Ldl;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a:Landroid/view/View;

    const v1, 0x7f0b0224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 364
    if-lez v1, :cond_0

    iget v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->t:I

    if-ge v1, v3, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 367
    iget v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->t:I

    div-int v1, v4, v1

    int-to-float v1, v1

    .line 368
    iget v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->t:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->m:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    return-void

    .line 235
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const v4, 0x7f0b021b

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a:Landroid/view/View;

    const v3, 0x7f0b020d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->k:LeU;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->k:LeU;

    invoke-virtual {v3}, LeU;->b()V

    .line 115
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->k:LeU;

    .line 118
    :cond_0
    iget v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->s:I

    sparse-switch v3, :sswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 120
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h(I)V

    .line 121
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->m:Landroid/widget/Button;

    const v3, 0x7f0702c8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setEditText(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0, p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->c(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 125
    goto :goto_1

    .line 132
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h(I)V

    .line 133
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->m:Landroid/widget/Button;

    const v3, 0x7f0702c5

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 135
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0, p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    .line 139
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->v:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setEditText(Ljava/lang/String;)V

    .line 142
    new-instance v0, LeU;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, LeU;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->k:LeU;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 139
    goto :goto_2

    :cond_3
    move v1, v2

    .line 140
    goto :goto_3

    .line 145
    :sswitch_2
    const v0, 0x7f0b0221

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h(I)V

    goto/16 :goto_0

    .line 148
    :sswitch_3
    const v0, 0x7f0b0222

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h(I)V

    goto/16 :goto_0

    .line 151
    :sswitch_4
    const v0, 0x7f0b0227

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h(I)V

    goto/16 :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
    .end sparse-switch
.end method

.method private d()V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a:Landroid/view/View;

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 182
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 183
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 184
    instance-of v4, v1, Lcom/kaspersky/kts/gui/controls/FormEditControl;

    if-eqz v4, :cond_0

    .line 185
    check-cast v1, Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->c()V

    .line 182
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->d:Landroid/support/v4/app/Fragment;

    check-cast v0, LfR;

    .line 355
    invoke-virtual {v0}, LfR;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    .line 356
    return-void
.end method

.method private h(I)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a:Landroid/view/View;

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v4, v2

    move v1, v3

    .line 167
    :goto_0
    if-ge v4, v5, :cond_2

    .line 168
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 169
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, p1, :cond_1

    move v1, v2

    .line 174
    :cond_0
    :goto_1
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_1
    if-nez v1, :cond_0

    const-string v7, "view"

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v3

    .line 172
    goto :goto_1

    .line 176
    :cond_2
    return-void
.end method

.method private i(I)V
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->s:I

    if-eq v0, p1, :cond_0

    .line 192
    iput p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->s:I

    .line 193
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->d()V

    .line 194
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->c()V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0702d1

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    move-result-object v1

    const v2, 0x7f0702d2

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 440
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V
    .locals 9

    .prologue
    const v5, 0x7f020094

    const v4, 0x7f020093

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 200
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 201
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    if-ne p2, v0, :cond_1

    move v1, v2

    .line 203
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 230
    :goto_1
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->o:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->s:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->p:Z

    if-eqz v0, :cond_5

    :cond_0
    :goto_2
    invoke-direct {p0, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a(Z)V

    .line 232
    return-void

    :cond_1
    move v1, v3

    .line 201
    goto :goto_0

    .line 205
    :sswitch_0
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->o:Z

    .line 206
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a()Landroid/widget/TextView;

    move-result-object v7

    if-eqz v1, :cond_2

    move v0, v4

    :goto_3
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_3

    .line 216
    :sswitch_1
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->p:Z

    goto :goto_1

    .line 219
    :sswitch_2
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->q:Z

    .line 220
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a()Landroid/widget/TextView;

    move-result-object v0

    .line 222
    if-eqz v1, :cond_3

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_4

    .line 230
    :cond_4
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->q:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->p:Z

    if-nez v0, :cond_0

    :cond_5
    move v2, v3

    goto :goto_2

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b001b -> :sswitch_1
        0x7f0b021c -> :sswitch_0
        0x7f0b021e -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 375
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$1;->a:[I

    invoke-virtual {p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 377
    :pswitch_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->p()V

    goto :goto_0

    .line 380
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->r:Ljava/lang/String;

    .line 381
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 382
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->d(I)V

    goto :goto_0

    .line 385
    :pswitch_2
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 386
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 389
    :pswitch_3
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 390
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 393
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    .line 394
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 397
    :pswitch_5
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 398
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 401
    :pswitch_6
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    goto :goto_0

    .line 404
    :pswitch_7
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 405
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 408
    :pswitch_8
    invoke-direct {p0, v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    .line 409
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->j:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 412
    :pswitch_9
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 413
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 416
    :pswitch_a
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 417
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setEditText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :pswitch_b
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    .line 422
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setEditText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :pswitch_c
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    goto/16 :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->q()V

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bc

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 254
    :goto_0
    iput-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a:Landroid/view/View;

    .line 255
    const v0, 0x7f0b021c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    .line 256
    const v0, 0x7f0b001b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    .line 257
    const v0, 0x7f0b021e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    .line 258
    const v0, 0x7f0b0225

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->j:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    .line 259
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->d:Landroid/support/v4/app/Fragment;

    check-cast v0, LfR;

    invoke-virtual {v0}, LfR;->f()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->s:I

    .line 260
    const v0, 0x7f0b0215

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->m:Landroid/widget/Button;

    .line 261
    const v0, 0x7f0b0220

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->n:Landroid/widget/Button;

    .line 262
    const v0, 0x7f0b021d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->l:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0b021f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    .line 264
    const v0, 0x7f0b022a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->v:Landroid/widget/CheckBox;

    .line 266
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->l:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->c:Landroid/content/Context;

    const v5, 0x7f0702c7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0, p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    .line 271
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    const v0, 0x7f0b0226

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v0, 0x7f0b0228

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v0, 0x7f0b0229

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->v:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v4}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 278
    const v0, 0x7f0b020d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-interface {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v0}, Lse;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setEditText(Ljava/lang/String;)V

    .line 285
    :cond_0
    const v0, 0x7f0b021b

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->h(I)V

    .line 286
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->c()V

    .line 288
    return-object v1

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bd

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 250
    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 276
    goto :goto_1

    :cond_2
    move v2, v3

    .line 277
    goto :goto_2

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 293
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0229

    if-eq v0, v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 328
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 330
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 332
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->d:Landroid/support/v4/app/Fragment;

    check-cast v0, LfR;

    .line 333
    invoke-virtual {v0}, LfR;->f()I

    move-result v1

    .line 334
    if-ne v1, v6, :cond_3

    .line 335
    :goto_2
    invoke-virtual {v0, v7}, LfR;->b(I)V

    .line 336
    invoke-direct {p0, v7}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    goto :goto_0

    .line 302
    :sswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->d:Landroid/support/v4/app/Fragment;

    move-object v1, v0

    check-cast v1, LfR;

    .line 303
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    invoke-virtual {v1}, LfR;->f()I

    move-result v1

    if-ne v1, v6, :cond_2

    move v1, v6

    :goto_3
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->g:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v3}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v4}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->v:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    invoke-direct {p0, v8}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    goto :goto_1

    :cond_2
    move v1, v7

    .line 303
    goto :goto_3

    .line 311
    :sswitch_1
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->q()V

    goto :goto_1

    .line 314
    :sswitch_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->j:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->a(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, v8}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->i(I)V

    goto :goto_1

    .line 318
    :sswitch_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->u:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f:Lcom/kaspersky/kts/gui/controls/FormEditControl;

    invoke-virtual {v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 321
    :sswitch_4
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->f()V

    goto :goto_1

    .line 324
    :sswitch_5
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->e()V

    goto :goto_1

    :cond_3
    move v7, v6

    .line 334
    goto :goto_2

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0215 -> :sswitch_0
        0x7f0b021d -> :sswitch_3
        0x7f0b0220 -> :sswitch_1
        0x7f0b0226 -> :sswitch_2
        0x7f0b0228 -> :sswitch_4
        0x7f0b0229 -> :sswitch_5
    .end sparse-switch

    .line 330
    :pswitch_data_0
    .packed-switch 0x7f0b021c
        :pswitch_0
    .end packed-switch
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
