.class public final Lcom/kaspersky/components/views/sidebar/SideBarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements LbY;


# static fields
.field private static synthetic k:Z


# instance fields
.field private final a:Lca;

.field private b:I

.field private final c:Landroid/view/GestureDetector;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:LbZ;

.field private g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

.field private h:Lcg;

.field private i:Z

.field private j:LbY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lca;

    invoke-direct {v0}, Lca;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a:Lca;

    .line 46
    iput v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b:I

    .line 61
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 66
    iput-boolean v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcd;

    invoke-direct {v1, p0, v2}, Lcd;-><init>(Lcom/kaspersky/components/views/sidebar/SideBarLayout;B)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c:Landroid/view/GestureDetector;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lca;

    invoke-direct {v0}, Lca;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a:Lca;

    .line 46
    iput v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b:I

    .line 61
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 66
    iput-boolean v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcd;

    invoke-direct {v1, p0, v2}, Lcd;-><init>(Lcom/kaspersky/components/views/sidebar/SideBarLayout;B)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c:Landroid/view/GestureDetector;

    .line 96
    return-void
.end method

.method public static synthetic a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbZ;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    return-object v0
.end method

.method public static synthetic a(Lcom/kaspersky/components/views/sidebar/SideBarLayout;Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;)Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    return-object p1
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v1

    .line 132
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c()I

    move-result v2

    .line 133
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e()Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    invoke-virtual {p0, v1, p1, p2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->measureChild(Landroid/view/View;II)V

    .line 139
    sget-object v1, Lcc;->a:[I

    iget-object v3, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v3}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 144
    :pswitch_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 147
    :pswitch_2
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 150
    :pswitch_3
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 99
    if-eqz p2, :cond_0

    .line 100
    invoke-static {p1, p2}, LbZ;->a(Landroid/content/Context;Landroid/util/AttributeSet;)LbZ;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    .line 103
    :cond_0
    new-instance v0, Lcg;

    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-direct {v0, p0, v1, p0}, Lcg;-><init>(Landroid/view/View;LbZ;LbY;)V

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    .line 104
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c(Landroid/graphics/Canvas;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b(Landroid/graphics/Canvas;)V

    .line 229
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 475
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v0

    goto :goto_0

    .line 469
    :pswitch_0
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v2, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InTransition:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v1, v2, :cond_0

    .line 470
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    invoke-virtual {v1}, Lcg;->h()V

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 234
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    invoke-virtual {v1}, Lcg;->a()I

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v2}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->transformSlidingViewCanvas(Landroid/graphics/Canvas;ILandroid/view/View;)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 242
    return-void
.end method

.method private c()I
    .locals 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v0

    .line 179
    iget-boolean v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v2, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v1, v2, :cond_1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v1}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->getOpenedSlidingViewOffset(Landroid/view/View;)I

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->a()I

    move-result v0

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    invoke-virtual {v0}, Lcg;->d()I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lca;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a:Lca;

    return-object v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 247
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c()I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v1}, LbZ;->f()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v2}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a:Lca;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->transformMainViewCanvas(Landroid/graphics/Canvas;ILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;Lca;)V

    .line 250
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a:Lca;

    invoke-virtual {v0, p1}, Lca;->a(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    return-void
.end method

.method private d()Landroid/view/View;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sliding view should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic d(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)LbY;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    return-object v0
.end method

.method private e()Landroid/view/View;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Main view should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic e(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    return-object v0
.end method

.method public static synthetic f(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)Lcg;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j()V

    .line 356
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    invoke-virtual {v0}, Lcg;->g()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->invalidate()V

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic g(Lcom/kaspersky/components/views/sidebar/SideBarLayout;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j()V

    return-void
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 376
    :cond_1
    :goto_0
    return v0

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    iput-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 370
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->requestLayout()V

    .line 372
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    invoke-interface {v1, v0}, LbY;->a(Z)V

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j()V

    .line 386
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    invoke-virtual {v0}, Lcg;->f()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->invalidate()V

    .line 390
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v1}, LbZ;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 399
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_2
    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    iput-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 403
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->requestLayout()V

    .line 405
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    invoke-interface {v1, v0}, LbY;->a(Z)V

    .line 409
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 494
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e()Landroid/view/View;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->getWidth()I

    move-result v1

    .line 497
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->getHeight()I

    move-result v2

    .line 499
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->k()Z

    move-result v3

    .line 501
    iget-object v4, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a:Lca;

    invoke-virtual {v4, v1, v2}, Lca;->b(II)V

    .line 503
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a:Lca;

    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca;->a(Landroid/view/View;)V

    .line 506
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InTransition:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 507
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 509
    invoke-virtual {p0, v3}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b(Z)V

    .line 510
    return-void
.end method

.method private k()Z
    .locals 4

    .prologue
    .line 516
    sget-object v0, Lcc;->a:[I

    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v1}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 526
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sliding view position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v2}, LbZ;->f()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :pswitch_0
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 529
    :goto_0
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v2, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 530
    :goto_1
    iget-object v2, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    iget-object v3, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v3}, LbZ;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcg;->a(IIZ)V

    .line 531
    return v1

    .line 523
    :pswitch_1
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 529
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    invoke-interface {v0, p1, p2}, LbY;->a(IZ)V

    .line 577
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->requestLayout()V

    .line 538
    new-instance v0, Lcb;

    invoke-direct {v0, p0, p1}, Lcb;-><init>(Lcom/kaspersky/components/views/sidebar/SideBarLayout;Z)V

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->setPressed(Z)V

    .line 563
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h()Z

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f()Z

    .line 337
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->LaunchPanelOpened:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    invoke-interface {v0, p1}, LbY;->b(Z)V

    .line 570
    :cond_0
    return-void
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-boolean v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    .line 213
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-boolean v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v0, v1, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 414
    iget-boolean v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    if-eqz v1, :cond_0

    .line 415
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 455
    :goto_0
    return v0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v2, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v1, v2, :cond_1

    .line 417
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v2, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-eq v1, v2, :cond_3

    .line 421
    invoke-virtual {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 423
    iget-object v1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isEndState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 426
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 427
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 428
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 433
    :cond_3
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v1

    .line 434
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e()Landroid/view/View;

    move-result-object v2

    .line 436
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 437
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 441
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 442
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 446
    invoke-virtual {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 450
    :cond_4
    invoke-virtual {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 452
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 453
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 157
    sub-int v3, p5, p3

    .line 158
    sub-int v2, p4, p2

    .line 160
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->c()I

    move-result v4

    .line 162
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->f()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    move-result-object v0

    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e()Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v5}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->layoutMainView(Landroid/view/View;IIILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;)V

    .line 163
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v0

    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->layoutSlidingView(Landroid/view/View;III)V

    .line 167
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->k()Z

    .line 169
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->invalidate()V

    .line 170
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->f()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Push:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0}, LbZ;->f()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Shrink:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(II)V

    .line 124
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->measureChild(Landroid/view/View;II)V

    .line 127
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 128
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 271
    instance-of v0, p1, Lce;

    if-eqz v0, :cond_1

    .line 272
    check-cast p1, Lce;

    .line 273
    invoke-virtual {p1}, Lce;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 275
    invoke-static {p1}, Lce;->a(Lce;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g()Z

    .line 283
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i()Z

    goto :goto_0

    .line 281
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    if-ne v0, v1, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 266
    :goto_0
    new-instance v1, Lce;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lce;-><init>(Landroid/os/Parcelable;Z)V

    return-object v1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->h:Lcg;

    invoke-virtual {v0}, Lcg;->e()Z

    move-result v0

    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 488
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->invalidate()V

    .line 490
    return v0
.end method

.method public final setAlwaysOpened(Z)V
    .locals 0

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->i:Z

    .line 313
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->requestLayout()V

    .line 314
    return-void
.end method

.method public final setOnSlideListener(LbY;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->j:LbY;

    .line 318
    return-void
.end method

.method public final setSlidingViewLedge(I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->f:LbZ;

    invoke-virtual {v0, p1}, LbZ;->a(I)V

    .line 117
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->requestLayout()V

    .line 118
    return-void
.end method

.method public final startAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InAnimation:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    iput-object v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->g:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 481
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    return-void
.end method
