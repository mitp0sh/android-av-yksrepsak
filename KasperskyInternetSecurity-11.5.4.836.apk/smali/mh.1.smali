.class public final Lmh;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lmh;

    invoke-direct {v0}, Lmh;-><init>()V

    .line 22
    const-string v1, "antivirus-monitor-mode-dialog"

    invoke-static {v0, v1, p0}, LoL;->b(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lmh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LoK;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
