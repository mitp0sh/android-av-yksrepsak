.class public final LlQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:I

.field private synthetic b:Lcom/kms/antispam/gui/AsDialogs;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AsDialogs;I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LlQ;->b:Lcom/kms/antispam/gui/AsDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p2, p0, LlQ;->a:I

    .line 101
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, LlQ;->b:Lcom/kms/antispam/gui/AsDialogs;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AsDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/gui/AntiSpamListActivity;

    .line 107
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget v1, p0, LlQ;->a:I

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(I)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
