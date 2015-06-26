.class public Lcom/kaspersky/kts/gui/controls/FormEditControl;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:LeT;

.field private b:LeT;

.field private c:LeT;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a(Landroid/content/Context;)V

    .line 66
    sget-object v0, Lng;->FormEditControl:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 68
    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 69
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 70
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 71
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 72
    const/16 v7, 0x9

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 73
    const/16 v8, 0x8

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 74
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->h:I

    .line 75
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->i:I

    .line 76
    const/4 v9, 0x4

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->j:I

    .line 77
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->k:I

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0, v4}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setTitle(Ljava/lang/String;I)V

    .line 87
    if-ne v6, v11, :cond_2

    .line 88
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMinLines(I)V

    .line 89
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    const v2, 0x60001

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 90
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 93
    :cond_2
    if-eqz v3, :cond_6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setEditHint(Ljava/lang/String;)V

    .line 95
    if-eqz v5, :cond_3

    .line 96
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 99
    :cond_3
    if-eqz v7, :cond_4

    .line 100
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v7, v10, v10, v10}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 103
    :cond_4
    if-eqz v8, :cond_0

    .line 104
    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 85
    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 93
    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 109
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 110
    invoke-static {}, Lqq;->a()Z

    .line 111
    const v1, 0x7f03002e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 122
    :cond_0
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->f:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    .line 127
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setFocusable(Z)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->setFocusableInTouchMode(Z)V

    .line 132
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a:LeT;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a:LeT;

    invoke-virtual {v0}, LeT;->b()V

    .line 140
    iput-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a:LeT;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b:LeT;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b:LeT;

    invoke-virtual {v0}, LeT;->b()V

    .line 144
    iput-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b:LeT;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->c:LeT;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->c:LeT;

    invoke-virtual {v0}, LeT;->b()V

    .line 148
    iput-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->c:LeT;

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public final a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V
    .locals 8

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e()V

    .line 155
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    new-instance v0, Lfa;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->f:Landroid/widget/TextView;

    iget v4, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->h:I

    iget v5, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->i:I

    iget v6, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->j:I

    iget v7, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->k:I

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lfa;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;IIII)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->a:LeT;

    .line 165
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e()V

    .line 169
    new-instance v0, LeY;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-direct {v0, v1, p1}, LeY;-><init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->b:LeT;

    .line 173
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method public final c(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e()V

    .line 177
    new-instance v0, LeZ;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-direct {v0, v1, p1}, LeZ;-><init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->c:LeT;

    .line 181
    return-void
.end method

.method public final d()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->isFocused()Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setEditFocusable(Z)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 246
    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public setEditOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/controls/FormEditControl;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 202
    return-void
.end method

.method public setError(Landroid/text/Spanned;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public setTitle(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/controls/FormEditControl;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
