.class final Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;B)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0704b2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->showContextMenuForChild(Landroid/view/View;)Z

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;->a(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;->a(Landroid/view/View;)V

    .line 371
    const/4 v0, 0x1

    return v0
.end method
