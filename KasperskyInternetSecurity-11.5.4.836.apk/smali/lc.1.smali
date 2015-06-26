.class public final Llc;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:LbS;

.field private final c:Lkp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Llc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    new-instance v0, Lkp;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, Lkp;-><init>(Lrx;)V

    iput-object v0, p0, Llc;->c:Lkp;

    .line 183
    return-void
.end method

.method static synthetic a(Llc;)LbS;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llc;->b:LbS;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    .line 67
    sget-object v1, Llc;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Llc;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Llc;->c:Lkp;

    const-class v1, Llb;

    new-instance v2, Lli;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lli;-><init>(Llc;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 40
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 44
    new-instance v0, LoN;

    invoke-virtual {p0}, Llc;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LoN;->b(Z)LoN;

    .line 46
    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    .line 47
    const v1, 0x7f07008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-static {}, Llj;->a()Llj;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Llg;->i()Llg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lle;->i()Lle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LbS;->a(LoN;Ljava/util/List;Z)LbS;

    move-result-object v1

    iput-object v1, p0, Llc;->b:LbS;

    .line 55
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llc;->c:Lkp;

    invoke-virtual {v0}, Lkp;->a()V

    .line 62
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 63
    return-void
.end method
