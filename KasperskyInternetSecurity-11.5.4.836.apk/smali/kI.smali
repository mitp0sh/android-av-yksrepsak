.class final LkI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LkH;


# direct methods
.method constructor <init>(LkH;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, LkI;->a:LkH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, LkI;->a:LkH;

    invoke-static {v0}, LkH;->a(LkH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, LkI;->a:LkH;

    invoke-static {v0}, LkH;->b(LkH;)V

    .line 97
    iget-object v0, p0, LkI;->a:LkH;

    invoke-virtual {v0}, LkH;->dismiss()V

    .line 99
    :cond_0
    return-void
.end method
