.class Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$2;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$2;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 75
    return-void
.end method
