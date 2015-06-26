.class final Lci;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private synthetic c:Lcg;


# direct methods
.method public constructor <init>(Lcg;FF)V
    .locals 2

    .prologue
    .line 210
    iput-object p1, p0, Lci;->c:Lcg;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 211
    iput p2, p0, Lci;->a:F

    .line 212
    iput p3, p0, Lci;->b:F

    .line 214
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lci;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 216
    iget v0, p0, Lci;->b:F

    iget v1, p0, Lci;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    .line 217
    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lci;->setDuration(J)V

    .line 218
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 224
    iget v0, p0, Lci;->b:F

    iget v1, p0, Lci;->a:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lci;->a:F

    add-float/2addr v0, v1

    .line 225
    iget-object v1, p0, Lci;->c:Lcg;

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcg;->a(Lcg;I)I

    .line 227
    iget-object v0, p0, Lci;->c:Lcg;

    invoke-static {v0}, Lcg;->a(Lcg;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 228
    return-void
.end method
