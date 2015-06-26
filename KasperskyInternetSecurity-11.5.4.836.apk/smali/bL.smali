.class final LbL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbJ;


# instance fields
.field private synthetic a:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, LbL;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, LbL;->a:Landroid/content/res/Resources;

    invoke-static {}, LbK;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, LbL;->a(Landroid/widget/TextView;)V

    return-void
.end method
