.class public final LkK;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 41
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, LkK;

    invoke-direct {v0}, LkK;-><init>()V

    .line 30
    const-string v1, "antiphishing-mode-dialog"

    invoke-static {v0, v1, p0}, LoL;->b(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 20
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    invoke-interface {v0}, LkM;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v0

    .line 21
    new-instance v1, LoN;

    invoke-virtual {p0}, LkK;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0704bd

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0704be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0a002e

    const v3, 0x7f0a002f

    new-instance v4, LkL;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LkL;-><init>(B)V

    invoke-virtual {v1, v2, v3, v0, v4}, LoN;->a(IIILoO;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
