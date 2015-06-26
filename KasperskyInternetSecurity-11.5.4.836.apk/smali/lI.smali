.class public final LlI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const v6, 0x7f0702a6

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    iget-object v2, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "newItem"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    new-instance v2, Lcom/kms/antispam/AntiSpamItem;

    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "listType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/kms/antispam/AntiSpamItem;-><init>(I)V

    .line 184
    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 185
    iget-object v4, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kms/kmsshared/Utils;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v4, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    const-string v3, "-2"

    iput-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 192
    :goto_0
    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    .line 193
    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemType"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 194
    iget v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    packed-switch v3, :pswitch_data_0

    .line 204
    iget-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 205
    iget v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 209
    :cond_0
    :goto_1
    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_2
    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->getItemType(I)Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(ZLcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;)V

    .line 211
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 269
    :goto_3
    :pswitch_0
    return-void

    .line 190
    :cond_1
    iput-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 197
    iget v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 199
    :cond_2
    iget-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 200
    iget v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 209
    goto :goto_2

    .line 214
    :pswitch_2
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;)V

    goto :goto_3

    .line 217
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    const-class v3, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 219
    const-string v1, "phoneNumber"

    iget-object v3, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v1, v2, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 221
    const-string v1, "text"

    iget-object v2, v2, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_4
    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->finish()V

    goto :goto_3

    .line 228
    :cond_5
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v2, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    iget-object v2, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 230
    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v3, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 232
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    const-string v3, "-2"

    iput-object v3, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 237
    :goto_4
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    .line 238
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iput v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 239
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "itemType"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 249
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 250
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget v3, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 253
    :cond_6
    :goto_5
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v3

    iget v3, v3, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    iget-object v4, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/kms/antispam/AntiSpamStorage;->update(IILcom/kms/antispam/AntiSpamItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :pswitch_4
    goto/16 :goto_3

    .line 255
    :pswitch_5
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 235
    :cond_7
    iget-object v3, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v3

    iput-object v0, v3, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    goto/16 :goto_4

    .line 241
    :pswitch_6
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 242
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget v3, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 244
    :cond_8
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 245
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget v3, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    goto/16 :goto_5

    .line 258
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    const-class v2, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    const-string v1, "phoneNumber"

    iget-object v2, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    iget-object v2, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v1

    iget-object v1, v1, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 262
    const-string v1, "text"

    iget-object v2, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    iget-object v2, v2, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    :cond_9
    iget-object v1, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    iget-object v0, p0, LlI;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->finish()V

    goto/16 :goto_3

    .line 194
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 239
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch

    .line 253
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
