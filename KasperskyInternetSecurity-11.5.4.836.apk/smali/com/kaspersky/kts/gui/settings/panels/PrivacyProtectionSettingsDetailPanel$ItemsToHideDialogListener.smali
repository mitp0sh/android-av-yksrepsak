.class Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private a:[Z

.field private synthetic b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;[Z)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->a:[Z

    .line 245
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 260
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->a:[Z

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;[Z)[Z

    .line 261
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 262
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 263
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)[Z

    move-result-object v2

    aget-boolean v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 264
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 265
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 266
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;

    move-result-object v0

    invoke-virtual {v0}, Lsm;->g_()V

    .line 267
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->a()V

    .line 251
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;ILjava/lang/String;)V

    .line 252
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 254
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->e(I)V

    .line 257
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method
