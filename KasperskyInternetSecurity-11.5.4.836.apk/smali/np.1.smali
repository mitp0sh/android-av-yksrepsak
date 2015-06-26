.class public final Lnp;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/kms/gui/KMSCommonContactsActivity;


# direct methods
.method private constructor <init>(Lcom/kms/gui/KMSCommonContactsActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonContactsActivity;B)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lnp;-><init>(Lcom/kms/gui/KMSCommonContactsActivity;)V

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 261
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 283
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 183
    if-nez p2, :cond_0

    .line 185
    iget-object v0, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->a(Lcom/kms/gui/KMSCommonContactsActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v1}, Lcom/kms/gui/KMSCommonContactsActivity;->f()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 192
    :cond_0
    iget-object v0, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->m()Z

    move-result v3

    .line 193
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    const v0, 0x7f0b003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    const v1, 0x7f0b0033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 196
    const v2, 0x7f0b003c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 197
    if-eqz v3, :cond_2

    .line 199
    iget-object v3, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqr;

    iget v3, v3, Lqr;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 206
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    iget-object v3, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqr;

    iget-object v4, v3, Lqr;->f:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqr;

    iget v3, v3, Lqr;->b:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    invoke-static {v4}, LbC;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    :cond_1
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 212
    iget-object v3, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 213
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v0, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 214
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    :goto_1
    iget-object v1, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqr;

    iget-object v1, v1, Lqr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->c(Lcom/kms/gui/KMSCommonContactsActivity;)Lnr;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v0, Lnq;

    invoke-direct {v0, p0}, Lnq;-><init>(Lnp;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    iget-object v0, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v0, p2, p1}, Lcom/kms/gui/KMSCommonContactsActivity;->a(Landroid/view/View;I)V

    .line 254
    return-object p2

    .line 204
    :cond_2
    iget-object v3, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqr;

    iget v3, v3, Lqr;->d:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 218
    :cond_3
    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 219
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 221
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 223
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method
