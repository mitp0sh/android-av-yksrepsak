.class public final Lgc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/LayoutInflater;ILandroid/support/v4/app/Fragment;)Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
    .locals 1

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 67
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_1
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 43
    :pswitch_2
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardSecretCodeStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 45
    :pswitch_3
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 47
    :pswitch_4
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardDeviceAdminWorkaroundStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 49
    :pswitch_5
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 51
    :pswitch_6
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 53
    :pswitch_7
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardIncompatibleAppsStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 55
    :pswitch_8
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 57
    :pswitch_9
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardActivateWithCodeStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 59
    :pswitch_a
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardPremiumFeaturesStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 61
    :pswitch_b
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 63
    :pswitch_c
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardNoConnectionStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardNoConnectionStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 65
    :pswitch_d
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;

    invoke-direct {v0, p0, p2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAdditionalAgreementStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
