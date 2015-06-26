.class public final LeV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LeW;

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(LeX;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 33
    :cond_0
    new-instance v0, LeW;

    invoke-direct {v0, p1}, LeW;-><init>(LeX;)V

    iput-object v0, p0, LeV;->a:LeW;

    .line 34
    return-void
.end method

.method private a(IIIFFZ)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 43
    int-to-float v0, p1

    iput v0, p0, LeV;->h:F

    .line 44
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LeV;->b:I

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LeV;->c:I

    .line 47
    iput p4, p0, LeV;->g:F

    .line 49
    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v0

    .line 51
    if-ge p2, p3, :cond_2

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, LeV;->i:Z

    .line 53
    if-eqz p6, :cond_1

    sub-int v1, p3, p2

    div-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_1

    invoke-virtual {v0}, Lfb;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 57
    iget v0, p0, LeV;->g:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 58
    iput v2, p0, LeV;->g:F

    .line 60
    :cond_0
    neg-float v0, p5

    iput v0, p0, LeV;->f:F

    .line 84
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 86
    iput-wide v0, p0, LeV;->d:J

    .line 87
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, LeV;->e:J

    .line 88
    iget-object v0, p0, LeV;->a:LeW;

    invoke-virtual {v0, v5}, LeW;->removeMessages(I)V

    .line 89
    iget-object v0, p0, LeV;->a:LeW;

    iget-object v1, p0, LeV;->a:LeW;

    iget v2, p0, LeV;->h:F

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2, v4}, LeW;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, LeV;->e:J

    invoke-virtual {v0, v1, v2, v3}, LeW;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 90
    return-void

    .line 63
    :cond_1
    iput p4, p0, LeV;->g:F

    .line 64
    iput p5, p0, LeV;->f:F

    goto :goto_0

    .line 68
    :cond_2
    iput-boolean v4, p0, LeV;->i:Z

    .line 69
    if-eqz p6, :cond_4

    sub-int v1, p2, p3

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_4

    invoke-virtual {v0}, Lfb;->b()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_4

    .line 73
    iget v0, p0, LeV;->g:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 74
    iput v2, p0, LeV;->g:F

    .line 76
    :cond_3
    iput p5, p0, LeV;->f:F

    goto :goto_0

    .line 79
    :cond_4
    iput p4, p0, LeV;->g:F

    .line 80
    neg-float v0, p5

    iput v0, p0, LeV;->f:F

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const/16 v3, 0x65

    const/4 v11, 0x0

    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 94
    iget-wide v7, p0, LeV;->d:J

    sub-long v7, v5, v7

    long-to-float v0, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v0, v7

    .line 95
    iget v7, p0, LeV;->h:F

    iget v8, p0, LeV;->g:F

    iget v9, p0, LeV;->f:F

    mul-float/2addr v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, LeV;->h:F

    .line 96
    iget v7, p0, LeV;->g:F

    iget v8, p0, LeV;->f:F

    mul-float/2addr v0, v8

    add-float/2addr v0, v7

    iput v0, p0, LeV;->g:F

    .line 97
    iput-wide v5, p0, LeV;->d:J

    .line 102
    iget-wide v5, p0, LeV;->e:J

    const-wide/16 v7, 0x10

    add-long/2addr v5, v7

    iput-wide v5, p0, LeV;->e:J

    .line 104
    iget v0, p0, LeV;->h:F

    iget v5, p0, LeV;->b:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    iget v0, p0, LeV;->g:F

    cmpg-float v0, v0, v11

    if-gez v0, :cond_1

    .line 107
    iget v0, p0, LeV;->b:I

    int-to-float v0, v0

    iput v0, p0, LeV;->h:F

    .line 108
    iget-boolean v0, p0, LeV;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 110
    :goto_0
    iget-object v5, p0, LeV;->a:LeW;

    invoke-virtual {v5, v4}, LeW;->removeMessages(I)V

    .line 126
    :goto_1
    iget-object v4, p0, LeV;->a:LeW;

    iget-object v5, p0, LeV;->a:LeW;

    iget v6, p0, LeV;->h:F

    float-to-int v6, v6

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v5, v3, v6, v1}, LeW;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, LeV;->e:J

    invoke-virtual {v4, v0, v1, v2}, LeW;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 108
    goto :goto_0

    .line 113
    :cond_1
    iget v0, p0, LeV;->h:F

    iget v5, p0, LeV;->c:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    iget v0, p0, LeV;->g:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_3

    .line 116
    iget v0, p0, LeV;->c:I

    int-to-float v0, v0

    iput v0, p0, LeV;->h:F

    .line 117
    iget-boolean v0, p0, LeV;->i:Z

    if-eqz v0, :cond_2

    move v0, v2

    .line 119
    :goto_3
    iget-object v5, p0, LeV;->a:LeW;

    invoke-virtual {v5, v4}, LeW;->removeMessages(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 117
    goto :goto_3

    :cond_3
    move v0, v2

    move v3, v4

    .line 123
    goto :goto_1

    :cond_4
    move v1, v2

    .line 126
    goto :goto_2
.end method

.method public final a(IIIFZ)V
    .locals 7

    .prologue
    .line 38
    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lfb;->c()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, LeV;->a(IIIFFZ)V

    .line 40
    return-void
.end method
