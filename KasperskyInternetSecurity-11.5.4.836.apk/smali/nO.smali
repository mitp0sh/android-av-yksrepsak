.class public final LnO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/kms/gui/SelectFolderActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/SelectFolderActivity;Z)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, LnO;->b:Lcom/kms/gui/SelectFolderActivity;

    iput-boolean p2, p0, LnO;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 497
    iget-boolean v0, p0, LnO;->a:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, LnO;->b:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->o(Lcom/kms/gui/SelectFolderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, LnO;->b:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 501
    :cond_0
    iget-object v0, p0, LnO;->b:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->p(Lcom/kms/gui/SelectFolderActivity;)LnR;

    move-result-object v0

    invoke-virtual {v0}, LnR;->notifyDataSetChanged()V

    .line 502
    return-void
.end method
