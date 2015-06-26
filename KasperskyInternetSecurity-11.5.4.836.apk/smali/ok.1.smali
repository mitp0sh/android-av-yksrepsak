.class public final Lok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;


# direct methods
.method public constructor <init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lok;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 247
    packed-switch p2, :pswitch_data_0

    .line 252
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    return-void

    .line 249
    :pswitch_0
    iget-object v0, p0, Lok;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    sget-object v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-static {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 250
    iget-object v0, p0, Lok;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;Z)Z

    .line 251
    iget-object v0, p0, Lok;->a:Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Z)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
