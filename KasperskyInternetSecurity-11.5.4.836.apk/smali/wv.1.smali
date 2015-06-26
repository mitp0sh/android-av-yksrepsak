.class public final Lwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationHelper;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private final a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lwv;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lwv;->b:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method private static a(I)Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;
    .locals 2

    .prologue
    const v1, 0x7f070489

    .line 99
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 100
    sparse-switch p0, :sswitch_data_0

    .line 121
    const v1, 0x7f07048b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwv;->c:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->GeneralError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    :goto_0
    return-object v0

    .line 102
    :sswitch_0
    const v1, 0x7f070486

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwv;->c:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->MailAlreadyExistsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 105
    :sswitch_1
    const v1, 0x7f070487

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwv;->c:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->PasswordNotStrong:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 109
    :sswitch_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwv;->c:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->InvalidRegistrationDataError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 112
    :sswitch_3
    const v1, 0x7f070488

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwv;->c:Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->BadEmailError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 115
    :sswitch_4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwv;->c:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->BadCredentialsError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 118
    :sswitch_5
    const v1, 0x7f07048a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwv;->c:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->OperationCanceledError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        -0x7fffffaf -> :sswitch_5
        -0x5d31fffd -> :sswitch_4
        -0x5d31fff9 -> :sswitch_0
        -0x5d31fff8 -> :sswitch_1
        -0x5d31fff7 -> :sswitch_2
        -0x5d31fff6 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f070483

    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v1, "ucp.restore_password_url"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lwy;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ll;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {p2}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v0

    const-string v2, "ucp.restore_password_url_email_suffix"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-interface {v0, v2, v3}, Ll;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 56
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 36
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->F()LvB;

    move-result-object v1

    .line 37
    if-eqz p1, :cond_0

    new-instance v0, Lcom/kms/runningtask/ConnectToUcpTask;

    invoke-direct {v0, p2, p3, p5}, Lcom/kms/runningtask/ConnectToUcpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, LvB;->a(ILvA;ILjava/util/concurrent/atomic/AtomicBoolean;)LvD;

    .line 42
    iget-object v0, p0, Lwv;->b:Landroid/os/Handler;

    invoke-virtual {v1, v4, v0}, LvB;->a(ILandroid/os/Handler;)Z

    .line 43
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/kms/runningtask/ConnectToUcpTask;

    invoke-direct {v0, p2, p3}, Lcom/kms/runningtask/ConnectToUcpTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f070484

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sput-object v2, Lwv;->c:Ljava/lang/String;

    .line 82
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 84
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lwv;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;->NoError:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lwv;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Lwv;->a(I)Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;

    move-result-object v1

    sget-object v2, Lwv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebRegistrationStep$WebRegistrationErrors;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
