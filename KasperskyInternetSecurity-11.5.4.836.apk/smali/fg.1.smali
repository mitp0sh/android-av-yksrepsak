.class public final Lfg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/LayoutInflater;ILandroid/support/v4/app/Fragment;)Lfj;
    .locals 1

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 64
    :pswitch_1
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 66
    :pswitch_2
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 68
    :pswitch_3
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 70
    :pswitch_4
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 72
    :pswitch_5
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 74
    :pswitch_6
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 76
    :pswitch_7
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 78
    :pswitch_8
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 80
    :pswitch_9
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 82
    :pswitch_a
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 84
    :pswitch_b
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 86
    :pswitch_c
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 88
    :pswitch_d
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 90
    :pswitch_e
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 92
    :pswitch_f
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/ActivationCodeEnterPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 94
    :pswitch_10
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 98
    :pswitch_11
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
