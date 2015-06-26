.class public Lcom/kms/antispam/gui/AntiSpamUserActionActivity;
.super Lcom/kms/gui/KMSCommonUserActionActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b005d

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 69
    const-string v0, "com_kms_as_sms"

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const v0, 0x7f03000e

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0701d1

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f0b005e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    const v2, 0x7f0701d2

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const v0, 0x7f03000f

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    const v2, 0x7f0701d3

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 80
    goto :goto_0
.end method

.method protected final a(I)V
    .locals 9

    .prologue
    const/4 v0, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 88
    :pswitch_0
    new-instance v2, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v2}, Lcom/kms/antispam/AntiSpamItem;-><init>()V

    .line 89
    iput v1, v2, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    .line 90
    const-string v3, "com_kms_as_sms"

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iput v0, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 91
    iput v1, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 92
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    .line 94
    const-string v0, "com_kms_as_sms"

    iget-object v3, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    new-instance v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    iget-wide v3, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->h:J

    invoke-direct {v0, v3, v4}, Lcom/kms/kmsshared/cellmon/SMSEvent;-><init>(J)V

    .line 97
    iput v1, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    .line 98
    iput v8, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mAction:I

    .line 99
    iget-wide v3, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->g:J

    iput-wide v3, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    .line 100
    iget-object v3, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    .line 102
    iget-wide v3, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->e:J

    iput-wide v3, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    .line 103
    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->block(Z)V

    .line 111
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->finish()V

    .line 112
    iget v0, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->getItemType(I)Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(ZLcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 90
    goto :goto_1

    .line 106
    :cond_2
    iget-wide v3, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->f:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id =?"

    new-array v5, v1, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 116
    :pswitch_1
    new-instance v2, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v2}, Lcom/kms/antispam/AntiSpamItem;-><init>()V

    .line 117
    iput v0, v2, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    .line 118
    const-string v3, "com_kms_as_sms"

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    iput v0, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 119
    iput v1, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 120
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    .line 122
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->finish()V

    .line 123
    iget v0, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->getItemType(I)Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(ZLcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 118
    goto :goto_3

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->finish()V

    goto/16 :goto_0

    .line 131
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f060066

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 50
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_eventType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_phoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    .line 52
    const-string v0, "-2"

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const v0, 0x7f0702a6

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_recordId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->e:J

    .line 60
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_calllogid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->f:J

    .line 61
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_date"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->g:J

    .line 62
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_sms_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->h:J

    .line 63
    const-string v0, "com_kms_as_sms"

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0701cf

    :goto_1
    const v1, 0x7f0a0010

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a(IIZ)V

    .line 64
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_1
    const v0, 0x7f0701d0

    goto :goto_1
.end method
