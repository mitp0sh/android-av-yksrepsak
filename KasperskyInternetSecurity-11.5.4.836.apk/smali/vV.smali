.class public final LvV;
.super LvO;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/kms/settings/SettingTabImpl;->Scan:Lcom/kms/settings/SettingTabImpl;

    const-class v1, Lcom/kms/settings/KisSettingListFragment;

    const v2, 0x7f03004a

    invoke-direct {p0, v0, v1, v2}, LvO;-><init>(Lwd;Ljava/lang/Class;I)V

    .line 19
    return-void
.end method

.method private static a(Lcom/kms/settings/KisSettingListFragment;)V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Lwb;

    const v2, 0x7f070344

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lwb;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {}, Lsr;->a()Lsr;

    invoke-static {}, Lsr;->p()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lwh;->a(II)LbN;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lwb;

    const v2, 0x7f070345

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lwb;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {}, Lsr;->a()Lsr;

    invoke-static {}, Lsr;->p()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lwh;->a(II)LbN;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lsr;->a()Lsr;

    invoke-static {}, Lsr;->p()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lwh;->a(II)LbN;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lwb;

    const v2, 0x7f0700e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lwb;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {}, Lsr;->a()Lsr;

    invoke-static {}, Lsr;->p()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lwh;->a(II)LbN;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {}, Lsr;->a()Lsr;

    invoke-static {}, Lsr;->p()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lwh;->a(II)LbN;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {}, Lsr;->a()Lsr;

    invoke-static {}, Lsr;->p()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lwh;->a(II)LbN;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, LbW;

    invoke-virtual {p0}, Lcom/kms/settings/KisSettingListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LbW;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    invoke-static {p0, v1}, LbS;->a(Landroid/support/v4/app/ListFragment;LbS;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/kms/settings/KisSettingListFragment;

    invoke-static {p1}, LvV;->a(Lcom/kms/settings/KisSettingListFragment;)V

    return-void
.end method
