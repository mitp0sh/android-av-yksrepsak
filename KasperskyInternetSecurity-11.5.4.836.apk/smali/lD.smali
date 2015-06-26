.class public final LlD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, LlD;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LlD;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const-class v2, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    iget-object v1, p0, LlD;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 172
    const-string v1, "com.kms.gui.helpid"

    const v2, 0x7f06006c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :goto_0
    iget-object v1, p0, LlD;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void

    .line 175
    :cond_0
    const-string v1, "com.kms.gui.helpid"

    const v2, 0x7f06006b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
