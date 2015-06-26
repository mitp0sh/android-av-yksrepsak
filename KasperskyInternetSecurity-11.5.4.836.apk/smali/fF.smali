.class public LfF;
.super LfI;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/CharSequence;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 25
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, LfF;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;ZZ)V

    .line 26
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/CharSequence;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LfI;-><init>(Z)V

    .line 32
    iput p1, p0, LfF;->a:I

    .line 33
    iput-object p2, p0, LfF;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, LfF;->c:Ljava/lang/CharSequence;

    .line 35
    iput-boolean v1, p0, LfF;->e:Z

    .line 36
    iput-boolean v1, p0, LfF;->f:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lqq;->a()Z

    .line 44
    const v0, 0x7f030083

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    iget v2, p0, LfF;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    iget-object v2, p0, LfF;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, LfF;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-boolean v1, p0, LfF;->e:Z

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    invoke-interface {v1}, LaC;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 55
    :goto_0
    if-eqz v1, :cond_2

    const v1, 0x7f07047c

    move v2, v1

    .line 56
    :goto_1
    const v1, 0x7f0b012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-boolean v1, p0, LfF;->f:Z

    if-eqz v1, :cond_0

    .line 61
    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_0
    return-object v0

    :cond_1
    move v1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const v1, 0x7f0702f8

    move v2, v1

    goto :goto_1
.end method
