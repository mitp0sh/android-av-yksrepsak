.class public final LfL;
.super LfI;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LfI;-><init>(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lqq;->a()Z

    .line 54
    const v0, 0x7f03008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LfL;->a:Landroid/view/View;

    .line 57
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, LfL;->a()V

    .line 61
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a()V
    .locals 6

    .prologue
    const v5, 0x7f0b013b

    const v4, 0x7f0b011f

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    const v1, 0x7f0b0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LfL;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    const v1, 0x7f0b013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LfL;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, LfL;->e:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v0, p0, LfL;->f:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LfL;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, LfL;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, LfL;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, LfL;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, LfL;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, LfL;->e:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, LfL;->f:Ljava/lang/String;

    .line 41
    return-void
.end method
