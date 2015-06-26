.class Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;B)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 225
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;I)I

    .line 227
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)I

    move-result v1

    aget v0, v0, v1

    int-to-long v0, v0

    .line 228
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 229
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v2

    invoke-virtual {v2}, Lsm;->g_()V

    .line 230
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070100

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;ILjava/lang/String;)V

    .line 232
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 233
    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(J)V

    .line 235
    :cond_0
    return-void
.end method
