.class public final Lcom/kms/antispam/gui/AsDialogs;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 118
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;I)V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lcom/kms/antispam/gui/AsDialogs;

    invoke-direct {v0}, Lcom/kms/antispam/gui/AsDialogs;-><init>()V

    .line 172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v2, "dialog_type"

    sget-object v3, Lcom/kms/antispam/gui/AsDialogs$DialogType;->SelectItem:Lcom/kms/antispam/gui/AsDialogs$DialogType;

    invoke-virtual {v3}, Lcom/kms/antispam/gui/AsDialogs$DialogType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "black_item"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AsDialogs;->setArguments(Landroid/os/Bundle;)V

    .line 177
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Lcom/kms/antispam/gui/AsDialogs;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;II)V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/kms/antispam/gui/AsDialogs;

    invoke-direct {v0}, Lcom/kms/antispam/gui/AsDialogs;-><init>()V

    .line 183
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v2, "dialog_type"

    sget-object v3, Lcom/kms/antispam/gui/AsDialogs$DialogType;->DeleteItem:Lcom/kms/antispam/gui/AsDialogs$DialogType;

    invoke-virtual {v3}, Lcom/kms/antispam/gui/AsDialogs$DialogType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "black_item"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v2, "position"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AsDialogs;->setArguments(Landroid/os/Bundle;)V

    .line 189
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Lcom/kms/antispam/gui/AsDialogs;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;IIZI)V
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/kms/antispam/gui/AsDialogs;

    invoke-direct {v0}, Lcom/kms/antispam/gui/AsDialogs;-><init>()V

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v2, "dialog_type"

    sget-object v3, Lcom/kms/antispam/gui/AsDialogs$DialogType;->ShowConfirm:Lcom/kms/antispam/gui/AsDialogs$DialogType;

    invoke-virtual {v3}, Lcom/kms/antispam/gui/AsDialogs$DialogType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "black_item"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v2, "event_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v2, "is_hidden_number"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string v2, "position"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AsDialogs;->setArguments(Landroid/os/Bundle;)V

    .line 166
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Lcom/kms/antispam/gui/AsDialogs;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static b(Landroid/support/v4/app/FragmentManager;I)V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lcom/kms/antispam/gui/AsDialogs;

    invoke-direct {v0}, Lcom/kms/antispam/gui/AsDialogs;-><init>()V

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v2, "dialog_type"

    sget-object v3, Lcom/kms/antispam/gui/AsDialogs$DialogType;->DeleteAll:Lcom/kms/antispam/gui/AsDialogs$DialogType;

    invoke-virtual {v3}, Lcom/kms/antispam/gui/AsDialogs$DialogType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "black_item"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AsDialogs;->setArguments(Landroid/os/Bundle;)V

    .line 200
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Lcom/kms/antispam/gui/AsDialogs;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .prologue
    const v11, 0x7f0701d8

    const/4 v0, 0x1

    const v2, 0x7f0701cc

    const v3, 0x7f0701cb

    const/4 v4, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AsDialogs;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 30
    const-string v1, "black_item"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 31
    if-ne v6, v0, :cond_0

    move v1, v0

    .line 32
    :goto_0
    const-string v0, "position"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 33
    const-string v0, "dialog_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/antispam/gui/AsDialogs$DialogType;->valueOf(Ljava/lang/String;)Lcom/kms/antispam/gui/AsDialogs$DialogType;

    move-result-object v8

    .line 35
    new-instance v9, LoN;

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AsDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v9, v0}, LoN;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AsDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/gui/AntiSpamListActivity;

    .line 38
    sget-object v10, LlP;->a:[I

    invoke-virtual {v8}, Lcom/kms/antispam/gui/AsDialogs$DialogType;->ordinal()I

    move-result v8

    aget v8, v10, v8

    packed-switch v8, :pswitch_data_0

    move-object v0, v4

    .line 92
    :goto_1
    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 41
    :pswitch_0
    if-eqz v1, :cond_1

    const v1, 0x7f0701da

    :goto_2
    invoke-virtual {v9, v1}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0011

    new-instance v3, LlM;

    invoke-direct {v3, p0, v0}, LlM;-><init>(Lcom/kms/antispam/gui/AsDialogs;Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {v1, v2, v3}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0, v11, v4}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v1, 0x7f0701db

    goto :goto_2

    .line 53
    :pswitch_1
    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v9, v1}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0701e2

    invoke-virtual {v1, v2}, LoN;->b(I)LoN;

    move-result-object v1

    const v2, 0x7f0701e3

    new-instance v3, LlN;

    invoke-direct {v3, p0, v0}, LlN;-><init>(Lcom/kms/antispam/gui/AsDialogs;Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {v1, v2, v3}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f0701e4

    invoke-virtual {v0, v1, v4}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_3

    .line 66
    :pswitch_2
    if-eqz v1, :cond_3

    :goto_4
    invoke-virtual {v9, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0701e1

    invoke-virtual {v1, v2}, LoN;->b(I)LoN;

    move-result-object v1

    const v2, 0x7f0701e3

    new-instance v3, LlO;

    invoke-direct {v3, p0, v0, v7}, LlO;-><init>(Lcom/kms/antispam/gui/AsDialogs;Lcom/kms/antispam/gui/AntiSpamListActivity;I)V

    invoke-virtual {v1, v2, v3}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f0701e4

    invoke-virtual {v0, v1, v4}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_4

    .line 79
    :pswitch_3
    const-string v0, "is_hidden_number"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    const v0, 0x7f0a0013

    new-instance v5, LlQ;

    invoke-direct {v5, p0, v7}, LlQ;-><init>(Lcom/kms/antispam/gui/AsDialogs;I)V

    invoke-virtual {v9, v0, v5}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 86
    :goto_5
    if-eqz v1, :cond_5

    :goto_6
    invoke-virtual {v9, v2}, LoN;->a(I)LoN;

    move-result-object v0

    invoke-virtual {v0, v11, v4}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_1

    .line 83
    :cond_4
    const-string v0, "event_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    const v5, 0x7f0a0012

    new-instance v8, LlR;

    invoke-direct {v8, p0, v6, v0, v7}, LlR;-><init>(Lcom/kms/antispam/gui/AsDialogs;III)V

    invoke-virtual {v9, v5, v8}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    goto :goto_5

    :cond_5
    move v2, v3

    .line 86
    goto :goto_6

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
