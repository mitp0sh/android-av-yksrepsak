.class public final LnN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/gui/SelectFolderActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/SelectFolderActivity;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, LnN;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 486
    iget-object v0, p0, LnN;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->n(Lcom/kms/gui/SelectFolderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LnN;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1}, Lcom/kms/gui/SelectFolderActivity;->m(Lcom/kms/gui/SelectFolderActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, LnN;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v3, v3, Lcom/kms/gui/SelectFolderActivity;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, LnN;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->o(Lcom/kms/gui/SelectFolderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    iget-object v0, p0, LnN;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 489
    return-void
.end method
