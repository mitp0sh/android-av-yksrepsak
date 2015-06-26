.class public final LlX;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, LlX;

    invoke-direct {v0}, LlX;-><init>()V

    .line 37
    const-string v1, "gps-disabled-dialog"

    invoke-virtual {v0, p0, v1}, LlX;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 20
    new-instance v0, LoN;

    invoke-virtual {p0}, LlX;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LoN;->b(Z)LoN;

    .line 23
    const v1, 0x7f070185

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    .line 24
    const v1, 0x7f070184

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    .line 25
    const v1, 0x7f070178

    new-instance v2, LlY;

    invoke-direct {v2, p0}, LlY;-><init>(LlX;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 32
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
