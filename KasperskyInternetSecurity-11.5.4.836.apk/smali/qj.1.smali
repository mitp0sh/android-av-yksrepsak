.class public final Lqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field private a:Landroid/content/Context;

.field private b:LrF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lqj;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    const/high16 v6, 0x8000000

    const/high16 v5, 0x800000

    .line 30
    instance-of v0, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-eqz v0, :cond_2

    .line 31
    check-cast p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    .line 33
    iget v0, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lqj;->b:LrF;

    invoke-virtual {v0}, LrF;->e()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    .line 38
    iget-object v2, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lqj;->a:Landroid/content/Context;

    const-class v3, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v2, "com_kms_as_eventType"

    const-string v3, "com_kms_as_sms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v2, "com_kms_as_phoneNumber"

    iget-object v3, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "com_kms_as_text"

    iget-object v3, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v2, "com_kms_as_recordId"

    iget-wide v3, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    const-string v2, "com_kms_as_date"

    iget-wide v3, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 45
    const-string v2, "com_kms_as_sms_id"

    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 46
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lqj;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    iget-object v1, p0, Lqj;->b:LrF;

    invoke-virtual {v1, v0}, LrF;->a(Lcom/kms/kmsshared/cellmon/SMSEvent;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    instance-of v0, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    .line 57
    iget v0, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 58
    iget v0, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mCallLogType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lqj;->b:LrF;

    invoke-virtual {v0}, LrF;->d()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    .line 63
    iget-object v2, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lqj;->a:Landroid/content/Context;

    const-class v3, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v2, "com_kms_as_eventType"

    const-string v3, "com_kms_as_voice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "com_kms_as_phoneNumber"

    iget-object v3, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "com_kms_as_calllogid"

    iget-wide v3, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lqj;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v1, p0, Lqj;->b:LrF;

    invoke-virtual {v1, v0}, LrF;->a(Lcom/kms/kmsshared/cellmon/VoiceEvent;)V

    goto :goto_0
.end method

.method public final a(LrF;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lqj;->b:LrF;

    .line 26
    return-void
.end method
