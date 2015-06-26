.class public Lcom/kms/antispam/gui/AntiSpamListItemActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/kms/antispam/AntiSpamItem;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:LlL;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    .line 44
    new-instance v0, LlL;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LlL;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;B)V

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g:LlL;

    .line 50
    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antispam/gui/CallListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    const-string v1, "antispam.gui.calllog.color"

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    return-void
.end method

.method public static synthetic d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    return v0
.end method

.method public static synthetic e(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    return v0
.end method

.method public static synthetic f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v1, "antispam.gui.import_sms.color"

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->showDialog(I)V

    .line 307
    return-void
.end method

.method public static synthetic g(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f()V

    return-void
.end method

.method private h()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c()V

    return-void
.end method

.method private i()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic i(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;Z)Z

    move-result v0

    .line 382
    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->finish()V

    .line 385
    :cond_0
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 366
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 367
    const-string v0, "phoneNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f:Ljava/lang/String;

    .line 370
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    const v1, 0x7f0702a6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0b0066

    const v6, 0x7f0b0005

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f030015

    invoke-virtual {p0, v0, v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(II)V

    .line 87
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    .line 89
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "itemType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    .line 90
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    packed-switch v1, :pswitch_data_0

    .line 125
    const v1, 0x7f0701dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :goto_0
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0, v7}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    packed-switch v2, :pswitch_data_1

    .line 141
    :goto_1
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    .line 142
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g:LlL;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g:LlL;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newItem"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kms/antispam/AntiSpamStorage;->getItem(II)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    .line 148
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    iget v0, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    packed-switch v0, :pswitch_data_2

    .line 154
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_2
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 168
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    const v1, 0x7f0701d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 170
    new-instance v1, LlH;

    invoke-direct {v1, p0}, LlH;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 177
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    const v1, 0x7f0701d9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 179
    new-instance v1, LlI;

    invoke-direct {v1, p0}, LlI;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v0, 0x7f0b01b8

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LlJ;

    invoke-direct {v1, p0}, LlJ;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void

    .line 93
    :pswitch_0
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    if-ne v1, v3, :cond_0

    .line 95
    const v1, 0x7f07022b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    :goto_3
    invoke-virtual {p0, v7}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {p0, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 99
    :cond_0
    const v1, 0x7f07022e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 105
    :pswitch_1
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    if-ne v1, v3, :cond_1

    .line 107
    const v1, 0x7f07022c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 111
    :cond_1
    const v1, 0x7f07022f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 115
    :pswitch_2
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    if-ne v1, v3, :cond_2

    .line 117
    const v1, 0x7f07022d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 121
    :cond_2
    const v1, 0x7f070230

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 132
    :pswitch_3
    const v2, 0x7f0701dd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const v0, 0x7f0701de

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 136
    :pswitch_4
    const v2, 0x7f0701df

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    const v0, 0x7f0701e0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 150
    :pswitch_5
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 163
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 159
    :pswitch_6
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 148
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch

    .line 157
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    packed-switch p1, :pswitch_data_0

    .line 344
    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0018

    new-instance v2, LlK;

    invoke-direct {v2, p0}, LlK;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1, v2}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
