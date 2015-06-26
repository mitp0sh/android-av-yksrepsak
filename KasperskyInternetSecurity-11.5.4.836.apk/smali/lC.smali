.class public final LlC;
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
    .line 144
    iput-object p1, p0, LlC;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, LlC;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, LlC;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kms/antispam/gui/AsDialogs;->a(Landroid/support/v4/app/FragmentManager;I)V

    .line 148
    return-void
.end method
