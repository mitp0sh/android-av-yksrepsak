.class public final Lcg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/animation/Animation$AnimationListener;

.field private final b:Landroid/view/animation/Animation$AnimationListener;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/view/View;

.field private final i:LbZ;

.field private final j:LbY;


# direct methods
.method public constructor <init>(Landroid/view/View;LbZ;LbY;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lck;

    invoke-direct {v0, p0, v1}, Lck;-><init>(Lcg;B)V

    iput-object v0, p0, Lcg;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 33
    new-instance v0, Lcj;

    invoke-direct {v0, p0, v1}, Lcj;-><init>(Lcg;B)V

    iput-object v0, p0, Lcg;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 62
    iput-object p1, p0, Lcg;->h:Landroid/view/View;

    .line 63
    invoke-virtual {p2}, LbZ;->a()I

    move-result v0

    iput v0, p0, Lcg;->c:I

    .line 64
    invoke-virtual {p2}, LbZ;->a()I

    move-result v0

    iput v0, p0, Lcg;->d:I

    .line 65
    invoke-virtual {p2}, LbZ;->a()I

    move-result v0

    iput v0, p0, Lcg;->e:I

    .line 66
    iget v0, p0, Lcg;->e:I

    iget v1, p0, Lcg;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcg;->f:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcg;->g:Z

    .line 68
    iput-object p2, p0, Lcg;->i:LbZ;

    .line 69
    iput-object p3, p0, Lcg;->j:LbY;

    .line 70
    return-void
.end method

.method static synthetic a(Lcg;I)I
    .locals 0

    .prologue
    .line 9
    iput p1, p0, Lcg;->c:I

    return p1
.end method

.method static synthetic a(Lcg;)Landroid/view/View;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcg;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcg;)LbY;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcg;->j:LbY;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcg;->i:LbZ;

    invoke-virtual {v0}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v0

    iget-object v1, p0, Lcg;->h:Landroid/view/View;

    iget v2, p0, Lcg;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->toScreenOffset(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    .line 125
    iget v0, p0, Lcg;->c:I

    iget-object v1, p0, Lcg;->i:LbZ;

    invoke-virtual {v1}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->toSliderDelta(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcg;->c:I

    .line 127
    iget v0, p0, Lcg;->c:I

    iget v1, p0, Lcg;->d:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcg;->c:I

    iget v1, p0, Lcg;->e:I

    if-lt v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 129
    :goto_0
    iget v1, p0, Lcg;->c:I

    iget v2, p0, Lcg;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcg;->c:I

    .line 130
    iget v1, p0, Lcg;->c:I

    iget v2, p0, Lcg;->d:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcg;->c:I

    .line 132
    invoke-virtual {p0}, Lcg;->e()Z

    move-result v1

    .line 134
    iget-object v2, p0, Lcg;->j:LbY;

    if-eqz v2, :cond_1

    .line 135
    iget v2, p0, Lcg;->f:I

    if-eqz v2, :cond_5

    .line 136
    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, p0, Lcg;->c:I

    iget v4, p0, Lcg;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcg;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 137
    if-eqz v1, :cond_4

    .line 138
    iget-object v3, p0, Lcg;->j:LbY;

    invoke-interface {v3, v2, v1}, LbY;->a(IZ)V

    .line 148
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcg;->h()V

    .line 151
    :cond_2
    return-void

    .line 127
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_4
    iget-object v3, p0, Lcg;->j:LbY;

    rsub-int/lit8 v2, v2, 0x64

    invoke-interface {v3, v2, v1}, LbY;->a(IZ)V

    goto :goto_1

    .line 143
    :cond_5
    iget-object v2, p0, Lcg;->j:LbY;

    const/16 v3, 0x64

    invoke-interface {v2, v3, v1}, LbY;->a(IZ)V

    goto :goto_1
.end method

.method public final a(IIZ)V
    .locals 2

    .prologue
    .line 73
    if-le p1, p2, :cond_0

    .line 74
    const-string v0, "SideBarSlider"

    const-string v1, "Closed offset should be less than or equal to opened offset!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    if-eqz p3, :cond_1

    .line 78
    iput p1, p0, Lcg;->c:I

    .line 82
    :goto_0
    iput p1, p0, Lcg;->d:I

    .line 83
    iput p2, p0, Lcg;->e:I

    .line 84
    iget v0, p0, Lcg;->e:I

    iget v1, p0, Lcg;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcg;->f:I

    .line 85
    iput-boolean p3, p0, Lcg;->g:Z

    .line 86
    return-void

    .line 80
    :cond_1
    iput p2, p0, Lcg;->c:I

    goto :goto_0
.end method

.method public final a(F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    sget-object v2, Lch;->a:[I

    iget-object v3, p0, Lcg;->i:LbZ;

    invoke-virtual {v3}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 182
    :pswitch_0
    invoke-virtual {p0}, Lcg;->a()I

    move-result v2

    add-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 182
    goto :goto_0

    .line 186
    :pswitch_1
    invoke-virtual {p0}, Lcg;->a()I

    move-result v2

    add-int/lit16 v2, v2, -0x96

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcg;->e:I

    iput v0, p0, Lcg;->c:I

    .line 94
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcg;->d:I

    iput v0, p0, Lcg;->c:I

    .line 98
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcg;->c:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcg;->g:Z

    return v0
.end method

.method public final f()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 110
    iget v0, p0, Lcg;->c:I

    iget v1, p0, Lcg;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcg;->c:I

    .line 111
    new-instance v0, Lci;

    iget v1, p0, Lcg;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcg;->d:I

    int-to-float v2, v2

    invoke-direct {v0, p0, v1, v2}, Lci;-><init>(Lcg;FF)V

    .line 112
    iget-object v1, p0, Lcg;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    return-object v0
.end method

.method public final g()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 118
    iget v0, p0, Lcg;->c:I

    iget v1, p0, Lcg;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcg;->c:I

    .line 119
    new-instance v0, Lci;

    iget v1, p0, Lcg;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcg;->e:I

    int-to-float v2, v2

    invoke-direct {v0, p0, v1, v2}, Lci;-><init>(Lcg;FF)V

    .line 120
    iget-object v1, p0, Lcg;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    return-object v0
.end method

.method public final h()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Lcg;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    iget v2, p0, Lcg;->e:I

    iget v3, p0, Lcg;->d:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 158
    iget v3, p0, Lcg;->c:I

    if-le v3, v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    iget-object v1, p0, Lcg;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcg;->g()Landroid/view/animation/Animation;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    return-void

    :cond_1
    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    iget v2, p0, Lcg;->e:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcg;->d:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 161
    iget v3, p0, Lcg;->c:I

    if-gt v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcg;->f()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SideBarViewOffsets{mOffset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcg;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClosedOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcg;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOpenedOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcg;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOpening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcg;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
