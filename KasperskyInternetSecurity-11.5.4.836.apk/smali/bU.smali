.class final LbU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ListView;

.field private synthetic b:LbS;

.field private synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/ListView;LbS;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, LbU;->a:Landroid/widget/ListView;

    iput-object p2, p0, LbU;->b:LbS;

    iput-object p3, p0, LbU;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, LbU;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbQ;

    .line 153
    iget-object v1, p0, LbU;->b:LbS;

    iget-object v2, p0, LbU;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, LbS;->a(LbQ;LbS;Landroid/content/Context;)V

    .line 154
    return-void
.end method
