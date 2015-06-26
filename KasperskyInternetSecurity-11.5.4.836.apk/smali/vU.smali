.class public final LvU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private b:Lwa;

.field private c:Lwd;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LvU;->a:Landroid/support/v4/app/Fragment;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, LvU;->b:Lwa;

    invoke-interface {v0}, Lwa;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, LvU;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting-tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lwd;

    iput-object v0, p0, LvU;->c:Lwd;

    .line 46
    iget-object v0, p0, LvU;->c:Lwd;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting item must be provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, LvU;->c:Lwd;

    invoke-interface {v0}, Lwd;->getFragmentBuilder()Lwa;

    move-result-object v0

    iput-object v0, p0, LvU;->b:Lwa;

    .line 51
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, LvU;->b:Lwa;

    iget-object v1, p0, LvU;->a:Landroid/support/v4/app/Fragment;

    invoke-interface {v0, v1, p1, p2}, Lwa;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public final b()Lwd;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LvU;->c:Lwd;

    return-object v0
.end method
