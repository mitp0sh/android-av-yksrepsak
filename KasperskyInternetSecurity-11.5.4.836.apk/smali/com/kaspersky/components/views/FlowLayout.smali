.class public final Lcom/kaspersky/components/views/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    sget-object v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Horizontal:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    iput-object v0, p0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    .line 28
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    .line 33
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    .line 42
    iput-boolean v1, p0, Lcom/kaspersky/components/views/FlowLayout;->d:Z

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaspersky/components/views/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Horizontal:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    iput-object v0, p0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    .line 28
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    .line 33
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    .line 42
    iput-boolean v1, p0, Lcom/kaspersky/components/views/FlowLayout;->d:Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/views/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget-object v0, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Horizontal:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    iput-object v0, p0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    .line 28
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    .line 33
    iput v1, p0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    .line 42
    iput-boolean v1, p0, Lcom/kaspersky/components/views/FlowLayout;->d:Z

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/views/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private a(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p1}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    goto :goto_0
.end method

.method private static a(I)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 359
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 360
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    return-object v0
.end method

.method private static a()Lcom/kaspersky/components/views/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 279
    new-instance v0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)Lcom/kaspersky/components/views/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kaspersky/components/views/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Lcom/kaspersky/components/views/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    invoke-direct {v0, p0}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 68
    sget-object v1, Lng;->FlowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 70
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 71
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :pswitch_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/kaspersky/components/views/FlowLayout;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 76
    :pswitch_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    goto :goto_1

    .line 79
    :pswitch_2
    const/4 v2, 0x3

    sget-object v3, Lcom/kaspersky/components/views/FlowLayout$Orientation;->Horizontal:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    # getter for: Lcom/kaspersky/components/views/FlowLayout$Orientation;->mId:I
    invoke-static {v3}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->access$000(Lcom/kaspersky/components/views/FlowLayout$Orientation;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    # invokes: Lcom/kaspersky/components/views/FlowLayout$Orientation;->a(I)Lcom/kaspersky/components/views/FlowLayout$Orientation;
    invoke-static {v2}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->access$100(I)Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move-result-object v2

    iput-object v2, p0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    goto :goto_1

    .line 82
    :pswitch_3
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kaspersky/components/views/FlowLayout;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 18

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/kaspersky/components/views/FlowLayout;->d:Z

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/16 v1, -0x100

    invoke-static {v1}, Lcom/kaspersky/components/views/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v6

    .line 306
    const v1, -0xff0100

    invoke-static {v1}, Lcom/kaspersky/components/views/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v15

    .line 307
    const/high16 v1, -0x10000

    invoke-static {v1}, Lcom/kaspersky/components/views/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v17

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    .line 311
    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_4

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v2, v1

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 314
    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v2, v1

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v8, v1, v4

    const/high16 v1, 0x40800000    # 4.0f

    sub-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v8, v1, v4

    const/high16 v1, 0x40800000    # 4.0f

    add-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    :cond_2
    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_5

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v3, v1

    .line 328
    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v3, v1

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 329
    const/high16 v1, 0x40800000    # 4.0f

    sub-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 330
    const/high16 v1, 0x40800000    # 4.0f

    add-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->d(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 339
    :cond_3
    :goto_2
    invoke-static/range {v16 .. v16}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    sget-object v1, LbF;->a:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-virtual {v2}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 344
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 346
    const/high16 v3, 0x40c00000    # 6.0f

    sub-float v3, v1, v3

    const/high16 v4, 0x40c00000    # 6.0f

    add-float v5, v1, v4

    move-object/from16 v1, p1

    move v4, v2

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 317
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    if-lez v1, :cond_2

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v9, v1, v2

    .line 320
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float v10, v8, v1

    move-object/from16 v7, p1

    move v11, v9

    move-object v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v11, v1, v2

    const/high16 v1, 0x40800000    # 4.0f

    sub-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 322
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v11, v1, v2

    const/high16 v1, 0x40800000    # 4.0f

    add-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 331
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    if-lez v1, :cond_3

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v11, v1, v2

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v12, v1

    .line 334
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    int-to-float v1, v1

    add-float v14, v12, v1

    move-object/from16 v10, p1

    move v13, v11

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    const/high16 v1, 0x40800000    # 4.0f

    sub-float v2, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    int-to-float v1, v1

    add-float v5, v12, v1

    move-object/from16 v1, p1

    move v4, v11

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 336
    const/high16 v1, 0x40800000    # 4.0f

    add-float v9, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kaspersky/components/views/FlowLayout;->c:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    move-object/from16 v8, p1

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 349
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    .line 351
    const/high16 v2, 0x40c00000    # 6.0f

    sub-float v2, v1, v2

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v4, v1

    move-object/from16 v1, p1

    move v5, v3

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p1}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->e(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 259
    :cond_0
    iget v0, p0, Lcom/kaspersky/components/views/FlowLayout;->b:I

    goto :goto_0
.end method


# virtual methods
.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 274
    instance-of v0, p1, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    return v0
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/views/FlowLayout;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 232
    return v0
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/kaspersky/components/views/FlowLayout;->a()Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/kaspersky/components/views/FlowLayout;->a(Landroid/util/AttributeSet;)Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 12
    invoke-static {p1}, Lcom/kaspersky/components/views/FlowLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/kaspersky/components/views/FlowLayout;->getChildCount()I

    move-result v2

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 222
    invoke-virtual {p0, v1}, Lcom/kaspersky/components/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    .line 224
    invoke-static {v0}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v4

    invoke-static {v0}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->c(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v5

    invoke-static {v0}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->b(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->c(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 22

    .prologue
    .line 100
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 101
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 103
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 104
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 106
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-virtual {v6, v2, v3}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->getSize(II)I

    move-result v14

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-virtual {v2, v4, v5}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->getSize(II)I

    move-result v15

    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v9, 0x0

    .line 119
    const/4 v7, 0x0

    .line 121
    const/4 v6, 0x0

    .line 123
    const/4 v12, 0x0

    .line 124
    const/4 v3, 0x0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getChildCount()I

    move-result v16

    .line 128
    const/4 v2, 0x0

    move v13, v2

    move v2, v3

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kaspersky/components/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 132
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v10, 0x8

    if-eq v3, v10, :cond_5

    .line 133
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;

    .line 139
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v4, v3, :cond_1

    const/high16 v3, -0x80000000

    :goto_1
    const/4 v10, 0x0

    iget v0, v2, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v10, v0}, Lcom/kaspersky/components/views/FlowLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 140
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v5, v3, :cond_2

    const/high16 v3, -0x80000000

    :goto_2
    const/16 v17, 0x0

    iget v0, v2, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/kaspersky/components/views/FlowLayout;->getChildMeasureSpec(III)I

    move-result v3

    .line 141
    invoke-virtual {v8, v10, v3}, Landroid/view/View;->measure(II)V

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kaspersky/components/views/FlowLayout;->b(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v3

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kaspersky/components/views/FlowLayout;->a(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)I

    move-result v17

    .line 146
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 147
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 152
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move/from16 v0, v18

    invoke-virtual {v8, v10, v0}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->getSize(II)I

    move-result v8

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->getSize(II)I

    move-result v10

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->getSize(II)I

    move-result v19

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->getSize(II)I

    move-result v17

    .line 170
    add-int/2addr v7, v8

    .line 171
    add-int v3, v7, v19

    .line 174
    invoke-static {v2}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a(Lcom/kaspersky/components/views/FlowLayout$LayoutParams;)Z

    move-result v20

    if-nez v20, :cond_0

    if-eqz v15, :cond_4

    if-le v7, v14, :cond_4

    .line 175
    :cond_0
    add-int v3, v6, v11

    .line 179
    add-int v7, v10, v17

    .line 180
    add-int v6, v8, v19

    move v9, v10

    move v11, v7

    move v7, v8

    .line 183
    :goto_3
    add-int v17, v17, v10

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 184
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 188
    sget-object v9, LbF;->a:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->ordinal()I

    move-result v17

    aget v9, v9, v17

    packed-switch v9, :pswitch_data_0

    .line 198
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Orientation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v3, v4

    .line 139
    goto/16 :goto_1

    :cond_2
    move v3, v5

    .line 140
    goto/16 :goto_2

    .line 190
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v7

    sub-int v8, v9, v8

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v3

    .line 200
    :goto_4
    invoke-virtual {v2, v8, v9}, Lcom/kaspersky/components/views/FlowLayout$LayoutParams;->a(II)V

    .line 202
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 203
    add-int v7, v3, v10

    move v9, v10

    .line 128
    :goto_5
    add-int/lit8 v8, v13, 0x1

    move v13, v8

    move v12, v2

    move v2, v7

    move v7, v6

    move v6, v3

    goto/16 :goto_0

    .line 194
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v3

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/kaspersky/components/views/FlowLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v7

    sub-int v9, v9, v18

    .line 196
    goto :goto_4

    .line 206
    :cond_3
    sget-object v3, LbF;->a:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-virtual {v4}, Lcom/kaspersky/components/views/FlowLayout$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 214
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Orientation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kaspersky/components/views/FlowLayout;->a:Lcom/kaspersky/components/views/FlowLayout$Orientation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :pswitch_2
    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/kaspersky/components/views/FlowLayout;->resolveSize(II)I

    move-result v3

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/kaspersky/components/views/FlowLayout;->resolveSize(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/kaspersky/components/views/FlowLayout;->setMeasuredDimension(II)V

    .line 212
    :goto_6
    return-void

    .line 211
    :pswitch_3
    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/kaspersky/components/views/FlowLayout;->resolveSize(II)I

    move-result v2

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/kaspersky/components/views/FlowLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/kaspersky/components/views/FlowLayout;->setMeasuredDimension(II)V

    goto :goto_6

    :cond_4
    move/from16 v21, v6

    move v6, v3

    move/from16 v3, v21

    goto/16 :goto_3

    :cond_5
    move v3, v6

    move v6, v7

    move v7, v2

    move v2, v12

    goto :goto_5

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
