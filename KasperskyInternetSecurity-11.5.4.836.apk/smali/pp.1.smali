.class public final Lpp;
.super LbK;
.source "SourceFile"

# interfaces
.implements Lpv;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lpr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 24
    const-string v0, "ignored-issue"

    new-instance v1, Lpr;

    invoke-direct {v1}, Lpr;-><init>()V

    const v2, 0x7f030056

    invoke-direct {p0, v0, v1, v2}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lpp;->b:I

    .line 25
    iput p1, p0, Lpp;->b:I

    .line 26
    return-void
.end method

.method private static a(Lps;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-interface {p0}, Lps;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;LbX;)V
    .locals 6

    .prologue
    .line 40
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lpp;->b:I

    const v3, 0x7f070058

    const v4, 0x7f070059

    const v5, 0x7f07005a

    invoke-static {v2, v3, v4, v5}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lpp;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Light"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    invoke-interface {v0}, LpA;->e()I

    move-result v0

    iput v0, p0, Lpp;->b:I

    .line 80
    invoke-virtual {p0}, Lpp;->c()V

    .line 81
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lps;

    invoke-static {p1}, Lpp;->a(Lps;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p2, p3}, Lpp;->a(Landroid/content/Context;LbX;)V

    return-void
.end method

.method public final synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lpp;->j()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lpq;

    invoke-direct {v0, p0}, Lpq;-><init>(Lpp;)V

    return-object v0
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lps;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lpp;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    return-object v0
.end method
