.class public Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Loc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(ILsw;)Landroid/view/View;
    .locals 7

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p2}, Lsw;->b()I

    move-result v4

    .line 86
    const v0, 0x7f0b01f7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0b01f8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0b01f9

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    if-nez v4, :cond_1

    .line 91
    invoke-virtual {p2}, Lsw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    return-object v3

    .line 95
    :cond_1
    invoke-virtual {p2}, Lsw;->c()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lob;->a(IJ)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {p2}, Lsw;->c()J

    move-result-wide v4

    .line 98
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lob;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lob;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->a:Landroid/view/LayoutInflater;

    .line 41
    iput-object p1, p0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->b:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->c:Loc;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->c:Loc;

    invoke-interface {v1, v0}, Loc;->l(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public setCodesList(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->setCodesList(Ljava/util/List;Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public setCodesList(Ljava/util/List;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->removeAllViews()V

    .line 55
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v2, v0

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 58
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    .line 60
    invoke-direct {p0, v1, v0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->a(ILsw;)Landroid/view/View;

    move-result-object v0

    .line 61
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    invoke-virtual {p0, v0, v4}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_0

    .line 68
    invoke-direct {p0, v2}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->a(I)V

    .line 58
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    if-eqz p2, :cond_3

    .line 72
    if-lez v3, :cond_2

    .line 73
    invoke-direct {p0, v2}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->a(I)V

    .line 75
    :cond_2
    invoke-virtual {p0, p2}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->addView(Landroid/view/View;)V

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->requestLayout()V

    .line 78
    return-void
.end method

.method public setOnCodeClickListener(Loc;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->c:Loc;

    .line 116
    return-void
.end method
