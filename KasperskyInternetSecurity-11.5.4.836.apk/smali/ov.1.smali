.class final Lov;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

.field private synthetic b:Lou;


# direct methods
.method constructor <init>(Lou;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/kms/gui/dialog/AlertController$RecycleListView;)V
    .locals 2

    .prologue
    .line 781
    iput-object p1, p0, Lov;->b:Lou;

    iput-object p6, p0, Lov;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    const v0, 0x7f030009

    const v1, 0x7f0b0055

    invoke-direct {p0, p2, v0, v1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 784
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lov;->b:Lou;

    iget-object v1, v1, Lou;->x:[Z

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lov;->b:Lou;

    iget-object v1, v1, Lou;->x:[Z

    aget-boolean v1, v1, p1

    .line 787
    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Lov;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 791
    :cond_0
    return-object v0
.end method
