.class public Lcom/kaspersky/kts/gui/controls/AutoScrollEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaspersky/kts/gui/controls/AutoScrollEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AutoScrollEditText;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoScrollEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoScrollEditText;->getTop()I

    move-result v0

    move v2, v0

    .line 30
    :goto_0
    instance-of v0, v1, Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 31
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 32
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v2, v0

    goto :goto_0

    .line 35
    :cond_0
    if-eqz v1, :cond_1

    .line 36
    check-cast v1, Landroid/widget/ScrollView;

    .line 37
    const/4 v0, 0x0

    iget v3, p0, Lcom/kaspersky/kts/gui/controls/AutoScrollEditText;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 39
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
