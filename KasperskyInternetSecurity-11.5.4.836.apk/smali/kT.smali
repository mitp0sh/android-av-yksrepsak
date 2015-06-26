.class final LkT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LkU;

.field private synthetic b:I

.field private synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(LkU;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, LkT;->a:LkU;

    iput p2, p0, LkT;->b:I

    iput-object p3, p0, LkT;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://google.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, LkT;->a:LkU;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, LkT;->a:LkU;

    iget v2, p0, LkT;->b:I

    invoke-interface {v1, v2}, LkU;->k(I)V

    .line 85
    :cond_0
    :try_start_0
    iget-object v1, p0, LkT;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
