.class public final Lmj;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lmn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lmj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmn;)V
    .locals 4

    .prologue
    .line 24
    sget-object v0, Lmj;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    const v2, 0x7f070066

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 25
    iput-object p1, p0, Lmj;->b:Lmn;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f070067

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v0

    const-string v2, "Roboto-Light"

    invoke-virtual {v0, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 47
    const v0, 0x7f0b00f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    iget-object v3, p0, Lmj;->b:Lmn;

    invoke-virtual {v3}, Lmn;->i()J

    move-result-wide v3

    .line 49
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 50
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/kms/kmsshared/Utils;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-virtual {p1, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    const v0, 0x7f0b00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    const v3, 0x7f070068

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lmj;->b:Lmn;

    invoke-virtual {v5}, Lmn;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    const v0, 0x7f0b00f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    const v3, 0x7f070069

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lmj;->b:Lmn;

    invoke-virtual {v5}, Lmn;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    const v0, 0x7f0b00f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    const v3, 0x7f07006a

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lmj;->b:Lmn;

    invoke-virtual {v5}, Lmn;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    return-object v1

    .line 52
    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-virtual {p1, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a()Lmn;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmj;->b:Lmn;

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 35
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lmj;->m()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmj;->b:Lmn;

    invoke-virtual {v4}, Lmn;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
