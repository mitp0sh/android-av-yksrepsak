.class public final LfD;
.super LfC;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0, p3, v0}, LfD;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LfJ;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LfJ;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p4}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    .line 22
    iput-object p3, p0, LfD;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0b0161

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iput-object p2, p0, LfD;->b:Ljava/lang/String;

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-static {p1}, LfD;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .prologue
    .line 52
    const v0, 0x7f030080

    const v1, 0x7f0b0160

    invoke-static {p1, p2, v0, v1}, LfD;->a(Landroid/view/LayoutInflater;Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-static {v0}, LfD;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, LfD;->a(Landroid/content/Context;Landroid/view/View;LfK;)V

    .line 58
    invoke-static {v0}, LfD;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 59
    iget-object v2, p0, LfD;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, LfC;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p3}, LfD;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 44
    return-void
.end method
