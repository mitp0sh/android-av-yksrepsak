.class final LbM;
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
    .line 255
    iput-object p1, p0, LbM;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, LbM;->a:Landroid/content/res/Resources;

    invoke-static {}, LbK;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 255
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, LbM;->a(Landroid/widget/TextView;)V

    return-void
.end method
