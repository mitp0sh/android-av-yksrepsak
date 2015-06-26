.class public final Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;
.super Lcom/kaspersky/kts/gui/controls/AbsAnimListView;
.source "SourceFile"


# instance fields
.field private final a:Lgi;

.field private final b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->g:I

    .line 50
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setDividerHeight(I)V

    .line 52
    const v0, 0x7f020188

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setSelector(I)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setItemsCanFocus(Z)V

    .line 54
    new-instance v0, Lgi;

    invoke-direct {v0, p1, p0}, Lgi;-><init>(Landroid/content/Context;Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a:Lgi;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->b:I

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    const v1, 0x7f030071

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Light"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1, v0}, LbG;->a(Landroid/graphics/Typeface;Landroid/view/View;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->addHeaderView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a:Lgi;

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->b:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->f:Z

    if-eqz v0, :cond_1

    .line 129
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->d:I

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    instance-of v1, v0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;

    if-eqz v1, :cond_1

    .line 131
    check-cast v0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iput p1, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->g:I

    .line 133
    iput-boolean p2, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->h:Z

    .line 134
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->invalidate()V

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->g:I

    .line 142
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(IZ)V

    goto :goto_0
.end method

.method protected final a(LeR;)V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->d:I

    iput v0, p1, LeR;->a:I

    .line 149
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->e:I

    iput v0, p1, LeR;->b:I

    .line 150
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->f:Z

    iput-boolean v0, p1, LeR;->c:Z

    .line 151
    return-void
.end method

.method public final a(ZI)V
    .locals 1

    .prologue
    .line 91
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->d:I

    .line 92
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->d:I

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->e:I

    .line 93
    iput-boolean p1, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->f:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->c:Z

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->b()Z

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->c()Z

    goto :goto_0
.end method

.method protected final a(I)Z
    .locals 1

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->c:Z

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(I)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->c:Z

    .line 88
    return-void
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 109
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->b:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->f:Z

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->d:I

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a(Landroid/graphics/Canvas;)V

    .line 120
    :cond_0
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 121
    iget v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->g:I

    iget-boolean v1, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->h:Z

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a(IZ)V

    .line 124
    :cond_1
    return-void
.end method

.method public final setAgreements(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a:Lgi;

    invoke-virtual {v0, p1}, Lgi;->a(Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a:Lgi;

    invoke-virtual {v0, p1}, Lgi;->a(Ljava/lang/String;)V

    .line 65
    return-void
.end method
