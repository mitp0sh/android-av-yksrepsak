.class public final LoQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/util/SparseArray;

.field private final c:LeL;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;LeL;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LoQ;->b:Landroid/util/SparseArray;

    .line 21
    iput-object p1, p0, LoQ;->a:Landroid/support/v4/app/Fragment;

    .line 22
    iput-object p2, p0, LoQ;->c:LeL;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/DialogFragment;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialog"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    :try_start_0
    iget-object v0, p0, LoQ;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, LoQ;->c:LeL;

    invoke-static {v0, p1}, LeM;->a(LeL;I)LeM;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, LoQ;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, LoQ;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 45
    if-eqz v0, :cond_1

    iget-object v1, p0, LoQ;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, LoQ;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 49
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 51
    :cond_0
    iget-object v0, p0, LoQ;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 53
    :cond_1
    return-void
.end method

.method public final c(I)Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, LoQ;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 57
    if-eqz v0, :cond_0

    iget-object v1, p0, LoQ;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->isAdded()Z

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
