.class Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$2;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$2;->a:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->b()V

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 149
    return-void
.end method
