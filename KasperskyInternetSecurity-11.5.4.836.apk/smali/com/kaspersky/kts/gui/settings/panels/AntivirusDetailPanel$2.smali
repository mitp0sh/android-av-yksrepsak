.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;I)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    iput p2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 367
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    iget-boolean v0, v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->h:Z

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-virtual {v0, v5, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(IZ)V

    .line 372
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->a:I

    if-eqz v0, :cond_2

    move v0, v1

    .line 373
    :goto_1
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-virtual {v3, v4, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(IZ)V

    .line 374
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c(IZ)V

    .line 375
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;ILjava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(IZ)V

    .line 378
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 372
    goto :goto_1
.end method
