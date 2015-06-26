.class final Lox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

.field private synthetic b:Lcom/kms/gui/dialog/AlertController;

.field private synthetic c:Lou;


# direct methods
.method constructor <init>(Lou;Lcom/kms/gui/dialog/AlertController$RecycleListView;Lcom/kms/gui/dialog/AlertController;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lox;->c:Lou;

    iput-object p2, p0, Lox;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    iput-object p3, p0, Lox;->b:Lcom/kms/gui/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 872
    iget-object v0, p0, Lox;->c:Lou;

    iget-object v0, v0, Lou;->x:[Z

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lox;->c:Lou;

    iget-object v0, v0, Lou;->x:[Z

    iget-object v1, p0, Lox;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 875
    :cond_0
    iget-object v0, p0, Lox;->c:Lou;

    iget-object v0, v0, Lou;->C:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lox;->b:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->h(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lox;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 877
    return-void
.end method
