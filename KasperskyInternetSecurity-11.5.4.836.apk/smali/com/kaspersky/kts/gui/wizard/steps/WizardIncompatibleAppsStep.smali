.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;


# instance fields
.field private f:Landroid/view/View;

.field private g:Ljava/util/List;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    const-string v2, "com.android.settings.DeviceAdminAdd"

    invoke-direct {v1, v2, v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    const-string v2, "com.android.settings.DeviceAdminSettings"

    invoke-direct {v1, v2, v4}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v2, v3, v4}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 65
    const/high16 v0, 0x42200000    # 40.0f

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->h:I

    .line 66
    const/high16 v0, 0x41200000    # 10.0f

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->i:I

    .line 67
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-static {v0}, Lqy;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->g:Ljava/util/List;

    .line 128
    const v0, 0x7f0b0067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->a(Landroid/view/ViewGroup;)V

    .line 133
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->g:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 136
    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-lez v2, :cond_4

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 138
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object v13, v1

    move v1, v2

    move-object v2, v13

    .line 146
    :goto_1
    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move v5, v6

    move v7, v1

    .line 148
    :goto_2
    if-ge v5, v8, :cond_3

    .line 149
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->g:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 150
    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 153
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v9, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v4, v1

    .line 158
    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_4
    check-cast v1, Ljava/lang/String;

    .line 159
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    const/16 v11, 0xc8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setId(I)V

    .line 161
    iget-object v11, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    const v12, 0x7f0e007d

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 162
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v10, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 164
    const/16 v1, 0x10

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 168
    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 170
    iget v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->h:I

    iget v9, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->h:I

    invoke-virtual {v1, v6, v6, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    invoke-virtual {v10, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->i:I

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 174
    :cond_0
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v0, v10, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 148
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v7, v4

    goto :goto_2

    .line 136
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v1

    move-object v4, v3

    goto :goto_3

    .line 158
    :cond_2
    const-string v1, "(unknown)"

    goto :goto_4

    .line 177
    :cond_3
    return-void

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method private static a(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 114
    const/4 v0, 0x0

    .line 115
    :goto_0
    if-ge v0, v1, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 119
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-static {v0}, Lqy;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->d(I)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->p()V

    goto :goto_0
.end method

.method private h(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 216
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 217
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->j:Z

    move p1, v1

    .line 221
    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v2, v1

    .line 222
    :goto_0
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 223
    const-string v0, "com.android.settings"

    sget-object v4, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$DeviceAdminIntentInfo;->b:Z

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 226
    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->k:Ljava/lang/String;

    invoke-static {v4}, Lra;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->k:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->k:Ljava/lang/String;

    .line 229
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->j:Z

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 232
    :cond_2
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->k:Ljava/lang/String;

    .line 239
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 236
    :cond_3
    const-string v0, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070263

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0706b6

    invoke-virtual {v1, v2}, LoN;->b(I)LoN;

    move-result-object v1

    const v2, 0x7f070264

    new-instance v3, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$1;

    invoke-direct {v3, p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep$1;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;)V

    invoke-virtual {v1, v2, v3}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f070265

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Landroid/view/View;
    .locals 6

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 81
    const v0, 0x7f0b020d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0b020e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    const v2, 0x7f0b0215

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 84
    const v3, 0x7f0b0216

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 87
    const v5, 0x7f0702eb

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 88
    const v0, 0x7f0702ec

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 90
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->f:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->a(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->f:Landroid/view/View;

    return-object v0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->c:Landroid/content/Context;

    invoke-static {v0}, Lqy;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->p()V

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->g()V

    .line 110
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->a(Landroid/view/View;)V

    .line 104
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->j:Z

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->h(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 250
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->h(I)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->k:Ljava/lang/String;

    goto :goto_0

    .line 254
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->b(Landroid/view/View;)V

    goto :goto_0

    .line 257
    :sswitch_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;->h(I)V

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x7f0b0215 -> :sswitch_1
        0x7f0b0216 -> :sswitch_2
    .end sparse-switch
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method
