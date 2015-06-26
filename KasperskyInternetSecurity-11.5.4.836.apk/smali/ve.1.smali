.class public final Lve;
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
    .line 22
    const-class v0, Lve;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lve;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 28
    new-instance v0, Lkp;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, Lkp;-><init>(Lrx;)V

    iput-object v0, p0, Lve;->c:Lkp;

    .line 72
    return-void
.end method

.method static synthetic a(Lve;)LbS;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lve;->b:LbS;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lve;

    invoke-direct {v0}, Lve;-><init>()V

    .line 47
    sget-object v1, Lve;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, LoL;->a(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lve;->c:Lkp;

    const-class v1, Lvg;

    new-instance v2, Lvf;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lvf;-><init>(Lve;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 55
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 32
    new-instance v0, LoN;

    invoke-virtual {p0}, Lve;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LoN;->b(Z)LoN;

    .line 34
    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    .line 35
    const v1, 0x7f07008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {}, LuY;->i()LuY;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lvh;->i()Lvh;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LbS;->a(LoN;Ljava/util/List;Z)LbS;

    move-result-object v1

    iput-object v1, p0, Lve;->b:LbS;

    .line 42
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lve;->c:Lkp;

    invoke-virtual {v0}, Lkp;->a()V

    .line 61
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 62
    return-void
.end method
