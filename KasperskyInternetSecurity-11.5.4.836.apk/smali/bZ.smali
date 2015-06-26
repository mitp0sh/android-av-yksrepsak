.class public final LbZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

.field private e:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, LbZ;->a:I

    .line 20
    iput v1, p0, LbZ;->b:I

    .line 25
    iput v1, p0, LbZ;->c:I

    .line 28
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->Left:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    iput-object v0, p0, LbZ;->d:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    .line 31
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Push:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    iput-object v0, p0, LbZ;->e:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)LbZ;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 38
    new-instance v1, LbZ;

    invoke-direct {v1}, LbZ;-><init>()V

    .line 40
    sget-object v2, Lng;->SideBarLayout:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 44
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :pswitch_0
    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, LbZ;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 49
    :pswitch_1
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, LbZ;->c:I

    goto :goto_1

    .line 52
    :pswitch_2
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v1, LbZ;->a:I

    goto :goto_1

    .line 55
    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;->getById(I)Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    move-result-object v3

    iput-object v3, v1, LbZ;->d:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    goto :goto_1

    .line 58
    :pswitch_4
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->getById(I)Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    move-result-object v3

    iput-object v3, v1, LbZ;->e:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-static {v1}, LbZ;->a(LbZ;)V

    .line 68
    return-object v1

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(LbZ;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 72
    iget v0, p0, LbZ;->b:I

    if-ne v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Main view id must be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget v0, p0, LbZ;->c:I

    if-ne v0, v1, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sliding view id must be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, LbZ;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, LbZ;->a:I

    .line 97
    invoke-static {p0}, LbZ;->a(LbZ;)V

    .line 98
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, LbZ;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, LbZ;->c:I

    return v0
.end method

.method public final d()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, LbZ;->d:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, LbZ;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, LbZ;->e:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    return-object v0
.end method
