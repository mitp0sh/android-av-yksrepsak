.class public Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a:Z

    .line 18
    iput v1, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->c:F

    .line 19
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->d:F

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->e:F

    .line 21
    iput v1, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->f:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->g:Z

    .line 35
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->b:F

    .line 36
    iget v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->b:F

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->c:F

    .line 37
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8

    .prologue
    .line 175
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 176
    invoke-virtual {v2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 177
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->e:F

    iget v6, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->f:F

    const/4 v7, 0x1

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 184
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 113
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 114
    invoke-direct {p0, v1, v0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a(II)V

    .line 115
    return-void
.end method

.method private a(II)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->b:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 125
    iget v2, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->c:F

    .line 126
    invoke-direct {p0, v1, v9, p1, v2}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v0

    move v8, v2

    .line 128
    :goto_1
    if-le v0, p2, :cond_2

    iget v2, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->d:F

    cmpl-float v2, v8, v2

    if-lez v2, :cond_2

    .line 129
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v8, v0

    iget v2, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->d:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 130
    invoke-direct {p0, v1, v9, p1, v2}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v0

    move v8, v2

    goto :goto_1

    .line 134
    :cond_2
    iget-boolean v2, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->g:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->d:F

    cmpl-float v2, v8, v2

    if-nez v2, :cond_3

    if-le v0, p2, :cond_3

    .line 136
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v9}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 137
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->e:F

    iget v6, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->f:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 139
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 142
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 144
    if-gez v3, :cond_4

    .line 145
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    :goto_2
    invoke-virtual {p0, v7, v8}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->setTextSize(IF)V

    .line 166
    iget v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->f:F

    iget v1, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->e:F

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->setLineSpacing(FF)V

    .line 168
    iput-boolean v7, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a:Z

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    .line 150
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    .line 151
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 152
    const-string v3, "\u2026"

    invoke-virtual {v9, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    move v10, v2

    move v2, v0

    move v0, v10

    .line 155
    :goto_3
    int-to-float v5, p1

    add-float/2addr v2, v3

    cmpg-float v2, v5, v2

    if-gez v2, :cond_5

    .line 156
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_3

    .line 158
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 103
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 105
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a(II)V

    .line 108
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 109
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 48
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a:Z

    .line 51
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a:Z

    .line 43
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->a()V

    .line 44
    return-void
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->g:Z

    .line 94
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 88
    iput p2, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->e:F

    .line 89
    iput p1, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->f:F

    .line 90
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->c:F

    .line 67
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->requestLayout()V

    .line 68
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->invalidate()V

    .line 69
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->d:F

    .line 77
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->requestLayout()V

    .line 78
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->invalidate()V

    .line 79
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->b:F

    .line 57
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/controls/AutoResizeTextView;->b:F

    .line 63
    return-void
.end method
