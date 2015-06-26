.class public final Lca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;

.field private final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lca;->c:Landroid/graphics/Paint;

    .line 19
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    iput-object v1, p0, Lca;->a:Landroid/graphics/Bitmap;

    .line 71
    iput-object v1, p0, Lca;->b:Landroid/graphics/Canvas;

    .line 73
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 8

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lca;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 34
    iget-object v2, p0, Lca;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 37
    if-eqz p1, :cond_1

    .line 38
    int-to-float v2, v3

    int-to-float v5, p1

    sub-float/2addr v2, v5

    int-to-float v5, v3

    div-float/2addr v2, v5

    .line 44
    :goto_0
    if-eqz p2, :cond_0

    .line 45
    int-to-float v0, v4

    int-to-float v5, p2

    sub-float/2addr v0, v5

    int-to-float v5, v4

    div-float/2addr v0, v5

    .line 50
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 53
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lca;->b:Landroid/graphics/Canvas;

    .line 54
    return-void

    :cond_1
    move v2, v0

    .line 40
    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lca;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Main view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lca;->b:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 28
    iget-object v0, p0, Lca;->b:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget-object v0, p0, Lca;->b:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 30
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 58
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lca;->a:Landroid/graphics/Bitmap;

    .line 59
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lca;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lca;->b:Landroid/graphics/Canvas;

    .line 61
    :cond_1
    return-void
.end method
