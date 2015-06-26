.class public final LlE;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/kms/antispam/gui/AntiSpamListActivity;


# direct methods
.method private constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, LlE;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget-object v1, p0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 54
    iget-object v0, p0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b(Lcom/kms/antispam/gui/AntiSpamListActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget-object v1, p0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/kms/antispam/AntiSpamStorage;->getItem(II)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v3

    .line 61
    const v0, 0x7f0b003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0b0033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0b003c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 64
    iget v4, v3, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    packed-switch v4, :pswitch_data_0

    .line 78
    :goto_0
    iget v2, v3, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_2

    .line 79
    const-string v2, "-2"

    iget-object v4, v3, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const v4, 0x7f0702a6

    invoke-virtual {v2, v4}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    iget v0, v3, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 89
    iget-object v0, p0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const v2, 0x7f0701d7

    invoke-virtual {v0, v2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    new-instance v0, LlF;

    invoke-direct {v0, p0, p1}, LlF;-><init>(LlE;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v0, LlG;

    invoke-direct {v0, p0, p1}, LlG;-><init>(LlE;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    return-object p2

    .line 66
    :pswitch_0
    const v4, 0x7f020116

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :pswitch_1
    const v4, 0x7f020072

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :pswitch_2
    const v4, 0x7f020119

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, v3, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 86
    :cond_2
    const v2, 0x7f0701d5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 91
    :cond_3
    const v0, 0x7f0701d6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
