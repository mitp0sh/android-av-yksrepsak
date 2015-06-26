.class public Lnj;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lnj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 17
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lnj;

    invoke-direct {v0}, Lnj;-><init>()V

    .line 21
    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lnj;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 26
    new-instance v0, LoN;

    invoke-virtual {p0}, Lnj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f07023c

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    const v1, 0x7f07023d

    new-instance v2, Lnk;

    invoke-direct {v2, p0}, Lnk;-><init>(Lnj;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
