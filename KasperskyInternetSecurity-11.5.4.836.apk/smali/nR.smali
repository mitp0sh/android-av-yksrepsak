.class public final LnR;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/gui/SelectFolderActivity;


# direct methods
.method private constructor <init>(Lcom/kms/gui/SelectFolderActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/gui/SelectFolderActivity;B)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, LnR;-><init>(Lcom/kms/gui/SelectFolderActivity;)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    const v0, 0x7f0b0093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LnQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f0b0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 144
    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v2}, Lcom/kms/gui/SelectFolderActivity;->b()I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 145
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LnQ;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-boolean v0, v0, Lcom/kms/gui/SelectFolderActivity;->d:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->b(Lcom/kms/gui/SelectFolderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 162
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->c(Lcom/kms/gui/SelectFolderActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->c(Lcom/kms/gui/SelectFolderActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 158
    :goto_1
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v2, v2, Lcom/kms/gui/SelectFolderActivity;->c:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 160
    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v1, v1, Lcom/kms/gui/SelectFolderActivity;->c:[Ljava/lang/String;

    array-length v1, v1

    .line 162
    :cond_1
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 174
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const v4, 0x7f0b0092

    const v2, 0x7f0b003f

    const v3, 0x7f0700d5

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 181
    if-nez p1, :cond_2

    .line 183
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->e(Lcom/kms/gui/SelectFolderActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1}, Lcom/kms/gui/SelectFolderActivity;->d(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 185
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 187
    invoke-direct {p0, p2, p1}, LnR;->a(Landroid/view/View;I)V

    .line 188
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 189
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-boolean v2, v2, Lcom/kms/gui/SelectFolderActivity;->d:Z

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v2}, Lcom/kms/gui/SelectFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v3}, Lcom/kms/gui/SelectFolderActivity;->f(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 195
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const v0, 0x7f0b0093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    :goto_0
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0, p2}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V

    .line 283
    :goto_1
    return-object p2

    .line 203
    :cond_1
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {}, Lcom/kms/gui/SelectFolderActivity;->d()Z

    .line 205
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v2}, Lcom/kms/gui/SelectFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v3}, Lcom/kms/gui/SelectFolderActivity;->g(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v2}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LnQ;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v1, 0x7f0b0091

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 218
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v2}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LnQ;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v1, v1, Lcom/kms/gui/SelectFolderActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 228
    :cond_3
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->e(Lcom/kms/gui/SelectFolderActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1}, Lcom/kms/gui/SelectFolderActivity;->h(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 234
    :cond_4
    invoke-direct {p0, p2, p1}, LnR;->a(Landroid/view/View;I)V

    .line 235
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 236
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LnQ;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 239
    const v1, 0x7f0b003c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 240
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-boolean v2, v2, Lcom/kms/gui/SelectFolderActivity;->d:Z

    if-eqz v2, :cond_7

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 261
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v2}, Lcom/kms/gui/SelectFolderActivity;->j(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 282
    :cond_5
    :goto_2
    iget-object v0, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0, p2}, Lcom/kms/gui/SelectFolderActivity;->b(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V

    goto/16 :goto_1

    .line 245
    :pswitch_0
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v2}, Lcom/kms/gui/SelectFolderActivity;->i(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 249
    :pswitch_1
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v2}, Lcom/kms/gui/SelectFolderActivity;->j(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    invoke-static {}, Lcom/kms/kmsshared/Utils;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 252
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 256
    :cond_6
    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 269
    :cond_7
    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v3, v3, Lcom/kms/gui/SelectFolderActivity;->c:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 271
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v2}, Lcom/kms/gui/SelectFolderActivity;->k(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/kms/gui/SelectFolderActivity;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    :goto_3
    if-eqz v1, :cond_5

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 276
    :cond_8
    iget-object v2, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v2}, Lcom/kms/gui/SelectFolderActivity;->l(Lcom/kms/gui/SelectFolderActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v1, p0, LnR;->a:Lcom/kms/gui/SelectFolderActivity;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/kms/gui/SelectFolderActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
