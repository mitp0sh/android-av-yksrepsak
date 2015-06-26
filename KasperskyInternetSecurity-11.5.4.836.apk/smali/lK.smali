.class public final LlK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, LlK;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 325
    packed-switch p2, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v0, p0, LlK;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    .line 328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, LlK;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    .line 333
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
