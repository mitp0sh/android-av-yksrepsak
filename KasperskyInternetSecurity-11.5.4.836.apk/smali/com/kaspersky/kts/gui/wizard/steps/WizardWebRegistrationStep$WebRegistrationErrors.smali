.class public final enum Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BadCredentialsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum BadEmailError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum CaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum GeneralError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum InvalidRegistrationDataError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum MailAlreadyExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum MailDoNotExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum NeedCaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum NetworkError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum NoError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum OperationCanceledError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum PasswordNotStrong:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field public static final enum WrongPasswordError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

.field private static final synthetic a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "NoError"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NoError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 444
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "GeneralError"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->GeneralError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 445
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "MailAlreadyExistsError"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->MailAlreadyExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 446
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "BadEmailError"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->BadEmailError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 447
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "NeedCaptchaError"

    invoke-direct {v0, v1, v7}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NeedCaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 448
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "MailDoNotExistsError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->MailDoNotExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 449
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "NetworkError"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NetworkError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 450
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "WrongPasswordError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->WrongPasswordError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 451
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "CaptchaError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->CaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 452
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "PasswordNotStrong"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->PasswordNotStrong:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 453
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "InvalidRegistrationDataError"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->InvalidRegistrationDataError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 454
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "BadCredentialsError"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->BadCredentialsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 455
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    const-string v1, "OperationCanceledError"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->OperationCanceledError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    .line 442
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NoError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->GeneralError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->MailAlreadyExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->BadEmailError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NeedCaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->MailDoNotExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NetworkError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->WrongPasswordError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->CaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->PasswordNotStrong:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->InvalidRegistrationDataError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->BadCredentialsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->OperationCanceledError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;
    .locals 1

    .prologue
    .line 442
    const-class v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->a:[Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    return-object v0
.end method
