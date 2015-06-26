.class public final LvT;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements LvS;


# instance fields
.field private a:LvU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lwd;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LvT;->a:LvU;

    invoke-virtual {v0}, LvU;->b()Lwd;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, LvU;

    invoke-direct {v0, p0}, LvU;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, LvT;->a:LvU;

    .line 35
    iget-object v0, p0, LvT;->a:LvU;

    invoke-virtual {v0}, LvU;->a()V

    .line 36
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, LvT;->a:LvU;

    invoke-virtual {v0, p1, p2}, LvU;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, LvT;->a:LvU;

    invoke-virtual {v0, p1, p2}, LvU;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
