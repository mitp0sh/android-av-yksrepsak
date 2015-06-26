.class public Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x2

    .line 125
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 126
    iput v1, p0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->a:I

    .line 127
    iput v1, p0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->b:I

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    sget-object v0, Lng;->KMSAbsoluteLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->a:I

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/kts/gui/KMSAbsoluteLayout$LayoutParams;->b:I

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method
