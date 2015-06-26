.class public final Lwf;
.super LbK;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lwd;Z)V
    .locals 2

    .prologue
    .line 21
    const-string v0, "setting_tab"

    const v1, 0x7f03004c

    invoke-direct {p0, v0, p1, v1}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 22
    iput-boolean p2, p0, Lwf;->a:Z

    .line 23
    return-void
.end method

.method private static a(Lwd;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    invoke-interface {p0}, Lwd;->getNameResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lwf;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lwf;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lwd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-interface {p0}, Lwd;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lwd;Landroid/content/Context;LbX;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 52
    const v0, 0x7f0b00e2

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    invoke-virtual {p3}, LbX;->b()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lwd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    iget-boolean v1, p0, Lwf;->a:Z

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lwf;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    invoke-interface {p1}, Lwd;->getIconResId()I

    move-result v1

    .line 66
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    :goto_1
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 69
    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lwd;

    invoke-static {p1, p2}, Lwf;->a(Lwd;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lwd;

    invoke-static {p1}, Lwf;->a(Lwd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lwd;

    invoke-direct {p0, p1, p2, p3}, Lwf;->a(Lwd;Landroid/content/Context;LbX;)V

    return-void
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lwg;

    invoke-direct {v0, p0}, Lwg;-><init>(Lwf;)V

    return-object v0
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
