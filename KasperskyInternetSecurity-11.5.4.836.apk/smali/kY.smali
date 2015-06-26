.class public final LkY;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, LkY;

    invoke-direct {v0}, LkY;-><init>()V

    .line 29
    const-string v1, "safebrowser-not-available-dialog"

    invoke-static {v0, v1, p0}, LoL;->b(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 18
    new-instance v0, LoN;

    invoke-virtual {p0}, LkY;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LoN;->b(Z)LoN;

    .line 21
    const v1, 0x7f070098

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    .line 22
    const v1, 0x7f070099

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    .line 23
    const v1, 0x7f07009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 24
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
