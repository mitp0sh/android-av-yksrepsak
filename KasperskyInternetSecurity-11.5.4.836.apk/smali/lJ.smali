.class public final LlJ;
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
    .line 271
    iput-object p1, p0, LlJ;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, LlJ;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, LlJ;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, LlJ;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, LlJ;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->i(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
