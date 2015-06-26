.class public Lfe;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lfe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfe;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 8

    .prologue
    .line 31
    invoke-virtual {p0}, Lfe;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 33
    const v0, 0x7f0b007f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    const v1, 0x7f0b0080

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    const v2, 0x7f0b0081

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v4

    invoke-virtual {v4}, Lsk;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->e()I

    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v1, LwL;

    invoke-virtual {p0}, Lfe;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4}, LwL;-><init>(Landroid/content/res/Resources;)V

    .line 43
    const v4, 0x7f0f0001

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v0, v5}, LwL;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-object v3
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lfe;

    invoke-direct {v0}, Lfe;-><init>()V

    .line 52
    sget-object v1, Lfe;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lfe;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 22
    new-instance v0, LoN;

    invoke-virtual {p0}, Lfe;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LoN;->b(Z)LoN;

    .line 24
    const v1, 0x7f0704c3

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    .line 25
    const v1, 0x7f07008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 26
    invoke-direct {p0}, Lfe;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, LoN;->a(Landroid/view/View;)LoN;

    .line 27
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method
