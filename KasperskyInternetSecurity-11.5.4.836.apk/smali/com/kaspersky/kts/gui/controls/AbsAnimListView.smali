.class public abstract Lcom/kaspersky/kts/gui/controls/AbsAnimListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements LeX;


# instance fields
.field private final a:LeV;

.field private final b:LeR;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, LeV;

    invoke-direct {v0, p0}, LeV;-><init>(LeX;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a:LeV;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    .line 45
    new-instance v0, LeR;

    invoke-direct {v0, p0}, LeR;-><init>(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    .line 47
    return-void
.end method

.method private a(Landroid/view/View;Z)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 101
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 103
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 105
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 106
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    .line 109
    :goto_1
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 109
    goto :goto_1
.end method

.method public static synthetic a(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic a(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;J)V
    .locals 9

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v7, v0, LeR;->a:I

    .line 285
    const/4 v6, 0x0

    .line 286
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v8

    .line 287
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 294
    iget v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->h:I

    if-eqz v0, :cond_0

    .line 295
    iget v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->h:I

    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 296
    if-ltz v0, :cond_8

    .line 297
    const/4 v0, 0x0

    move v6, v0

    .line 301
    :cond_0
    :goto_0
    if-nez v6, :cond_3

    iget v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    iget v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->h:I

    add-int/2addr v0, v1

    .line 302
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 303
    iget v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->h:I

    if-eqz v1, :cond_1

    if-eqz v0, :cond_4

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->h:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 319
    :goto_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 323
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getFirstVisiblePosition()I

    move-result v0

    :goto_3
    if-ge v0, v7, :cond_5

    .line 326
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 325
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 301
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto :goto_2

    .line 332
    :cond_5
    const/4 v0, 0x0

    neg-int v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    add-int/2addr v0, v1

    .line 335
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_7

    .line 341
    :cond_6
    :goto_4
    return-void

    .line 339
    :cond_7
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_8
    move v6, v0

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Z)Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e:Z

    return v0
.end method

.method private a(Z)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 113
    .line 116
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v0, v0, LeR;->a:I

    .line 118
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v5, v1, LeR;->b:I

    .line 121
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Landroid/view/View;Z)I

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    .line 143
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 122
    goto :goto_0

    :cond_1
    move v4, v0

    move v1, v3

    move v0, v3

    .line 125
    :goto_1
    if-gt v4, v5, :cond_5

    .line 126
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_4

    .line 129
    iget-object v7, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v7, v8, :cond_3

    .line 132
    invoke-direct {p0, v6, v3}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Landroid/view/View;Z)I

    move-result v0

    .line 134
    if-eqz p1, :cond_3

    .line 135
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 125
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    :cond_5
    iget-object v4, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v5

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 143
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic b(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b(Z)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 170
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getMeasuredWidth()I

    move-result v1

    move v4, v1

    .line 171
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    move v3, v1

    .line 172
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getLastVisiblePosition()I

    move-result v1

    move v2, v1

    .line 173
    :goto_2
    if-lez v3, :cond_0

    if-gtz v4, :cond_4

    .line 188
    :cond_0
    :goto_3
    return-object v0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    move v4, v1

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v3, v1

    goto :goto_1

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v1, v1, LeR;->b:I

    move v2, v1

    goto :goto_2

    .line 176
    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Lfb;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    .line 180
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v0, v0, LeR;->a:I

    :goto_4
    if-gt v0, v2, :cond_6

    .line 183
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 184
    if-eqz v4, :cond_5

    .line 185
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getDrawingTime()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 182
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 188
    goto :goto_3
.end method

.method public static synthetic b(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Z)Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->f:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getFirstVisiblePosition()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v1, v1, LeR;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 150
    sub-int v0, v1, v0

    .line 152
    if-gez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 161
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 162
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 163
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->h:I

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e:Z

    .line 197
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    iput-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    iput-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    .line 205
    :cond_1
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->f:Z

    .line 206
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 209
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(I)V

    .line 214
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->f:Z

    .line 216
    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v6

    .line 218
    iput-boolean v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e:Z

    .line 219
    iput v5, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->h:I

    .line 221
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget-boolean v0, v0, LeR;->c:Z

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 223
    invoke-direct {p0, v5}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e()V

    goto :goto_0

    .line 227
    :cond_1
    invoke-direct {p0, v5}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    .line 228
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e()V

    goto :goto_0

    .line 232
    :cond_2
    iput v5, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    .line 233
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a:LeV;

    iget v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    iget v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    iget-object v3, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v6}, Lfb;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, LeV;->a(IIIFZ)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_4

    .line 237
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e()V

    goto :goto_0

    .line 240
    :cond_4
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->d()V

    .line 241
    invoke-direct {p0, v1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    .line 242
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    .line 243
    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a:LeV;

    iget v3, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    iget v4, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    invoke-virtual {v6}, Lfb;->d()I

    move-result v0

    neg-int v0, v0

    int-to-float v6, v0

    move v7, v5

    invoke-virtual/range {v2 .. v7}, LeV;->a(IIIFZ)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 250
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e:Z

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(LeR;)V

    .line 256
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v0, v0, LeR;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v0, v0, LeR;->b:I

    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget v1, v1, LeR;->a:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b:LeR;

    iget-boolean v0, v0, LeR;->c:Z

    if-eqz v0, :cond_2

    .line 264
    invoke-direct {p0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Z)Z

    .line 265
    invoke-direct {p0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 269
    :cond_2
    invoke-direct {p0, v3}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e()V

    goto :goto_0

    .line 273
    :cond_3
    invoke-direct {p0, v3}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    if-nez v0, :cond_4

    .line 275
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e()V

    goto :goto_0

    .line 278
    :cond_4
    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 352
    iput p1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    .line 353
    new-instance v0, LeQ;

    invoke-direct {v0, p0}, LeQ;-><init>(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->k:Ljava/lang/Runnable;

    .line 370
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->invalidate()V

    .line 371
    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 93
    return-void
.end method

.method protected abstract a(LeR;)V
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e:Z

    return v0
.end method

.method protected abstract a(I)Z
.end method

.method protected abstract b(I)V
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g()V

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 345
    iput p1, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g:I

    .line 346
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->invalidate()V

    .line 347
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a:LeV;

    invoke-virtual {v0}, LeV;->a()V

    .line 348
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->g()V

    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->getDrawingTime()J

    move-result-wide v0

    .line 75
    invoke-direct {p0, p1, v0, v1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Landroid/graphics/Canvas;J)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->k:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->k:Ljava/lang/Runnable;

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 62
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->f()V

    .line 65
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->f:Z

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0
.end method
