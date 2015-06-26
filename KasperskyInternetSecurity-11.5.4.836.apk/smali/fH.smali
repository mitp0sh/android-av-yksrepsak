.class public final LfH;
.super LfA;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, LfA;-><init>(Ljava/lang/CharSequence;)V

    .line 28
    invoke-direct {p0}, LfH;->b()V

    .line 29
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v3

    .line 53
    invoke-interface {v3}, LaC;->a()Lay;

    move-result-object v4

    .line 54
    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 55
    invoke-interface {v3}, LaC;->c()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, LfH;->g:Z

    .line 56
    iget-boolean v0, p0, LfH;->g:Z

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, LfH;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 59
    const v0, 0x7f070454

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfH;->a:Ljava/lang/CharSequence;

    .line 86
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 55
    goto :goto_0

    .line 63
    :cond_2
    invoke-interface {v4}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iput-boolean v1, p0, LfH;->f:Z

    .line 66
    invoke-static {v5, v3}, Ltm;->a(Landroid/content/Context;LaC;)Landroid/util/Pair;

    move-result-object v1

    .line 67
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, LfH;->a:Ljava/lang/CharSequence;

    .line 68
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LfH;->h:Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_3
    iput-boolean v2, p0, LfH;->f:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, LfH;->a:Ljava/lang/CharSequence;

    .line 74
    invoke-interface {v3}, LaC;->d()I

    move-result v0

    iput v0, p0, LfH;->c:I

    .line 75
    invoke-interface {v4}, Lay;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-interface {v3}, LaC;->e()J

    move-result-wide v0

    const/16 v2, 0x14

    invoke-static {v5, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfH;->b:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_4
    const v0, 0x7f070388

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfH;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method private d()V
    .locals 7

    .prologue
    const v6, 0x7f0b0166

    const/4 v5, 0x0

    const v4, 0x7f0b016d

    const/16 v3, 0x8

    .line 90
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-boolean v0, p0, LfH;->g:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    const v1, 0x7f0b0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, LfH;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, LfH;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 99
    :cond_1
    iget-boolean v0, p0, LfH;->f:Z

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, LfH;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, LfH;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :goto_2
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 115
    :cond_3
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, LfH;->e:Landroid/view/View;

    const v2, 0x7f0b0169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    iget v2, p0, LfH;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, LfH;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 132
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 34
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0164

    if-ne v0, v1, :cond_0

    .line 36
    iput-object p2, p0, LfH;->e:Landroid/view/View;

    .line 42
    :goto_0
    invoke-virtual {p0}, LfH;->a()V

    .line 43
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 46
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, LfH;->e:Landroid/view/View;

    return-object v0

    .line 40
    :cond_0
    const v0, 0x7f030084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LfH;->e:Landroid/view/View;

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, LfH;->b()V

    .line 140
    invoke-direct {p0}, LfH;->d()V

    .line 141
    return-void
.end method
