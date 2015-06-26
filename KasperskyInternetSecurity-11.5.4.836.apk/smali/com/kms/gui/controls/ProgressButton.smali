.class public Lcom/kms/gui/controls/ProgressButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:LnZ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kms/gui/controls/ProgressButton;->a(Landroid/content/Context;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101014f

    aput v1, v0, v2

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-direct {p0, p1, v1}, Lcom/kms/gui/controls/ProgressButton;->a(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 73
    iget-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    const v1, 0x7f03009d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/kms/gui/controls/ProgressButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    const v0, 0x7f0b01ba

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/ProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->a:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0b01bb

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/ProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->b:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0, p2}, Lcom/kms/gui/controls/ProgressButton;->setText(I)V

    .line 52
    invoke-direct {p0}, Lcom/kms/gui/controls/ProgressButton;->a()V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    invoke-virtual {p0}, Lcom/kms/gui/controls/ProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/kms/gui/controls/ProgressButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 89
    iget-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->c:LnZ;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->c:LnZ;

    invoke-interface {v0}, LnZ;->y()V

    .line 92
    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/kms/gui/controls/ProgressButton;->a()V

    .line 68
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/kms/gui/controls/ProgressButton;->b()V

    goto :goto_0
.end method

.method public setSizeChangeObserver(LnZ;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kms/gui/controls/ProgressButton;->c:LnZ;

    .line 96
    return-void
.end method

.method public setText(I)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/kms/gui/controls/ProgressButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :cond_0
    return-void
.end method
