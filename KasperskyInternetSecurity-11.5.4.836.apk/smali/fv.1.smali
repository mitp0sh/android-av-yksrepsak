.class public final Lfv;
.super LfI;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LfI;-><init>(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lqq;->a()Z

    .line 41
    const v0, 0x7f03007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfv;->a:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lfv;->a:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lfv;->a:Landroid/view/View;

    const v1, 0x7f0b011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lfv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lfv;->a()V

    .line 50
    iget-object v0, p0, Lfv;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    const v1, 0x7f0b011f

    .line 54
    iget-object v0, p0, Lfv;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lfv;->c:Ljava/lang/String;

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lfv;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lfv;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lfv;->a:Landroid/view/View;

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lfv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lfv;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lfv;->c:Ljava/lang/String;

    .line 35
    return-void
.end method
