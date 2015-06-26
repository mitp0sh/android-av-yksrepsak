.class abstract LvQ;
.super LbK;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, LvQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LvQ;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lwc;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 21
    return-void
.end method

.method private static a(Lwc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lwc;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lwc;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lwc;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Lss;
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v1

    invoke-virtual {p0}, LvQ;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc;

    invoke-virtual {v0}, Lwc;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lsr;->a(I)Lss;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lwc;

    invoke-static {p1}, LvQ;->b(Lwc;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lwc;

    invoke-static {p1}, LvQ;->a(Lwc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(LbS;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, LvQ;->j()Lss;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, LvQ;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc;

    invoke-virtual {v0}, Lwc;->b()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Lss;->a(ILjava/lang/Object;)Lss;

    .line 78
    invoke-virtual {v1}, Lss;->g_()V

    .line 79
    invoke-virtual {p0}, LvQ;->c()V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, LbS;->notifyDataSetChanged()V

    .line 83
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lwc;

    invoke-virtual {p0, p1, p2, p3}, LvQ;->a(Lwc;Landroid/content/Context;LbX;)V

    return-void
.end method

.method protected a(Lwc;Landroid/content/Context;LbX;)V
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    invoke-virtual {p1}, Lwc;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lwc;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lss;->f(I)Lsp;

    move-result-object v1

    .line 41
    invoke-static {p1}, Lwh;->a(Lwc;)Lsq;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    const v0, 0x7f0b0101

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v2}, Lsq;->a()I

    move-result v3

    .line 47
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    :cond_0
    :goto_0
    const v0, 0x7f0b0102

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, v1, Lsp;->a:Ljava/lang/Object;

    invoke-virtual {v2, p2, v1}, Lsq;->b(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    return-void

    .line 50
    :cond_2
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    sget-object v0, LvQ;->a:Ljava/lang/String;

    const-string v3, "No name specified for shown setting!"

    invoke-static {v0, v3}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()LbR;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Lsp;
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, LvQ;->j()Lss;

    move-result-object v1

    invoke-virtual {p0}, LvQ;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc;

    invoke-virtual {v0}, Lwc;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lss;->f(I)Lsp;

    move-result-object v0

    return-object v0
.end method
