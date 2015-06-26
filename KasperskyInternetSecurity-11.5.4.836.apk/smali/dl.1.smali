.class public final Ldl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

.field private final c:Lcom/kaspersky/kts/antitheft/WebRegistrationThread;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldl;->a:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Ldl;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

    .line 26
    new-instance v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;

    iget-object v1, p0, Ldl;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ldl;->c:Lcom/kaspersky/kts/antitheft/WebRegistrationThread;

    .line 27
    return-void
.end method

.method private static a(I)Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;
    .locals 1

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 108
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->GeneralError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->GeneralError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 92
    :pswitch_1
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->MailAlreadyExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 94
    :pswitch_2
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->BadEmailError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 96
    :pswitch_3
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NeedCaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 98
    :pswitch_4
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->MailDoNotExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 100
    :pswitch_5
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NetworkError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 102
    :pswitch_6
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->WrongPasswordError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 104
    :pswitch_7
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->CaptchaError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 106
    :pswitch_8
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NoError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 44
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0702b9

    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a()Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-static {}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->e()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldl;->c:Lcom/kaspersky/kts/antitheft/WebRegistrationThread;

    invoke-virtual {v0, p1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 32
    new-instance v1, Lds;

    invoke-static {p3}, Ldl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, p2, v0, p4, v2}, Lds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    if-eqz p1, :cond_0

    sget-object v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->REGISTER_NEW:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    .line 37
    :goto_0
    iget-object v2, p0, Ldl;->c:Lcom/kaspersky/kts/antitheft/WebRegistrationThread;

    invoke-virtual {v2, v0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;Lds;)V

    .line 38
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->SIGN_IN:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0702ba

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Ldl;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ldl;->a(I)Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method
