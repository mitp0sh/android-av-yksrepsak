.class public final LkV;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 19
    new-instance v0, LkV;

    invoke-direct {v0}, LkV;-><init>()V

    .line 20
    const-string v1, "set-default-browser-dialog"

    invoke-virtual {v0, p0, v1}, LkV;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, LkV;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LoK;->a(Landroid/app/Activity;LkU;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
