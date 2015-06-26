.class public enum Lcom/kms/UiEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BasesUpdateCancelRequested:Lcom/kms/UiEventType;

.field public static final enum BasesUpdateRequested:Lcom/kms/UiEventType;

.field public static final enum ChangePrivacyProtectionMode:Lcom/kms/UiEventType;

.field public static final enum CloseStatuses:Lcom/kms/UiEventType;

.field public static final enum EnableDeviceAdmin:Lcom/kms/UiEventType;

.field public static final enum LicensePurchaseRequested:Lcom/kms/UiEventType;

.field public static final enum NotifyLicenseBlocked:Lcom/kms/UiEventType;

.field public static final enum OpenAntiTheftPortal:Lcom/kms/UiEventType;

.field public static final enum OpenAntiphishingSettings:Lcom/kms/UiEventType;

.field public static final enum OpenAntispamAllowedContacts:Lcom/kms/UiEventType;

.field public static final enum OpenAntispamBlockedContacts:Lcom/kms/UiEventType;

.field public static final enum OpenAntispamSettings:Lcom/kms/UiEventType;

.field public static final enum OpenCallAndTextFilterDialog:Lcom/kms/UiEventType;

.field public static final enum OpenHelp:Lcom/kms/UiEventType;

.field public static final enum OpenPrivacyProtectionDialog:Lcom/kms/UiEventType;

.field public static final enum OpenPrivacyProtectionHiddenContacts:Lcom/kms/UiEventType;

.field public static final enum OpenSafeBrowser:Lcom/kms/UiEventType;

.field public static final enum OpenStatuses:Lcom/kms/UiEventType;

.field public static final enum ScanCancelRequested:Lcom/kms/UiEventType;

.field public static final enum ScanRequested:Lcom/kms/UiEventType;

.field public static final enum SettingChangeRequested:Lcom/kms/UiEventType;

.field public static final enum SettingClicked:Lcom/kms/UiEventType;

.field public static final enum SettingsOpenRequested:Lcom/kms/UiEventType;

.field public static final enum ShareApp:Lcom/kms/UiEventType;

.field public static final enum ShowAccountNotValidatedDialog:Lcom/kms/UiEventType;

.field public static final enum ShowAntivirusMonitorModeDialog:Lcom/kms/UiEventType;

.field public static final enum ShowDeviceAdminDialog:Lcom/kms/UiEventType;

.field public static final enum ShowGpsDisabledDialog:Lcom/kms/UiEventType;

.field public static final enum ShowInternetConnectionRequiredDialog:Lcom/kms/UiEventType;

.field public static final enum ShowPremiumFeatures:Lcom/kms/UiEventType;

.field public static final enum ShowSelectApModeDialog:Lcom/kms/UiEventType;

.field public static final enum TypedScanRequested:Lcom/kms/UiEventType;

.field public static final enum UpdateLicenseInfo:Lcom/kms/UiEventType;

