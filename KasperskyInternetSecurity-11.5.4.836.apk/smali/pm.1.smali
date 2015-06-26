.class public final Lpm;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/view/View;

.field private final c:Z

.field private final d:Lpn;


# direct methods
.method public constructor <init>(Landroid/view/View;ZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 25
    iput-object p1, p0, Lpm;->b:Landroid/view/View;

    .line 26
    if-eqz p2, :cond_0

    .line 27
    if-nez p3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lpm;->a:I

    .line 33
    iput-boolean p2, p0, Lpm;->c:Z

    .line 35
    new-instance v0, Lpn;

    invoke-direct {v0, p0, v1}, Lpn;-><init>(Lpm;B)V

    iput-object v0, p0, Lpm;->d:Lpn;

    .line 36
    iget-object v0, p0, Lpm;->d:Lpn;

    invoke-virtual {p0, v0}, Lpm;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    return-void

    .line 27
    :cond_1
    const/high16 v0, -0x80000000

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lpm;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lpm;->c:Z

    return v0
.end method

.method static synthetic b(Lpm;)Landroid/view/View;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lpm;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lpm;->c:Z

    if-eqz v0, :cond_0

    .line 43
    iget v0, p0, Lpm;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 47
    :goto_0
    iget-object v1, p0, Lpm;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    iget-object v0, p0, Lpm;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 49
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lpm;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 58
    instance-of v0, p1, Lpn;

    if-eqz v0, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lpm;->d:Lpn;

    invoke-static {v0, p1}, Lpn;->a(Lpn;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;

    goto :goto_0
.end method

.method public final willChangeBounds()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
