.class public abstract Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;
.super Lfh;
.source "SourceFile"


# instance fields
.field private h:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lfh;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final b()Landroid/view/View;
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->h:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->h:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    .line 29
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->h:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    const v1, 0x7f020198

    const v2, 0x7f070093

    const v3, 0x7f070092

    invoke-virtual {v0, v1, v2, v3}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->a(III)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->h:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    return-object v0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->a()Z

    move-result v0

    return v0
.end method
