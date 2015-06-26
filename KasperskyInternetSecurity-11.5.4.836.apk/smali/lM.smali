.class public final LlM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListActivity;

.field private synthetic b:Lcom/kms/antispam/gui/AsDialogs;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AsDialogs;Lcom/kms/antispam/gui/AntiSpamListActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, LlM;->b:Lcom/kms/antispam/gui/AsDialogs;

    iput-object p2, p0, LlM;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, LlM;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-virtual {v0, p2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->c(I)V

    .line 49
    return-void
.end method
