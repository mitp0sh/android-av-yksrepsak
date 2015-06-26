.class final LbH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbJ;


# instance fields
.field private synthetic a:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LbH;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, LbH;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, LbH;->a(Landroid/view/View;)V

    return-void
.end method
