.class final Low;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController;

.field private synthetic b:Lou;


# direct methods
.method constructor <init>(Lou;Lcom/kms/gui/dialog/AlertController;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Low;->b:Lou;

    iput-object p2, p0, Low;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Low;->b:Lou;

    iget-object v0, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Low;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->h(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 863
    iget-object v0, p0, Low;->b:Lou;

    iget-boolean v0, v0, Lou;->z:Z

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Low;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->h(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 866
    :cond_0
    return-void
.end method
