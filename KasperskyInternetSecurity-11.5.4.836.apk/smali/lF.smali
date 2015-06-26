.class final LlF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:LlE;


# direct methods
.method constructor <init>(LlE;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, LlF;->b:LlE;

    iput p2, p0, LlF;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, LlF;->b:LlE;

    iget-object v0, v0, LlE;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iget v1, p0, LlF;->a:I

    invoke-static {v0, p1, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V

    .line 98
    return-void
.end method
