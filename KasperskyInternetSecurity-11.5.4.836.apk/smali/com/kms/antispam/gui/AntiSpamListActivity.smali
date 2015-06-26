.class public Lcom/kms/antispam/gui/AntiSpamListActivity;
.super Lcom/kms/gui/KisListFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kms/gui/KisListFragmentActivity;-><init>()V

    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method supports only AntiSpamItem.BLACK_ITEM and AntiSpamItem.WHITE_ITEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "listType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 111
    const-string v1, "-2"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget v3, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    iget v0, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    invoke-static {v2, v3, v0, v1, p2}, Lcom/kms/antispam/gui/AsDialogs;->a(Landroid/support/v4/app/FragmentManager;IIZI)V

    .line 115
    return-void
.end method

.method private a(Lcom/kms/antispam/AntiSpamItem;)V
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-static {p0, p1}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/AntiSpamItem;)V

    .line 229
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/antispam/gui/AntiSpamListActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 221
    :goto_0
    const v2, 0x7f0b0103

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->onContentChanged()V

    .line 223
    return-void

    :cond_0
    move v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-static {v0, v1, p1}, Lcom/kms/antispam/gui/AsDialogs;->a(Landroid/support/v4/app/FragmentManager;II)V

    .line 119
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-static {v0, v1}, Lcom/kms/antispam/gui/AsDialogs;->b(Landroid/support/v4/app/FragmentManager;I)V

    .line 123
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    .line 127
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 128
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/kms/antispam/AntiSpamStorage;->getItem(II)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v1

    .line 129
    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v2, p1}, Lcom/kms/antispam/AntiSpamStorage;->delete(II)I

    .line 130
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->g()V

    .line 131
    invoke-direct {p0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/AntiSpamItem;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected final c()I
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    const v0, 0x7f06006c

    .line 191
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f06006b

    goto :goto_0
.end method

.method public final c(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    const-string v1, "newItem"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v1, "listType"

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void

    .line 200
    :pswitch_0
    const-string v1, "itemType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v1, "itemType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 206
    :pswitch_2
    const-string v1, "itemType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/kms/antispam/AntiSpamStorage;->deleteAll(I)I

    .line 242
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->g()V

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/AntiSpamItem;)V

    .line 244
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "listType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    .line 138
    invoke-super {p0, p1}, Lcom/kms/gui/KisListFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->d(I)V

    .line 141
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->b:Landroid/view/LayoutInflater;

    .line 142
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 144
    new-instance v2, LlC;

    invoke-direct {v2, p0}, LlC;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v2, 0x7f0b0104

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 152
    iget v3, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    packed-switch v3, :pswitch_data_0

    .line 164
    :goto_0
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    new-instance v1, LlD;

    invoke-direct {v1, p0}, LlD;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_0
    new-instance v0, LlE;

    invoke-direct {v0, p0, v4}, LlE;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;B)V

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Landroid/widget/BaseAdapter;)V

    .line 183
    return-void

    .line 154
    :pswitch_0
    const v3, 0x7f0701cc

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 155
    const v0, 0x7f0701ce

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 156
    const v0, 0x7f0701e7

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 159
    :pswitch_1
    const v3, 0x7f0701cb

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 160
    const v0, 0x7f0701cd

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 161
    const v0, 0x7f0701e8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/kms/gui/KisListFragmentActivity;->onResume()V

    .line 215
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->g()V

    .line 216
    return-void
.end method
