.class final Lfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfK;


# instance fields
.field private synthetic a:Lfl;


# direct methods
.method private constructor <init>(Lfl;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lfm;->a:Lfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfl;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lfm;-><init>(Lfl;)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    iget-object v0, p0, Lfm;->a:Lfl;

    invoke-static {v0}, Lfl;->b(Lfl;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfu;

    .line 49
    invoke-virtual {v0}, Lfu;->a()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 51
    iget-object v2, p0, Lfm;->a:Lfl;

    invoke-static {v2}, Lfl;->a(Lfl;)Lfs;

    .line 53
    invoke-virtual {v0, p2}, Lfu;->a(Z)V

    .line 54
    iget-object v0, p0, Lfm;->a:Lfl;

    invoke-static {v0}, Lfl;->a(Lfl;)Lfs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfs;->h(I)V

    .line 55
    iget-object v0, p0, Lfm;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 59
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 31
    iget-object v1, p0, Lfm;->a:Lfl;

    invoke-static {v1}, Lfl;->a(Lfl;)Lfs;

    .line 33
    iget-object v1, p0, Lfm;->a:Lfl;

    invoke-static {v1}, Lfl;->b(Lfl;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    .line 34
    instance-of v1, v0, Lfu;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Lfu;

    .line 37
    invoke-virtual {v0, p1}, Lfu;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lfu;->a(Landroid/view/View;Z)V

    .line 39
    :cond_0
    iget-object v0, p0, Lfm;->a:Lfl;

    invoke-static {v0}, Lfl;->a(Lfl;)Lfs;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lfs;->h(I)V

    .line 41
    return-void

    .line 37
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
