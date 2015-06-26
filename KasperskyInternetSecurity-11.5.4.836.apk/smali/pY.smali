.class public final LpY;
.super LbK;
.source "SourceFile"

# interfaces
.implements Lpv;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, LpZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LpY;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 22
    const-string v0, "title-issue"

    new-instance v1, LpZ;

    invoke-direct {v1}, LpZ;-><init>()V

    const v2, 0x7f030056

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 23
    const v0, 0x7f070057

    iput v0, p0, LpY;->b:I

    .line 24
    return-void
.end method

.method private static a(Lps;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-interface {p0}, Lps;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;LbX;)V
    .locals 3

    .prologue
    .line 38
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget v1, p0, LpY;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Light"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lps;

    invoke-static {p1}, LpY;->a(Lps;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p2, p3}, LpY;->a(Landroid/content/Context;LbX;)V

    return-void
.end method

.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lps;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, LpY;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    return-object v0
.end method
