.class public Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a:Landroid/graphics/Paint;

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->b:I

    .line 30
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a:Landroid/graphics/Paint;

    const v1, -0x2d2d2e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    iget v1, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->b:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget v1, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->c:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 39
    :cond_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 44
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->b:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 47
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->c:I

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 56
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 57
    int-to-float v4, v7

    iget-object v5, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    int-to-float v3, v6

    int-to-float v5, v6

    int-to-float v6, v7

    iget-object v7, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
