.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;I)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$1;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    iput p2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$1;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$1;->a:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void
.end method
