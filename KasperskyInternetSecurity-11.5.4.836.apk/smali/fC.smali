.class public LfC;
.super LfA;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private e:LfJ;

.field private f:Z

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, LfA;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    iput-object p2, p0, LfC;->b:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, LfC;->d:Z

    .line 45
    iput-boolean p3, p0, LfC;->c:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    iput-object p4, p0, LfC;->e:LfJ;

    .line 51
    return-void
.end method

.method private static a()I
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lqq;->a()Z

    .line 111
    const/high16 v0, -0x1000000

    return v0
.end method

.method private static d()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lqq;->a()Z

    .line 123
    const v0, -0x4d4d4e

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .prologue
    .line 219
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b015f

    if-ne v0, v1, :cond_0

    .line 234
    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, LfC;->a(Landroid/content/Context;Landroid/view/View;LfK;)V

    .line 236
    iput-object p2, p0, LfC;->g:Landroid/view/View;

    .line 237
    iget-boolean v0, p0, LfC;->f:Z

    invoke-virtual {p0, v0}, LfC;->b(Z)V

    .line 238
    return-object p2

    .line 225
    :cond_0
    invoke-static {}, Lqq;->a()Z

    .line 227
    const v0, 0x7f03007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;LfK;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    iget-boolean v1, p0, LfC;->d:Z

    .line 157
    invoke-virtual {p0, p2}, LfC;->c(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 158
    invoke-virtual {p0, p2}, LfC;->d(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    .line 160
    const v0, 0x7f0b0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 161
    if-eqz v0, :cond_0

    .line 163
    iget-boolean v4, p0, LfC;->c:Z

    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 173
    if-eqz v1, :cond_3

    .line 175
    invoke-static {}, LfC;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 177
    invoke-static {}, LfC;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    invoke-virtual {p2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 180
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lqq;->a()Z

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_1
    :goto_1
    return-void

    .line 169
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {}, LfC;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    invoke-static {}, LfC;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 199
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 201
    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lqq;->a()Z

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p2, p0, LfC;->b:Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, LfC;->d(Landroid/view/View;)Landroid/widget/TextView;

    .line 105
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 61
    iput-boolean p1, p0, LfC;->f:Z

    .line 62
    iget-object v0, p0, LfC;->g:Landroid/view/View;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    iget-object v1, p0, LfC;->g:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 65
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const v2, 0x7f0b011f

    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, LfC;->g:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, LfC;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, LfC;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final c(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f0b0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    iget-object v1, p0, LfC;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, LfC;->e:LfJ;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, LfC;->e:LfJ;

    invoke-interface {v0}, LfJ;->a()Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, LfA;->c()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f0b0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    iget-object v1, p0, LfC;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, LfC;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v1, p0, LfC;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
