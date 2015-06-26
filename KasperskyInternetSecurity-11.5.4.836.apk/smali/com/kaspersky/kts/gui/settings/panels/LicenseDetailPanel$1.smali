.class Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lfe;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 113
    return-void
.end method
