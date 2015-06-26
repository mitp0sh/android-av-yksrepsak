.class public final Liy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[F

.field private b:[F

.field private c:[J

.field private d:F

.field private e:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    new-array v0, v1, [F

    iput-object v0, p0, Liy;->a:[F

    .line 1315
    new-array v0, v1, [F

    iput-object v0, p0, Liy;->b:[F

    .line 1316
    new-array v0, v1, [J

    iput-object v0, p0, Liy;->c:[J

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1309
    invoke-direct {p0}, Liy;-><init>()V

    return-void
.end method

.method private a(FFJ)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 1336
    const/4 v0, -0x1

    .line 1338
    iget-object v3, p0, Liy;->c:[J

    move v1, v2

    .line 1339
    :goto_0
    if-ge v1, v8, :cond_1

    .line 1340
    aget-wide v4, v3, v1

    cmp-long v4, v4, v9

    if-eqz v4, :cond_1

    .line 1341
    aget-wide v4, v3, v1

    const-wide/16 v6, 0xc8

    sub-long v6, p3, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move v0, v1

    .line 1339
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1346
    :cond_1
    if-ne v1, v8, :cond_2

    if-gez v0, :cond_2

    move v0, v2

    .line 1349
    :cond_2
    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 1350
    :cond_3
    iget-object v4, p0, Liy;->a:[F

    .line 1351
    iget-object v5, p0, Liy;->b:[F

    .line 1352
    if-ltz v0, :cond_4

    .line 1353
    add-int/lit8 v6, v0, 0x1

    .line 1354
    rsub-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, -0x1

    .line 1355
    invoke-static {v4, v6, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    invoke-static {v5, v6, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    invoke-static {v3, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1358
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v0

    .line 1360
    :cond_4
    aput p1, v4, v1

    .line 1361
    aput p2, v5, v1

    .line 1362
    aput-wide p3, v3, v1

    .line 1363
    add-int/lit8 v0, v1, 0x1

    .line 1364
    if-ge v0, v8, :cond_5

    .line 1365
    aput-wide v9, v3, v0

    .line 1367
    :cond_5
    return-void
.end method

.method private a(IF)V
    .locals 18

    .prologue
    .line 1374
    move-object/from16 v0, p0

    iget-object v6, v0, Liy;->a:[F

    .line 1375
    move-object/from16 v0, p0

    iget-object v7, v0, Liy;->b:[F

    .line 1376
    move-object/from16 v0, p0

    iget-object v8, v0, Liy;->c:[J

    .line 1378
    const/4 v1, 0x0

    aget v9, v6, v1

    .line 1379
    const/4 v1, 0x0

    aget v10, v7, v1

    .line 1380
    const/4 v1, 0x0

    aget-wide v11, v8, v1

    .line 1381
    const/4 v2, 0x0

    .line 1382
    const/4 v3, 0x0

    .line 1383
    const/4 v1, 0x0

    move v5, v1

    .line 1384
    :goto_0
    const/4 v1, 0x4

    if-ge v5, v1, :cond_0

    .line 1385
    aget-wide v13, v8, v5

    const-wide/16 v15, 0x0

    cmp-long v1, v13, v15

    if-eqz v1, :cond_0

    .line 1386
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 1391
    :cond_0
    const/4 v1, 0x1

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    .line 1392
    aget-wide v13, v8, v4

    sub-long/2addr v13, v11

    long-to-int v13, v13

    .line 1393
    if-eqz v13, :cond_6

    .line 1394
    aget v1, v6, v4

    sub-float/2addr v1, v9

    .line 1395
    int-to-float v14, v13

    div-float/2addr v1, v14

    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v1, v14

    .line 1396
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-nez v14, :cond_1

    .line 1399
    :goto_2
    aget v2, v7, v4

    sub-float/2addr v2, v10

    .line 1400
    int-to-float v13, v13

    div-float/2addr v2, v13

    move/from16 v0, p1

    int-to-float v13, v0

    mul-float/2addr v2, v13

    .line 1401
    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-nez v13, :cond_2

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    .line 1391
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 1397
    :cond_1
    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    goto :goto_2

    .line 1402
    :cond_2
    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto :goto_3

    .line 1404
    :cond_3
    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    const v1, -0x800001

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_4
    move-object/from16 v0, p0

    iput v1, v0, Liy;->e:F

    .line 1406
    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_5

    const v1, -0x800001

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_5
    move-object/from16 v0, p0

    iput v1, v0, Liy;->d:F

    .line 1408
    return-void

    .line 1404
    :cond_4
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    .line 1406
    :cond_5
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5

    :cond_6
    move v1, v3

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1322
    iget-object v0, p0, Liy;->c:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1323
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 1370
    const/16 v0, 0x3e8

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p0, v0, v1}, Liy;->a(IF)V

    .line 1371
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 1326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 1327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 1328
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 1329
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Liy;->a(FFJ)V

    .line 1328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1332
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3, v1, v2}, Liy;->a(FFJ)V

    .line 1333
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 1411
    iget v0, p0, Liy;->e:F

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 1415
    iget v0, p0, Liy;->d:F

    return v0
.end method
