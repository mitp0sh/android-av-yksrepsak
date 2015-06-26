.class final synthetic LuC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I

.field static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 783
    invoke-static {}, Lcom/kms/licensing/LicenseEventType;->values()[Lcom/kms/licensing/LicenseEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LuC;->f:[I

    :try_start_0
    sget-object v0, LuC;->f:[I

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->StateChanged:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v1}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    .line 770
    :goto_0
    invoke-static {}, Lcom/kms/issues/IssueEventType;->values()[Lcom/kms/issues/IssueEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LuC;->e:[I

    :try_start_1
    sget-object v0, LuC;->e:[I

    sget-object v1, Lcom/kms/issues/IssueEventType;->Changed:Lcom/kms/issues/IssueEventType;

    invoke-virtual {v1}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v0, LuC;->e:[I

    sget-object v1, Lcom/kms/issues/IssueEventType;->Removed:Lcom/kms/issues/IssueEventType;

    invoke-virtual {v1}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v0, LuC;->e:[I

    sget-object v1, Lcom/kms/issues/IssueEventType;->Added:Lcom/kms/issues/IssueEventType;

    invoke-virtual {v1}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    .line 756
    :goto_3
    invoke-static {}, Lcom/kms/antivirus/AntivirusEventType;->values()[Lcom/kms/antivirus/AntivirusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LuC;->d:[I

    :try_start_4
    sget-object v0, LuC;->d:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v0, LuC;->d:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ServiceStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    .line 596
    :goto_5
    invoke-static {}, Lcom/kms/antivirus/AntivirusStateType;->values()[Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LuC;->c:[I

    :try_start_6
    sget-object v0, LuC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Running:Lcom/kms/antivirus/AntivirusStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v0, LuC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Paused:Lcom/kms/antivirus/AntivirusStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v0, LuC;->c:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    .line 582
    :goto_8
    invoke-static {}, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->values()[Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LuC;->b:[I

    :try_start_9
    sget-object v0, LuC;->b:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Running:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v0, LuC;->b:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    .line 485
    :goto_a
    invoke-static {}, Lcom/kms/issues/IssueType;->values()[Lcom/kms/issues/IssueType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LuC;->a:[I

    :try_start_b
    sget-object v0, LuC;->a:[I

    sget-object v1, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    invoke-virtual {v1}, Lcom/kms/issues/IssueType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v0, LuC;->a:[I

    sget-object v1, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    invoke-virtual {v1}, Lcom/kms/issues/IssueType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v0, LuC;->a:[I

    sget-object v1, Lcom/kms/issues/IssueType;->Critical:Lcom/kms/issues/IssueType;

    invoke-virtual {v1}, Lcom/kms/issues/IssueType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    return-void

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto/16 :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_1

    :catch_d
    move-exception v0

    goto/16 :goto_0
.end method
