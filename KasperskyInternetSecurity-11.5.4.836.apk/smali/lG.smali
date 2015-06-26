.class final LlG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:LlE;


# direct methods
.method constructor <init>(LlE;I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LlG;->b:LlE;

    iput p2, p0, LlG;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, LlG;->b:LlE;

    iget-object v0, v0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iget v1, p0, LlG;->a:I

    invoke-static {v0, p1, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method
