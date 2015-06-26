.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements LnZ;


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I


# instance fields
.field private f:Lky;

.field private l:Landroid/widget/ViewAnimator;

.field private m:Landroid/view/GestureDetector;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:I

.field private s:[Landroid/widget/ImageView;

.field private final t:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;

.field private u:Lcom/kms/gui/controls/ProgressButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->g:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->h:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->i:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->j:[I

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->k:[I

    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f02004c
        0x7f02004d
        0x7f02004e
        0x7f02004f
    .end array-data

    .line 68
    :array_1
    .array-data 4
        0x7f02008a
        0x7f02008c
        0x7f02008e
        0x7f020090
    .end array-data

    .line 75
    :array_2
    .array-data 4
        0x7f02008b
        0x7f02008d
        0x7f02008f
        0x7f020091
    .end array-data

    .line 82
    :array_3
    .array-data 4
        0x7f0b0120
        0x7f0b0132
        0x7f0b0148
        0x7f0b0149
    .end array-data

    .line 86
    :array_4
    .array-data 4
        0x7f02004c
        0x7f02004d
    .end array-data
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    .line 97
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;B)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->t:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;

    .line 58
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 211
    const v0, 0x7f0b0120

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    const v1, 0x7f0b013e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    const v2, 0x7f0b013f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 215
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-object v3
.end method

.method private static a(ZZ)Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x2

    const/4 v6, 0x0

    .line 225
    if-eqz p0, :cond_1

    .line 226
    if-eqz p1, :cond_0

    move v4, v6

    move v2, v0

    .line 243
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 248
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 249
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 250
    return-object v0

    :cond_0
    move v2, v6

    .line 231
    goto :goto_0

    .line 234
    :cond_1
    if-eqz p1, :cond_2

    move v2, v4

    move v4, v6

    .line 236
    goto :goto_0

    :cond_2
    move v4, v0

    move v2, v6

    .line 239
    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 394
    if-eqz p0, :cond_0

    .line 395
    invoke-static {p0, p1}, Lwh;->b(Landroid/app/Activity;I)V

    .line 397
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->h(I)V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->s:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;)Landroid/widget/ViewAnimator;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method private h(I)V
    .locals 3

    .prologue
    .line 180
    if-ltz p1, :cond_0

    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->h:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    if-ne p1, v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    if-ltz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->s:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->i:[I

    iget v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :cond_2
    iput p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    .line 189
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->s:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->h:[I

    iget v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->r:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showNext()V

    .line 269
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->h(I)V

    .line 271
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showPrevious()V

    .line 277
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->h(I)V

    .line 278
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->u:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/kms/gui/controls/ProgressButton;->setClickable(Z)V

    .line 363
    new-instance v0, Lur;

    invoke-direct {v0}, Lur;-><init>()V

    .line 364
    invoke-virtual {v0}, Lur;->a()V

    .line 365
    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ActivationCodeListenerImpl;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;B)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lur;->a(Lut;J)V

    .line 377
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->t()V

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d_()Landroid/app/Activity;

    move-result-object v0

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 401
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 199
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 200
    new-instance v0, Lky;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lky;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->f:Lky;

    .line 201
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->f:Lky;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->u:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, v1}, Lky;->a(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->f:Lky;

    invoke-virtual {v0, p0}, Lky;->a(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->f:Lky;

    .line 205
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d_()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, LoK;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->m:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 13

    .prologue
    const v12, 0x7f0b0143

    const v10, 0x7f0b0141

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 106
    const v0, 0x7f0b0146

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    .line 108
    invoke-static {v5, v5}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->n:Landroid/view/animation/Animation;

    .line 109
    invoke-static {v5, v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->o:Landroid/view/animation/Animation;

    .line 110
    invoke-static {v3, v5}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->p:Landroid/view/animation/Animation;

    .line 111
    invoke-static {v3, v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->q:Landroid/view/animation/Animation;

    .line 113
    invoke-static {}, Lqq;->b()Z

    move-result v1

    .line 115
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    if-eqz v1, :cond_1

    const v0, 0x7f0a0024

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 117
    if-eqz v1, :cond_2

    const v0, 0x7f0a0025

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 118
    if-eqz v1, :cond_3

    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->g:[I

    move-object v1, v0

    .line 119
    :goto_2
    array-length v9, v1

    .line 122
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->c()Ljava/io/Serializable;

    move-result-object v0

    .line 123
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_3
    array-length v0, v7

    if-lt v0, v9, :cond_0

    array-length v0, v8

    if-ge v0, v9, :cond_5

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fix premium features descriptions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    const v0, 0x7f0a0026

    goto :goto_0

    .line 117
    :cond_2
    const v0, 0x7f0a0027

    goto :goto_1

    .line 118
    :cond_3
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->k:[I

    move-object v1, v0

    goto :goto_2

    .line 126
    :cond_4
    const v0, 0x7f0b0142

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 135
    :cond_5
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->j:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->s:[Landroid/widget/ImageView;

    move v2, v3

    .line 136
    :goto_4
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->j:[I

    array-length v0, v0

    if-ge v2, v0, :cond_7

    .line 137
    iget-object v10, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->s:[Landroid/widget/ImageView;

    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->j:[I

    aget v0, v0, v2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v10, v2

    .line 140
    array-length v0, v1

    if-lt v2, v0, :cond_a

    move v0, v3

    .line 143
    :goto_5
    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->s:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    iget-object v10, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->t:Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep$ImageListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->s:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 150
    :cond_7
    invoke-direct {p0, v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->h(I)V

    move v0, v3

    .line 152
    :goto_7
    if-ge v0, v9, :cond_8

    .line 153
    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->l:Landroid/widget/ViewAnimator;

    aget v5, v1, v0

    aget-object v10, v7, v0

    aget-object v11, v8, v0

    invoke-direct {p0, v5, v10, v11}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;I)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 156
    :cond_8
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->m:Landroid/view/GestureDetector;

    .line 157
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lkr;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const v0, 0x7f0b014a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/ProgressButton;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->u:Lcom/kms/gui/controls/ProgressButton;

    .line 159
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->u:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->u:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/ProgressButton;->setSizeChangeObserver(LnZ;)V

    .line 161
    const v0, 0x7f0b0145

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0b0147

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 168
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v4, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->k()V

    .line 175
    return-object v6

    :cond_9
    move v0, v4

    .line 157
    goto :goto_8

    :cond_a
    move v0, v5

    goto/16 :goto_5
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public final e_()V
    .locals 0

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->p()V

    .line 355
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 323
    :sswitch_0
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->v()V

    goto :goto_0

    .line 326
    :sswitch_1
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->u()V

    goto :goto_0

    .line 329
    :sswitch_2
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->w()V

    .line 330
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->GetAllFeatures:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;)V

    goto :goto_0

    .line 333
    :sswitch_3
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->f()V

    .line 334
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->TryNow:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;)V

    goto :goto_0

    .line 338
    :sswitch_4
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->p()V

    goto :goto_0

    .line 342
    :sswitch_5
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d_()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, LkA;

    invoke-direct {v2, p0}, LkA;-><init>(Lkz;)V

    invoke-static {v0, v1, v2}, Lkq;->a(Landroid/content/Context;Landroid/app/Activity;LkA;)V

    goto :goto_0

    .line 345
    :sswitch_6
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(Landroid/app/Activity;I)V

    .line 346
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->x()V

    goto :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x7f0b0082 -> :sswitch_5
        0x7f0b0083 -> :sswitch_6
        0x7f0b0141 -> :sswitch_4
        0x7f0b0142 -> :sswitch_4
        0x7f0b0143 -> :sswitch_3
        0x7f0b0145 -> :sswitch_0
        0x7f0b0147 -> :sswitch_1
        0x7f0b014a -> :sswitch_2
    .end sparse-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 285
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 286
    sub-float v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    .line 287
    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->v()V

    .line 296
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->u()V

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method protected final t()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d(I)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->p()V

    .line 389
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public final y()V
    .locals 1

    .prologue
    .line 405
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;->f:Lky;

    invoke-virtual {v0}, Lky;->a()V

    .line 408
    :cond_0
    return-void
.end method
