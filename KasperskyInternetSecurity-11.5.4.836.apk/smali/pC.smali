.class final synthetic LpC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I

.field static final synthetic f:[I

.field static final synthetic g:[I

.field static final synthetic h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lcom/kms/ucp/UcpEventType;->values()[Lcom/kms/ucp/UcpEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->h:[I

    :try_start_0
    sget-object v0, LpC;->h:[I

    sget-object v1, Lcom/kms/ucp/UcpEventType;->Disconnected:Lcom/kms/ucp/UcpEventType;

    invoke-virtual {v1}, Lcom/kms/ucp/UcpEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_20

    :goto_0
    :try_start_1
    sget-object v0, LpC;->h:[I

    sget-object v1, Lcom/kms/ucp/UcpEventType;->Connected:Lcom/kms/ucp/UcpEventType;

    invoke-virtual {v1}, Lcom/kms/ucp/UcpEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1f

    .line 377
    :goto_1
    invoke-static {}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->values()[Lcom/kms/antiphishing/AntiPhishingBusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->g:[I

    :try_start_2
    sget-object v0, LpC;->g:[I

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingBusEventType;->AntiPhishingModeChanged:Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-virtual {v1}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1e

    .line 345
    :goto_2
    invoke-static {}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->values()[Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->f:[I

    :try_start_3
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefStatusRefresh:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1d

    :goto_3
    :try_start_4
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1c

    :goto_4
    :try_start_5
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1b

    :goto_5
    :try_start_6
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountExpired:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1a

    :goto_6
    :try_start_7
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->InvalidRegistrationData:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_19

    :goto_7
    :try_start_8
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountNotValidated:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_18

    :goto_8
    :try_start_9
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandDisabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_17

    :goto_9
    :try_start_a
    sget-object v0, LpC;->f:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_16

    .line 326
    :goto_a
    invoke-static {}, Lcom/kms/AndroidEventType;->values()[Lcom/kms/AndroidEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->e:[I

    :try_start_b
    sget-object v0, LpC;->e:[I

    sget-object v1, Lcom/kms/AndroidEventType;->DeviceAdminEnabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_15

    :goto_b
    :try_start_c
    sget-object v0, LpC;->e:[I

    sget-object v1, Lcom/kms/AndroidEventType;->DeviceAdminDisabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_14

    :goto_c
    :try_start_d
    sget-object v0, LpC;->e:[I

    sget-object v1, Lcom/kms/AndroidEventType;->GpsDisabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_13

    :goto_d
    :try_start_e
    sget-object v0, LpC;->e:[I

    sget-object v1, Lcom/kms/AndroidEventType;->GpsEnabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_12

    .line 289
    :goto_e
    invoke-static {}, Lcom/kms/antivirus/AntivirusStateType;->values()[Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->d:[I

    :try_start_f
    sget-object v0, LpC;->d:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Running:Lcom/kms/antivirus/AntivirusStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_11

    :goto_f
    :try_start_10
    sget-object v0, LpC;->d:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Paused:Lcom/kms/antivirus/AntivirusStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :goto_10
    :try_start_11
    sget-object v0, LpC;->d:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_f

    .line 254
    :goto_11
    invoke-static {}, Lcom/kms/antivirus/AntivirusEventType;->values()[Lcom/kms/antivirus/AntivirusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->c:[I

    :try_start_12
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStarted:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_e

    :goto_12
    :try_start_13
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFailed:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_d

    :goto_13
    :try_start_14
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFinished:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_c

    :goto_14
    :try_start_15
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdated:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_b

    :goto_15
    :try_start_16
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesAlreadyLatest:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_a

    :goto_16
    :try_start_17
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesExpired:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_9

    :goto_17
    :try_start_18
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->Initialized:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_8

    :goto_18
    :try_start_19
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ServiceStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_7

    :goto_19
    :try_start_1a
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->MonitorModeChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_6

    :goto_1a
    :try_start_1b
    sget-object v0, LpC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanExpired:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_5

    .line 206
    :goto_1b
    invoke-static {}, Lcom/kms/licensing/LicenseEventType;->values()[Lcom/kms/licensing/LicenseEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->b:[I

    :try_start_1c
    sget-object v0, LpC;->b:[I

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->StateChanged:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v1}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_4

    :goto_1c
    :try_start_1d
    sget-object v0, LpC;->b:[I

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->InformationExpired:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v1}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_3

    :goto_1d
    :try_start_1e
    sget-object v0, LpC;->b:[I

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->InformationValid:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v1}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_2

    :goto_1e
    :try_start_1f
    sget-object v0, LpC;->b:[I

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->LicenseExpiring:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v1}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1

    .line 195
    :goto_1f
    invoke-static {}, Lcom/kms/updater/gui/AppUpdaterEventType;->values()[Lcom/kms/updater/gui/AppUpdaterEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LpC;->a:[I

    :try_start_20
    sget-object v0, LpC;->a:[I

    sget-object v1, Lcom/kms/updater/gui/AppUpdaterEventType;->UpdateRequired:Lcom/kms/updater/gui/AppUpdaterEventType;

    invoke-virtual {v1}, Lcom/kms/updater/gui/AppUpdaterEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_0

    :goto_20
    return-void

    :catch_0
    move-exception v0

    goto :goto_20

    :catch_1
    move-exception v0

    goto :goto_1f

    :catch_2
    move-exception v0

    goto :goto_1e

    :catch_3
    move-exception v0

    goto :goto_1d

    :catch_4
    move-exception v0

    goto :goto_1c

    :catch_5
    move-exception v0

    goto :goto_1b

    :catch_6
    move-exception v0

    goto :goto_1a

    :catch_7
    move-exception v0

    goto :goto_19

    :catch_8
    move-exception v0

    goto :goto_18

    :catch_9
    move-exception v0

    goto/16 :goto_17

    :catch_a
    move-exception v0

    goto/16 :goto_16

    :catch_b
    move-exception v0

    goto/16 :goto_15

    :catch_c
    move-exception v0

    goto/16 :goto_14

    :catch_d
    move-exception v0

    goto/16 :goto_13

    :catch_e
    move-exception v0

    goto/16 :goto_12

    :catch_f
    move-exception v0

    goto/16 :goto_11

    :catch_10
    move-exception v0

    goto/16 :goto_10

    :catch_11
    move-exception v0

    goto/16 :goto_f

    :catch_12
    move-exception v0

    goto/16 :goto_e

    :catch_13
    move-exception v0

    goto/16 :goto_d

    :catch_14
    move-exception v0

    goto/16 :goto_c

    :catch_15
    move-exception v0

    goto/16 :goto_b

    :catch_16
    move-exception v0

    goto/16 :goto_a

    :catch_17
    move-exception v0

    goto/16 :goto_9

    :catch_18
    move-exception v0

    goto/16 :goto_8

    :catch_19
    move-exception v0

    goto/16 :goto_7

    :catch_1a
    move-exception v0

    goto/16 :goto_6

    :catch_1b
    move-exception v0

    goto/16 :goto_5

    :catch_1c
    move-exception v0

    goto/16 :goto_4

    :catch_1d
    move-exception v0

    goto/16 :goto_3

    :catch_1e
    move-exception v0

    goto/16 :goto_2

    :catch_1f
    move-exception v0

    goto/16 :goto_1

    :catch_20
    move-exception v0

    goto/16 :goto_0
.end method
