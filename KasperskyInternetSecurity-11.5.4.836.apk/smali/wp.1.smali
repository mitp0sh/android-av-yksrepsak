.class final synthetic Lwp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 326
    invoke-static {}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->values()[Lcom/kms/antiphishing/AntiPhishingBusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lwp;->d:[I

    :try_start_0
    sget-object v0, Lwp;->d:[I

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingBusEventType;->AntiPhishingModeChanged:Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-virtual {v1}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    .line 310
    :goto_0
    invoke-static {}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->values()[Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lwp;->c:[I

    :try_start_1
    sget-object v0, Lwp;->c:[I

    sget-object v1, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Disabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {v1}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lwp;->c:[I

    sget-object v1, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Enabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {v1}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    .line 293
    :goto_2
    invoke-static {}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->values()[Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lwp;->b:[I

    :try_start_3
    sget-object v0, Lwp;->b:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefStatusRefresh:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lwp;->b:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AntiThiefEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lwp;->b:[I

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AtCommandStatusesChanged:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    .line 275
    :goto_5
    invoke-static {}, Lcom/kms/antivirus/AntivirusEventType;->values()[Lcom/kms/antivirus/AntivirusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lwp;->a:[I

    :try_start_6
    sget-object v0, Lwp;->a:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdated:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lwp;->a:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesExpired:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lwp;->a:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->MonitorModeChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto/16 :goto_0
.end method
