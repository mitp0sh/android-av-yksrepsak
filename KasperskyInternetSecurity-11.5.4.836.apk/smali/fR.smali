.class public final LfR;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements LeP;


# instance fields
.field private a:D

.field private b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

.field private c:Landroid/view/View;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 55
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v0, v0

    :goto_0
    iput-wide v0, p0, LfR;->a:D

    .line 56
    return-void

    .line 55
    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v0, v0

    goto :goto_0
.end method

.method public static a(I)LfR;
    .locals 3

    .prologue
    .line 43
    new-instance v0, LfR;

    invoke-direct {v0}, LfR;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v2, "index"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0, v1}, LfR;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 111
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;

    .line 112
    if-ne v0, p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Scroll view can\'t be the top layout element"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, LfR;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, LfR;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 118
    const v1, 0x7f020007

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const v1, 0x7f020004

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v1, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v2

    .line 132
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, v0, :cond_2

    .line 134
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 135
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 136
    const/4 v2, 0x1

    .line 141
    :cond_1
    if-nez v2, :cond_3

    .line 158
    :goto_1
    return-void

    .line 132
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_3
    new-instance v1, LfS;

    invoke-direct {v1, p0, v3, v4, v0}, LfS;-><init>(LfR;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/kaspersky/kts/gui/wizard/WizardScrollView;)V

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->setScrollObserver(LfW;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->k()V

    .line 218
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->a()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->r()Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-virtual {v0, p1}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->i()V

    .line 232
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, LfR;->d:I

    .line 76
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->j()V

    .line 239
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->g()V

    .line 203
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->h()V

    .line 211
    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, LfR;->d:I

    return v0
.end method

.method public final g()I
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, LfR;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, LfR;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-virtual {v0, p0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(LeP;)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->a(IILandroid/content/Intent;)V

    .line 225
    :cond_0
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->m()Z

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->l()V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 92
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    .line 163
    if-eqz p2, :cond_3

    .line 164
    invoke-virtual {p0}, LfR;->g()I

    move-result v0

    invoke-static {p1, v0, p0}, Lgc;->a(Landroid/view/LayoutInflater;ILandroid/support/v4/app/Fragment;)Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    move-result-object v0

    iput-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    .line 165
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 171
    iget-object v1, p0, LfR;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 175
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 176
    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/graphics/Point;)V

    .line 178
    iget-object v0, p0, LfR;->b:Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, LfV;->b(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LfR;->c:Landroid/view/View;

    .line 180
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    instance-of v0, v0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    check-cast v0, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;

    .line 182
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget-wide v3, p0, LfR;->a:D

    div-double/2addr v1, v3

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1

    .line 183
    iget-wide v1, p0, LfR;->a:D

    mul-double/2addr v1, v5

    double-to-int v1, v1

    sget-object v2, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;->ApplyWidthOnly:Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;

    invoke-virtual {v0, v1, v7, v2}, Lcom/kaspersky/kts/gui/controls/BoundedLinearLayout;->setBounds(IILcom/kaspersky/kts/gui/controls/BoundedLinearLayout$ApplyType;)V

    .line 186
    :cond_1
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    :cond_2
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, LfR;->a(Landroid/view/ViewGroup;)V

    .line 193
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    .line 195
    :goto_0
    return-object v0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onStop()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, LfR;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 244
    iget-object v1, p0, LfR;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 245
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 246
    return-void
.end method
