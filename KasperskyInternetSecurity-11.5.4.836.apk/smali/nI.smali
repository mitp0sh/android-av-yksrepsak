.class final LnI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LnH;


# direct methods
.method constructor <init>(LnH;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, LnI;->a:LnH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lsr;->o()Lsn;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsn;->a(Z)V

    .line 51
    invoke-virtual {v0}, Lsn;->c()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, LnI;->a:LnH;

    invoke-virtual {v1}, LnH;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 54
    return-void
.end method
