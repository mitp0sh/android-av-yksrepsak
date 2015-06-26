.class public abstract Lni;
.super LbK;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f030040

    invoke-direct {p0, p4, v0, v1}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 20
    iput-object p1, p0, Lni;->a:Ljava/lang/CharSequence;

    .line 21
    iput-object p2, p0, Lni;->b:Ljava/lang/CharSequence;

    .line 22
    return-void
.end method

.method private a(Ljava/lang/Integer;LbX;)V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f0b00be

    invoke-virtual {p2, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lni;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v0, 0x7f0b00bf

    invoke-virtual {p2, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    iget-object v1, p0, Lni;->b:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lni;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :cond_0
    const v0, 0x7f0b00bc

    invoke-virtual {p2, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method

.method private static j()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 36
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lni;->j()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lni;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1, p3}, Lni;->a(Ljava/lang/Integer;LbX;)V

    return-void
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
