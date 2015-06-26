.class final LkS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lgo;

.field private synthetic b:LkU;

.field private synthetic c:I

.field private synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lgo;LkU;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, LkS;->a:Lgo;

    iput-object p2, p0, LkS;->b:LkU;

    iput p3, p0, LkS;->c:I

    iput-object p4, p0, LkS;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, LkS;->a:Lgo;

    iget-object v1, v1, Lgo;->a:Ljava/lang/String;

    .line 39
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 40
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.applications.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    :goto_0
    iget-object v1, p0, LkS;->b:LkU;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, LkS;->b:LkU;

    iget v2, p0, LkS;->c:I

    invoke-interface {v1, v2}, LkU;->k(I)V

    .line 53
    :cond_0
    iget-object v1, p0, LkS;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void

    .line 44
    :cond_1
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
