.class Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 235
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 236
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;ILjava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)Lfw;

    move-result-object v0

    invoke-virtual {v0}, Lfw;->b_()V

    .line 240
    :cond_0
    return-void
.end method
