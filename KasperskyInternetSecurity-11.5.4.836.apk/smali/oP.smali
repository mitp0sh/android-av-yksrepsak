.class public abstract LoP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbQ;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, LoP;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, LoP;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    const v0, 0x7f0b00be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, LoP;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f0b00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, LoP;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, LoP;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :cond_0
    return-object v1
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, LoP;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, LoP;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
