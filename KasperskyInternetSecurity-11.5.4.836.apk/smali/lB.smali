.class public final LlB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, LlB;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LlB;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    const-class v2, Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    iget-object v1, p0, LlB;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, LlB;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget-object v0, p0, LlB;->a:Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->finish()V

    .line 42
    return-void
.end method
