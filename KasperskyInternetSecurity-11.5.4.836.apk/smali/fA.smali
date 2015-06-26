.class public LfA;
.super LfI;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, ""

    invoke-direct {p0, v0}, LfA;-><init>(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LfI;-><init>(Z)V

    .line 15
    iput-object p1, p0, LfA;->a:Ljava/lang/CharSequence;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .prologue
    .line 26
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0122

    if-ne v0, v1, :cond_0

    .line 27
    check-cast p2, Landroid/widget/TextView;

    .line 35
    :goto_0
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, LfA;->a:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object p2

    .line 29
    :cond_0
    invoke-static {}, Lqq;->a()Z

    .line 30
    const v0, 0x7f03007d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object p2, v0

    goto :goto_0
.end method
