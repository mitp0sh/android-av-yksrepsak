.class public final LfG;
.super LfF;
.source "SourceFile"


# instance fields
.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f020162

    invoke-direct {p0, v0, p2, p3}, LfF;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, LfF;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 29
    iput-object p4, p0, LfG;->f:Ljava/lang/String;

    .line 30
    iput p5, p0, LfG;->k:I

    .line 31
    iput-object p6, p0, LfG;->g:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p7, p0, LfG;->l:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const v1, 0x7f0b011f

    .line 54
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, LfG;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LfG;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private h()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    const v1, 0x7f0b0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    const v2, 0x7f0b0131

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 88
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    const v3, 0x7f0b0163

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    iget-object v3, p0, LfG;->i:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 90
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_0
    iget-object v1, p0, LfG;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v1, p0, LfG;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, LfG;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v1, p0, LfG;->e:Landroid/view/View;

    const v2, 0x7f0b0133

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LfG;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private i()V
    .locals 4

    .prologue
    const v1, 0x7f0b012d

    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, LfG;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, LfG;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 131
    :cond_0
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    iget-object v1, p0, LfG;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, LfG;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget v1, p0, LfG;->k:I

    if-lez v1, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, LfG;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, LfG;->l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 167
    iget-object v1, p0, LfG;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3, p4}, LfF;->a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LfG;->e:Landroid/view/View;

    .line 154
    invoke-direct {p0}, LfG;->i()V

    .line 155
    invoke-direct {p0}, LfG;->g()V

    .line 156
    invoke-direct {p0}, LfG;->h()V

    .line 157
    invoke-direct {p0}, LfG;->j()V

    .line 158
    iget-object v0, p0, LfG;->e:Landroid/view/View;

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, LfG;->h:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, LfG;->g()V

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, LfG;->h:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, LfG;->g()V

    .line 44
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, LfG;->f:Ljava/lang/String;

    .line 114
    iput-object p2, p0, LfG;->g:Landroid/view/View$OnClickListener;

    .line 115
    invoke-direct {p0}, LfG;->i()V

    .line 116
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, LfG;->i:Ljava/lang/String;

    .line 71
    iput-object p2, p0, LfG;->j:Ljava/lang/String;

    .line 72
    iput-object p3, p0, LfG;->m:Landroid/view/View$OnClickListener;

    .line 73
    invoke-direct {p0}, LfG;->h()V

    .line 74
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, LfG;->i:Ljava/lang/String;

    .line 79
    iput-object v0, p0, LfG;->j:Ljava/lang/String;

    .line 80
    iput-object v0, p0, LfG;->m:Landroid/view/View$OnClickListener;

    .line 81
    invoke-direct {p0}, LfG;->h()V

    .line 82
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, LfG;->f:Ljava/lang/String;

    .line 121
    iput-object v0, p0, LfG;->g:Landroid/view/View$OnClickListener;

    .line 122
    invoke-direct {p0}, LfG;->i()V

    .line 123
    return-void
.end method
