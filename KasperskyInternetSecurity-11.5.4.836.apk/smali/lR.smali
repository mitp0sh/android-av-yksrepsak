.class public final LlR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private synthetic d:Lcom/kms/antispam/gui/AsDialogs;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AsDialogs;III)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, LlR;->d:Lcom/kms/antispam/gui/AsDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, LlR;->b:I

    .line 126
    iput p3, p0, LlR;->c:I

    .line 127
    iput p4, p0, LlR;->a:I

    .line 128
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, LlR;->d:Lcom/kms/antispam/gui/AsDialogs;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AsDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/gui/AntiSpamListActivity;

    .line 134
    packed-switch p2, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 136
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v0, "listType"

    iget v2, p0, LlR;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v0, "itemType"

    iget v2, p0, LlR;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v0, "itemIndex"

    iget v2, p0, LlR;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, LlR;->d:Lcom/kms/antispam/gui/AsDialogs;

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AsDialogs;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget v1, p0, LlR;->a:I

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(I)V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
