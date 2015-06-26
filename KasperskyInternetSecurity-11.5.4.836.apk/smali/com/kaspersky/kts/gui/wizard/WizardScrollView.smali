.class public Lcom/kaspersky/kts/gui/wizard/WizardScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:LfW;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 49
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->a:LfW;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->a:LfW;

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->getScrollX()I

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->getScrollY()I

    move-result v1

    invoke-interface {v0, v1}, LfW;->a(I)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 35
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->a:LfW;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->a:LfW;

    invoke-interface {v0, p2}, LfW;->a(I)V

    .line 39
    :cond_0
    return-void
.end method

.method public setScrollObserver(LfW;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->a:LfW;

    .line 44
    return-void
.end method
