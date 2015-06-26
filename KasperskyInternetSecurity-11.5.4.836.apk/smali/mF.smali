.class public final LmF;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 27
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, LmF;

    invoke-direct {v0}, LmF;-><init>()V

    .line 57
    const-string v1, "scan-chooser-dialog"

    invoke-virtual {v0, p0, v1}, LmF;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v2, LoN;

    invoke-virtual {p0}, LmF;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, LoN;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LoN;->b(Z)LoN;

    .line 33
    const v0, 0x7f0700b4

    invoke-virtual {v2, v0}, LoN;->a(I)LoN;

    .line 34
    const v0, 0x7f0700b5

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 36
    invoke-static {}, Lcom/kms/antivirus/AntivirusScanType;->values()[Lcom/kms/antivirus/AntivirusScanType;

    move-result-object v3

    .line 37
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 38
    array-length v0, v3

    new-array v5, v0, [Ljava/lang/CharSequence;

    move v0, v1

    .line 39
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 40
    aget-object v6, v3, v0

    invoke-virtual {v6}, Lcom/kms/antivirus/AntivirusScanType;->getNameResId()I

    move-result v6

    invoke-virtual {p0, v6}, LmF;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 41
    aget-object v6, v3, v0

    invoke-virtual {v6}, Lcom/kms/antivirus/AntivirusScanType;->getDescriptionResId()I

    move-result v6

    invoke-virtual {p0, v6}, LmF;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, LmG;

    invoke-direct {v0, p0, v3}, LmG;-><init>(LmF;[Lcom/kms/antivirus/AntivirusScanType;)V

    invoke-virtual {v2, v4, v5, v1, v0}, LoN;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 52
    invoke-virtual {v2}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
