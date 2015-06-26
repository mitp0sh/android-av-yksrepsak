.class final Lwb;
.super LbK;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 14
    const-string v0, "setting_group_title"

    const v1, 0x7f030059

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 15
    return-void
.end method

.method private static a(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(LbX;)V
    .locals 2

    .prologue
    .line 29
    const v0, 0x7f0b00ff

    invoke-virtual {p1, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    invoke-virtual {p0}, Lwb;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lwb;->a(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lwb;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p3}, Lwb;->a(LbX;)V

    return-void
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
