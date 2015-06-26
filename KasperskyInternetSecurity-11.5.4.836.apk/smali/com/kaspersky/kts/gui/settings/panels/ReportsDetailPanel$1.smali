.class Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LoO;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;I)I

    .line 129
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;I)I

    move-result v1

    invoke-static {v1}, Lcom/kms/kmsshared/reports/Reports;->getFilteredEventsInVector(I)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;Ljava/util/Vector;)Ljava/util/Vector;

    .line 132
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->c()V

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