.field private static final synthetic a:[Lcom/kms/UiEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/kms/UiEventType$1;

    const-string v1, "SettingClicked"

    invoke-direct {v0, v1, v3}, Lcom/kms/UiEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->SettingClicked:Lcom/kms/UiEventType;

    .line 25
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "SettingsOpenRequested"

    invoke-direct {v0, v1, v4}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->SettingsOpenRequested:Lcom/kms/UiEventType;

    .line 30
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenStatuses"

    invoke-direct {v0, v1, v5}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenStatuses:Lcom/kms/UiEventType;

    .line 35
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "CloseStatuses"

    invoke-direct {v0, v1, v6}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->CloseStatuses:Lcom/kms/UiEventType;

    .line 40
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ShowPremiumFeatures"

    invoke-direct {v0, v1, v7}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShowPremiumFeatures:Lcom/kms/UiEventType;

    .line 45
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "LicensePurchaseRequested"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->LicensePurchaseRequested:Lcom/kms/UiEventType;

    .line 50
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "NotifyLicenseBlocked"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->NotifyLicenseBlocked:Lcom/kms/UiEventType;

    .line 55
    new-instance v0, Lcom/kms/UiEventType$2;

    const-string v1, "SettingChangeRequested"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->SettingChangeRequested:Lcom/kms/UiEventType;

    .line 67
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ScanRequested"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ScanRequested:Lcom/kms/UiEventType;

    .line 72
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ScanCancelRequested"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ScanCancelRequested:Lcom/kms/UiEventType;

    .line 77
    new-instance v0, Lcom/kms/UiEventType$3;

    const-string v1, "TypedScanRequested"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->TypedScanRequested:Lcom/kms/UiEventType;

    .line 89
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "BasesUpdateRequested"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->BasesUpdateRequested:Lcom/kms/UiEventType;

    .line 94
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "BasesUpdateCancelRequested"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->BasesUpdateCancelRequested:Lcom/kms/UiEventType;

    .line 96
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ShowAntivirusMonitorModeDialog"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShowAntivirusMonitorModeDialog:Lcom/kms/UiEventType;

    .line 101
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenPrivacyProtectionDialog"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenPrivacyProtectionDialog:Lcom/kms/UiEventType;

    .line 106
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenAntiTheftPortal"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenAntiTheftPortal:Lcom/kms/UiEventType;

    .line 112
    new-instance v0, Lcom/kms/UiEventType$4;

    const-string v1, "OpenHelp"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenHelp:Lcom/kms/UiEventType;

    .line 124
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ShareApp"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShareApp:Lcom/kms/UiEventType;

    .line 130
    new-instance v0, Lcom/kms/UiEventType$5;

    const-string v1, "OpenSafeBrowser"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenSafeBrowser:Lcom/kms/UiEventType;

    .line 142
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenCallAndTextFilterDialog"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenCallAndTextFilterDialog:Lcom/kms/UiEventType;

    .line 147
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenAntispamSettings"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenAntispamSettings:Lcom/kms/UiEventType;

    .line 149
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenAntispamBlockedContacts"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenAntispamBlockedContacts:Lcom/kms/UiEventType;

    .line 150
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenAntispamAllowedContacts"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenAntispamAllowedContacts:Lcom/kms/UiEventType;

    .line 152
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenPrivacyProtectionHiddenContacts"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenPrivacyProtectionHiddenContacts:Lcom/kms/UiEventType;

    .line 153
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ChangePrivacyProtectionMode"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ChangePrivacyProtectionMode:Lcom/kms/UiEventType;

    .line 155
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "OpenAntiphishingSettings"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->OpenAntiphishingSettings:Lcom/kms/UiEventType;

    .line 156
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ShowSelectApModeDialog"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShowSelectApModeDialog:Lcom/kms/UiEventType;

    .line 161
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "EnableDeviceAdmin"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->EnableDeviceAdmin:Lcom/kms/UiEventType;

    .line 166
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ShowDeviceAdminDialog"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShowDeviceAdminDialog:Lcom/kms/UiEventType;

    .line 171
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ShowGpsDisabledDialog"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShowGpsDisabledDialog:Lcom/kms/UiEventType;

    .line 176
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "UpdateLicenseInfo"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->UpdateLicenseInfo:Lcom/kms/UiEventType;

    .line 181
    new-instance v0, Lcom/kms/UiEventType;

    const-string v1, "ShowAccountNotValidatedDialog"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShowAccountNotValidatedDialog:Lcom/kms/UiEventType;

    .line 183
    new-instance v0, Lcom/kms/UiEventType$6;

    const-string v1, "ShowInternetConnectionRequiredDialog"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/kms/UiEventType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/UiEventType;->ShowInternetConnectionRequiredDialog:Lcom/kms/UiEventType;

    .line 7
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/kms/UiEventType;

    sget-object v1, Lcom/kms/UiEventType;->SettingClicked:Lcom/kms/UiEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/UiEventType;->SettingsOpenRequested:Lcom/kms/UiEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/UiEventType;->OpenStatuses:Lcom/kms/UiEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/UiEventType;->CloseStatuses:Lcom/kms/UiEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kms/UiEventType;->ShowPremiumFeatures:Lcom/kms/UiEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kms/UiEventType;->LicensePurchaseRequested:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kms/UiEventType;->NotifyLicenseBlocked:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kms/UiEventType;->SettingChangeRequested:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kms/UiEventType;->ScanRequested:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kms/UiEventType;->ScanCancelRequested:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kms/UiEventType;->TypedScanRequested:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kms/UiEventType;->BasesUpdateRequested:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kms/UiEventType;->BasesUpdateCancelRequested:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kms/UiEventType;->ShowAntivirusMonitorModeDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kms/UiEventType;->OpenPrivacyProtectionDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kms/UiEventType;->OpenAntiTheftPortal:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kms/UiEventType;->OpenHelp:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/kms/UiEventType;->ShareApp:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/kms/UiEventType;->OpenSafeBrowser:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/kms/UiEventType;->OpenCallAndTextFilterDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/kms/UiEventType;->OpenAntispamSettings:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/kms/UiEventType;->OpenAntispamBlockedContacts:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/kms/UiEventType;->OpenAntispamAllowedContacts:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/kms/UiEventType;->OpenPrivacyProtectionHiddenContacts:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/kms/UiEventType;->ChangePrivacyProtectionMode:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/kms/UiEventType;->OpenAntiphishingSettings:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/kms/UiEventType;->ShowSelectApModeDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/kms/UiEventType;->EnableDeviceAdmin:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/kms/UiEventType;->ShowDeviceAdminDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/kms/UiEventType;->ShowGpsDisabledDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/kms/UiEventType;->UpdateLicenseInfo:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/kms/UiEventType;->ShowAccountNotValidatedDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/kms/UiEventType;->ShowInternetConnectionRequiredDialog:Lcom/kms/UiEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/UiEventType;->a:[Lcom/kms/UiEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/UiEventType$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/kms/UiEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/UiEventType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kms/UiEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/UiEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/UiEventType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kms/UiEventType;->a:[Lcom/kms/UiEventType;

    invoke-virtual {v0}, [Lcom/kms/UiEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/UiEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UI event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/UiEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    return-void
.end method

.method public newEvent()Lkk;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/UiEventType;->newEvent(Ljava/lang/Object;)Lkk;

    move-result-object v0

    return-object v0
.end method

.method public newEvent(Ljava/lang/Object;)Lkk;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/kms/UiEventType;->checkData(Ljava/lang/Object;)V

    .line 200
    new-instance v0, Lkk;

    invoke-direct {v0, p0, p1}, Lkk;-><init>(Lcom/kms/UiEventType;Ljava/lang/Object;)V

    return-object v0
.end method
