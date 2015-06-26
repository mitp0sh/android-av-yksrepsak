.class public final Lki;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method private static a(Z)I
    .locals 1

    .prologue
    .line 73
    if-eqz p0, :cond_0

    const v0, 0x7f070477

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070476

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lki;

    invoke-direct {v0}, Lki;-><init>()V

    const-string v1, "uninstall-old-app-dialog"

    invoke-static {v0, v1, p0}, LoL;->a(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lki;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 70
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0}, Lki;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->g(Landroid/content/Context;)Z

    move-result v0

    .line 44
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lki;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    const v2, 0x7f070475

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lki;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v0}, Lki;->a(Z)I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v1, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lki;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 48
    new-instance v3, LoN;

    invoke-virtual {p0}, Lki;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, LoN;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v3, v2}, LoN;->a(Ljava/lang/CharSequence;)LoN;

    .line 50
    invoke-virtual {v3, v1}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    .line 51
    if-eqz v0, :cond_0

    const v0, 0x7f070479

    :goto_0
    new-instance v1, Lkj;

    invoke-direct {v1, p0}, Lkj;-><init>(Lki;)V

    invoke-virtual {v3, v0, v1}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 60
    invoke-virtual {v3}, LoN;->b()LoM;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const v0, 0x7f070478

    goto :goto_0
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 35
    invoke-virtual {p0}, Lki;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lki;->dismiss()V

    .line 38
    :cond_0
    return-void
.end method
