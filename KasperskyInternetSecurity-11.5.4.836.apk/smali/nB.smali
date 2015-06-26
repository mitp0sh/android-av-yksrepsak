.class public final LnB;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, LnB;

    invoke-direct {v0}, LnB;-><init>()V

    const-string v1, "license-expired-info-dialog"

    invoke-static {v0, v1, p0}, LoL;->b(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 26
    new-instance v0, LoN;

    invoke-virtual {p0}, LnB;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LoN;->b(Z)LoN;

    .line 28
    const v1, 0x7f070211

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    .line 29
    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, LoN;->c(I)LoN;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const v2, 0x7f070212

    invoke-virtual {p0, v2}, LnB;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const v2, 0x7f070213

    invoke-virtual {p0, v2}, LnB;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v1}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    .line 37
    const v1, 0x7f070214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 38
    const v1, 0x7f0701ea

    new-instance v2, LnC;

    invoke-direct {v2, p0}, LnC;-><init>(LnB;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 45
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
