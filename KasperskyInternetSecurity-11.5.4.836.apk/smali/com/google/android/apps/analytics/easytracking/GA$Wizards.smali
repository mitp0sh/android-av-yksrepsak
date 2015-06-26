.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$Wizards;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AgreementsWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

.field public static final enum DeviceAdminWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

.field public static final enum MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

.field public static final enum PremiumFeatureWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

.field public static final enum PremiumFeaturesWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

.field public static final enum UcpRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

.field public static final enum WebRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$Wizards;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    const-string v1, "MainWizard"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    const-string v1, "AgreementsWizard"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->AgreementsWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    const-string v1, "WebRegistrationWizard"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->WebRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    const-string v1, "UcpRegistrationWizard"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->UcpRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    const-string v1, "PremiumFeatureWizard"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->PremiumFeatureWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    const-string v1, "PremiumFeaturesWizard"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->PremiumFeaturesWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    const-string v1, "DeviceAdminWizard"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->DeviceAdminWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    .line 243
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->AgreementsWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->WebRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->UcpRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->PremiumFeatureWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->PremiumFeaturesWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->DeviceAdminWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->a:[Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getWizard(Lcom/kaspersky/kts/gui/wizard/WizardType;)Lcom/google/android/apps/analytics/easytracking/GA$Wizards;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lb;->a:[I

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/WizardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown wizard type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->AgreementsWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    .line 259
    :goto_0
    return-object v0

    .line 251
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->WebRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    goto :goto_0

    .line 253
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    goto :goto_0

    .line 255
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->UcpRegistrationWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    goto :goto_0

    .line 257
    :pswitch_4
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->PremiumFeaturesWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    goto :goto_0

    .line 259
    :pswitch_5
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->DeviceAdminWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$Wizards;
    .locals 1

    .prologue
    .line 243
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$Wizards;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->a:[Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    return-object v0
.end method
