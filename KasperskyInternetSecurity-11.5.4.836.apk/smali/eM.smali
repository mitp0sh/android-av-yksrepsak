.class public final LeM;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:LeL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(LeL;I)LeM;
    .locals 3

    .prologue
    .line 33
    new-instance v0, LeM;

    invoke-direct {v0}, LeM;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v2, "dialogId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v0, v1}, LeM;->setArguments(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {v0, p0}, LeM;->a(LeL;)V

    .line 38
    return-object v0
.end method

.method private a(LeL;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, LeM;->a:LeL;

    .line 44
    return-void
.end method


# virtual methods
.method public final getShowsDialog()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, LeM;->a:LeL;

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, LeM;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    iget-object v1, p0, LeM;->a:LeL;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, LeM;->a:LeL;

    invoke-interface {v1, v0}, LeL;->a(I)Landroid/app/Dialog;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, LeM;->a:LeL;

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LeM;->setShowsDialog(Z)V

    .line 19
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 20
    return-void
.end method
