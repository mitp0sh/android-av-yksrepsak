.class public final LlO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListActivity;

.field private synthetic b:I

.field private synthetic c:Lcom/kms/antispam/gui/AsDialogs;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AsDialogs;Lcom/kms/antispam/gui/AntiSpamListActivity;I)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, LlO;->c:Lcom/kms/antispam/gui/AsDialogs;

    iput-object p2, p0, LlO;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iput p3, p0, LlO;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, LlO;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iget v1, p0, LlO;->b:I

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b(I)V

    .line 75
    return-void
.end method
