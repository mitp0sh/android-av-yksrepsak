.class final Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;B)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->a:Z

    .line 350
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 335
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 337
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->a:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)LmM;

    move-result-object v0

    invoke-virtual {v0}, LmM;->c()V

    .line 346
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)LmM;

    move-result-object v1

    iget-object v0, v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, LmM;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
