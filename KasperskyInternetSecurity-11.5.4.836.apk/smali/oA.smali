.class public final LoA;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:LoB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(LoB;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 30
    iput-object p1, p0, LoA;->a:LoB;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LoA;->a:LoB;

    invoke-static {v0}, LoB;->a(LoB;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, LoL;->b(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 53
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, LoA;->a:LoB;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, LoA;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, LoB;->b(Landroid/os/Bundle;)LoB;

    move-result-object v0

    iput-object v0, p0, LoA;->a:LoB;

    .line 40
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 44
    new-instance v0, LoN;

    invoke-virtual {p0}, LoA;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v1, p0, LoA;->a:LoB;

    invoke-virtual {v1, v0}, LoB;->a(LoN;)V

    .line 48
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
