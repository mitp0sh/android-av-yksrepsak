.class public final Lcom/kms/issues/KisIssuesFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# instance fields
.field private a:Lpw;

.field private final b:Lkp;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 54
    new-instance v0, Lkp;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, Lkp;-><init>(Lrx;)V

    iput-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->b:Lkp;

    .line 265
    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 5

    .prologue
    .line 138
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    .line 139
    invoke-interface {v0}, LsW;->a()Z

    move-result v0

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v1

    invoke-interface {v1}, LpA;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    .line 143
    invoke-interface {v0}, Lps;->j()Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    invoke-interface {v0}, Lps;->n()Lpv;

    move-result-object v4

    .line 145
    invoke-interface {v0}, Lps;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v4, v1}, Lpv;->a(Z)V

    .line 148
    const/4 v1, 0x0

    .line 150
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    move v1, v0

    .line 151
    goto :goto_0

    .line 154
    :cond_2
    return-object v2
.end method

.method public static synthetic a(Lcom/kms/issues/KisIssuesFragment;)Lpw;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    invoke-virtual {v0, p1}, Lpw;->b(Landroid/os/Bundle;)V

    .line 218
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/kms/issues/KisIssuesFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/kms/issues/KisIssuesFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    .line 159
    invoke-interface {v0}, LsW;->a()Z

    move-result v0

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv;

    .line 161
    invoke-interface {v0}, Lpv;->i()Lps;

    invoke-static {v0, v1}, Lcom/kms/issues/KisIssuesFragment;->a(Lpv;Z)Z

    move-result v0

    .line 163
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    and-int/2addr v0, v1

    move v1, v0

    .line 164
    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 165
    :cond_1
    return-void
.end method

.method private static a(Lpv;Z)Z
    .locals 1

    .prologue
    .line 168
    invoke-interface {p0}, Lpv;->i()Lps;

    move-result-object v0

    invoke-interface {v0}, Lps;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {p0, p1}, Lpv;->a(Z)V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/kms/issues/KisIssuesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 178
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v1

    invoke-interface {v1}, Ltg;->a()LsW;

    move-result-object v1

    invoke-interface {v1}, LsW;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kms/issues/KisIssuesFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/issues/KisIssuesFragment;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 196
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    invoke-interface {v0}, LpA;->b()I

    move-result v0

    .line 197
    if-lez v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/kms/issues/KisIssuesFragment;->c:Landroid/widget/TextView;

    const v2, 0x7f07005b

    const v3, 0x7f07005c

    const v4, 0x7f07005d

    invoke-static {v0, v2, v3, v4}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/kms/issues/KisIssuesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/kms/issues/KisIssuesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/kms/issues/KisIssuesFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/issues/KisIssuesFragment;->b()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->b:Lkp;

    const-class v1, Lpu;

    new-instance v2, LpN;

    invoke-direct {v2, p0, v3}, LpN;-><init>(Lcom/kms/issues/KisIssuesFragment;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 73
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->b:Lkp;

    const-class v1, LsZ;

    new-instance v2, LpO;

    invoke-direct {v2, p0, v3}, LpO;-><init>(Lcom/kms/issues/KisIssuesFragment;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 75
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 83
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    const v0, 0x7f0b00d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/issues/KisIssuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x3da3d70a    # 0.08f

    invoke-static {v2, v3}, LbI;->b(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    const v0, 0x7f0b00d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->c:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->c:Landroid/widget/TextView;

    invoke-static {}, LjJ;->m()LbG;

    move-result-object v2

    const-string v3, "Roboto-Light"

    invoke-virtual {v2, v3}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    const v0, 0x7f0b00d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->e:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->e:Landroid/view/View;

    new-instance v2, LpK;

    invoke-direct {v2, p0}, LpK;-><init>(Lcom/kms/issues/KisIssuesFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    const v2, 0x7f07008f

    invoke-virtual {p0, v2}, Lcom/kms/issues/KisIssuesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    invoke-static {}, LjJ;->m()LbG;

    move-result-object v2

    const-string v3, "Roboto-Light"

    invoke-virtual {v2, v3}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    new-instance v2, LpL;

    invoke-direct {v2, p0}, LpL;-><init>(Lcom/kms/issues/KisIssuesFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->b:Lkp;

    invoke-virtual {v0}, Lkp;->a()V

    .line 223
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 224
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 192
    invoke-direct {p0}, Lcom/kms/issues/KisIssuesFragment;->c()V

    .line 193
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    invoke-virtual {v0, p1}, Lpw;->a(Landroid/os/Bundle;)V

    .line 212
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    invoke-static {}, Lcom/kms/issues/KisIssuesFragment;->a()Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v1

    invoke-interface {v1}, LpA;->e()I

    move-result v1

    .line 120
    if-lez v1, :cond_0

    .line 121
    new-instance v2, Lpp;

    invoke-direct {v2, v1}, Lpp;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    new-instance v1, LpY;

    const v2, 0x7f070057

    invoke-direct {v1, v2}, LpY;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lpw;

    invoke-virtual {p0}, Lcom/kms/issues/KisIssuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lpw;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    .line 126
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    invoke-virtual {v0}, Lpw;->b()V

    .line 128
    invoke-virtual {p0}, Lcom/kms/issues/KisIssuesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/issues/KisIssuesFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/kms/issues/KisIssuesFragment;->a:Lpw;

    invoke-static {p0, v0}, LbS;->a(Landroid/support/v4/app/ListFragment;LbS;)V

    .line 132
    invoke-direct {p0}, Lcom/kms/issues/KisIssuesFragment;->b()V

    .line 134
    invoke-direct {p0, p2}, Lcom/kms/issues/KisIssuesFragment;->a(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method
