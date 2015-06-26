.class final LbV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ListView;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:LbS;


# direct methods
.method constructor <init>(Landroid/widget/ListView;Landroid/content/Context;LbS;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, LbV;->a:Landroid/widget/ListView;

    iput-object p2, p0, LbV;->b:Landroid/content/Context;

    iput-object p3, p0, LbV;->c:LbS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, LbV;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbQ;

    .line 161
    invoke-interface {v0}, LbQ;->h()LbR;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, LbV;->b:Landroid/content/Context;

    iget-object v1, p0, LbV;->c:LbS;

    invoke-interface {v0, v1}, LbR;->a(LbS;)V

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
