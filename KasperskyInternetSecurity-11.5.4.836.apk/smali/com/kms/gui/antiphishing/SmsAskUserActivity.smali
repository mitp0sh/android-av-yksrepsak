.class public Lcom/kms/gui/antiphishing/SmsAskUserActivity;
.super Lcom/kms/gui/KMSCommonUserActionActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/kms/kmsshared/cellmon/SMSEvent;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6

    .prologue
    .line 62
    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 63
    const v0, 0x7f0b0061

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    iget-boolean v1, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->b:Z

    if-eqz v1, :cond_0

    const v1, 0x7f070441

    :goto_0
    invoke-virtual {p0, v1}, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->a:Lcom/kms/kmsshared/cellmon/SMSEvent;

    iget-object v5, v5, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->a:Lcom/kms/kmsshared/cellmon/SMSEvent;

    iget-object v5, v5, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object v2

    .line 65
    :cond_0
    const v1, 0x7f07043f

    goto :goto_0
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->finish()V

    .line 58
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->a:Lcom/kms/kmsshared/cellmon/SMSEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->block(Z)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty bundle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    const-string v0, "com.kms.useraction.smsevent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    iput-object v0, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->a:Lcom/kms/kmsshared/cellmon/SMSEvent;

    .line 34
    const-string v0, "com.kms.useraction.smsevent.malware_link"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->b:Z

    .line 36
    iget-object v0, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->a:Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty sms info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->b:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070440

    :goto_0
    const v1, 0x7f0a0028

    invoke-virtual {p0, v0, v1, v2}, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->a(IIZ)V

    .line 43
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Error:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    invoke-virtual {p0, v0}, Lcom/kms/gui/antiphishing/SmsAskUserActivity;->a(Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;)V

    .line 45
    return-void

    .line 40
    :cond_2
    const v0, 0x7f07043e

    goto :goto_0
.end method
