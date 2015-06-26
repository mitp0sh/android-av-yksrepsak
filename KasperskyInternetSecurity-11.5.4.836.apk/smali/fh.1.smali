.class public abstract Lfh;
.super Lfj;
.source "SourceFile"


# instance fields
.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/View;

.field private j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 39
    const/4 v0, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    iget-object v2, p0, Lfh;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lfh;->k:I

    .line 44
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lfh;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lfh;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfh;->i:Landroid/view/View;

    .line 132
    :cond_0
    iget-object v0, p0, Lfh;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 133
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    iget-object v1, p0, Lfh;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lfh;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lfh;->i:Landroid/view/View;

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lfh;->j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method static synthetic a(Lfh;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lfh;->A()V

    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 78
    iget-object v0, p0, Lfh;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 79
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 81
    iget v1, p0, Lfh;->k:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 82
    iget-object v1, p0, Lfh;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lfh;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const-string v0, "Welcome AT wizard screen"

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private z()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 87
    iget-object v0, p0, Lfh;->j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lfh;->c:Landroid/content/Context;

    new-instance v1, Lfi;

    invoke-direct {v1, p0, v3}, Lfi;-><init>(Lfh;B)V

    invoke-static {v0, v1, v4}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Landroid/content/Context;Loj;Landroid/support/v4/app/DialogFragment;)Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    move-result-object v0

    iput-object v0, p0, Lfh;->j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    .line 90
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 92
    iget v1, p0, Lfh;->k:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 93
    iget-object v1, p0, Lfh;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 94
    iget-object v1, p0, Lfh;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lfh;->j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lfh;->c:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 97
    iget-object v1, p0, Lfh;->j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 98
    iput-object v4, p0, Lfh;->i:Landroid/view/View;

    .line 99
    const-string v0, "Secret code screen"

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lsj;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 63
    :goto_0
    invoke-virtual {p0}, Lfh;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 65
    invoke-static {}, Lqz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0}, Lfh;->z()V

    .line 74
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lfj;->a(Z)V

    .line 75
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0}, Lfh;->A()V

    goto :goto_1

    .line 71
    :cond_3
    invoke-direct {p0}, Lfh;->y()V

    goto :goto_1
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lfh;->j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lfh;->j:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->c()V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lfj;->b(Z)V

    .line 108
    return-void
.end method

.method protected abstract c()Landroid/view/View;
.end method

.method protected abstract d()V
.end method

.method protected final e()Landroid/view/View;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lfh;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfh;->h:Landroid/widget/LinearLayout;

    .line 53
    iget-object v0, p0, Lfh;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected abstract f()Z
.end method

.method public g()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lsj;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    invoke-virtual {p0}, Lfh;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 116
    invoke-static {}, Lqz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-direct {p0}, Lfh;->z()V

    .line 125
    :goto_1
    invoke-super {p0}, Lfj;->g()V

    .line 126
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lfh;->A()V

    .line 120
    invoke-virtual {p0}, Lfh;->d()V

    goto :goto_1

    .line 123
    :cond_2
    invoke-direct {p0}, Lfh;->y()V

    goto :goto_1
.end method
