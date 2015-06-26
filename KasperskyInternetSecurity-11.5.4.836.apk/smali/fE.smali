.class public final LfE;
.super LfC;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 19
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, LfE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    iput-object p3, p0, LfE;->b:Ljava/lang/String;

    .line 25
    iput-boolean p4, p0, LfE;->c:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lqq;->a()Z

    .line 33
    const v0, 0x7f030082

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v0}, LfE;->c(Landroid/view/View;)Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0, v0}, LfE;->d(Landroid/view/View;)Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    iget-boolean v2, p0, LfE;->c:Z

    if-eqz v2, :cond_0

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    const v2, 0x7f0b0121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    iget-object v2, p0, LfE;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, LfE;->c:Z

    .line 58
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, LfE;->c:Z

    return v0
.end method
