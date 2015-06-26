.class public final Lfw;
.super LfF;
.source "SourceFile"


# instance fields
.field private e:Landroid/view/View;

.field private f:Landroid/content/Context;

.field private g:Lfz;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lfz;)V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f02016a

    invoke-direct {p0, v0, p3, p4}, LfF;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lfw;->l:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object p1, p0, Lfw;->f:Landroid/content/Context;

    .line 45
    iput-object p5, p0, Lfw;->g:Lfz;

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const-wide v4, 0x3feb333333333333L    # 0.85

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lfw;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lgo;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lgo;

    move-result-object v1

    .line 240
    iget-object v2, v1, Lgo;->d:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    .line 242
    iget-object v1, v1, Lgo;->d:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 243
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-double v1, p2

    mul-double/2addr v1, v4

    double-to-int v1, v1

    int-to-double v2, p2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lfw;->l:Landroid/graphics/drawable/Drawable;

    .line 249
    :cond_0
    iget-object v0, p0, Lfw;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lfw;)Lfz;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lfw;->g:Lfz;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    return-void

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    const v1, 0x7f0b0158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    const v1, 0x7f0b015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    :cond_0
    return-void

    .line 110
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    iget-object v1, p0, Lfw;->e:Landroid/view/View;

    const v2, 0x7f0b011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 156
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    const/16 v0, 0xa

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lfw;->h:I

    return v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .prologue
    .line 51
    const v0, 0x7f03007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    iget v2, p0, Lfw;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lfw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lfw;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iput-object v0, p0, Lfw;->e:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lfw;->e:Landroid/view/View;

    const v2, 0x7f0b015c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    new-instance v2, Lfx;

    invoke-direct {v2, p0}, Lfx;-><init>(Lfw;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lfw;->e:Landroid/view/View;

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 71
    new-instance v2, Lfy;

    invoke-direct {v2, p0}, Lfy;-><init>(Lfw;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lfw;->b_()V

    .line 84
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lfw;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final b_()V
    .locals 9

    .prologue
    const v8, 0x7f07030e

    const/4 v7, -0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 172
    iget-object v2, p0, Lfw;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 173
    iget-object v4, p0, Lfw;->f:Landroid/content/Context;

    invoke-static {v2, v4}, Lgo;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lgo;

    move-result-object v2

    .line 177
    iget-object v4, v2, Lgo;->a:Ljava/lang/String;

    iput-object v4, p0, Lfw;->k:Ljava/lang/String;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lgo;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    iget-object v5, p0, Lfw;->f:Landroid/content/Context;

    const v6, 0x7f07030d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lfw;->j:Ljava/lang/String;

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lgo;->c:Ljava/util/List;

    invoke-static {v5}, LbC;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    iget-object v5, p0, Lfw;->f:Landroid/content/Context;

    const v6, 0x7f07030c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lfw;->i:Ljava/lang/String;

    .line 185
    iget-object v5, p0, Lfw;->i:Ljava/lang/String;

    iget-object v6, p0, Lfw;->j:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget v2, v2, Lgo;->e:I

    iput v2, p0, Lfw;->h:I

    .line 189
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v2

    invoke-interface {v2}, LkM;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget v2, p0, Lfw;->h:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    move-object v1, v3

    .line 217
    :goto_1
    iget-object v2, p0, Lfw;->e:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 219
    invoke-direct {p0, v0}, Lfw;->a(Z)V

    .line 220
    invoke-direct {p0, v1}, Lfw;->a(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lfw;->e:Landroid/view/View;

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 222
    invoke-virtual {v0, v7, v7}, Landroid/widget/Button;->measure(II)V

    .line 223
    iget-object v1, p0, Lfw;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lfw;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lfw;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    return-void

    .line 194
    :pswitch_0
    iget-object v1, p0, Lfw;->f:Landroid/content/Context;

    const v2, 0x7f07030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-direct {p0, v0}, Lfw;->b(Z)V

    goto :goto_1

    .line 198
    :pswitch_1
    iget-object v2, p0, Lfw;->f:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-direct {p0, v0}, Lfw;->b(Z)V

    move v0, v1

    move-object v1, v2

    .line 201
    goto :goto_1

    .line 203
    :pswitch_2
    iget-object v2, p0, Lfw;->f:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-direct {p0, v0}, Lfw;->b(Z)V

    move v0, v1

    move-object v1, v2

    .line 206
    goto :goto_1

    .line 208
    :pswitch_3
    invoke-direct {p0, v1}, Lfw;->b(Z)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0, v0}, Lfw;->b(Z)V

    .line 215
    iget-object v1, p0, Lfw;->f:Landroid/content/Context;

    const v2, 0x7f070310

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
