.class public final LkO;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, LkO;

    invoke-direct {v0}, LkO;-><init>()V

    .line 31
    const-string v1, "reset-default-browser-dialog"

    invoke-virtual {v0, p0, v1}, LkO;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, LkO;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LkP;

    invoke-direct {v1, p0}, LkP;-><init>(LkO;)V

    invoke-static {v0, v1}, LoK;->b(Landroid/app/Activity;LkU;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
