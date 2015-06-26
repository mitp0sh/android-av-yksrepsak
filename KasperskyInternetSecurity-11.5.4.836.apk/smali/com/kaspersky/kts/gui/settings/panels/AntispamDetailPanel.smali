.class public Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;
.super Lfj;
.source "SourceFile"


# instance fields
.field private final h:LkZ;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 49
    invoke-static {}, LjJ;->h()LkZ;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)LkZ;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    return-object v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    const/4 v0, 0x6

    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x7

    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private l(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(IZ)V

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(IZ)V

    .line 110
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(IZ)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->k(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;B)V

    .line 147
    new-instance v2, LoN;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, LoN;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0701c9

    invoke-virtual {v2, v3}, LoN;->a(I)LoN;

    move-result-object v2

    const v3, 0x7f0a000f

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    invoke-interface {v4}, LkZ;->a()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0701ca

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final e()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 58
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0701c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    invoke-interface {v3}, LkZ;->a()I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    .line 64
    new-instance v1, LfN;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LfN;-><init>(I)V

    .line 66
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v3, LfE;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0701c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0701f3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v9, v8}, LfE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v3, LfA;

    invoke-direct {v3}, LfA;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v3, LfC;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0701c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0701c4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0701c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    invoke-interface {v5}, LkZ;->c()Z

    move-result v5

    new-instance v6, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7, v8}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;IB)V

    invoke-direct {v2, v3, v4, v5, v6}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0701c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0701c7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    invoke-interface {v5}, LkZ;->b()Z

    move-result v5

    new-instance v6, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7, v8}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamSettingAvailabilityChecker;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;IB)V

    invoke-direct {v2, v3, v4, v5, v6}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfA;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0701e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfD;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0700bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v9, v4, v1}, LfD;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LfJ;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfD;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0700c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v9, v4, v1}, LfD;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LfJ;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    invoke-interface {v0}, LkZ;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->l(I)V

    .line 101
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 103
    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lfj;->g()V

    .line 196
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b()V

    .line 197
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f060067

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0701c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i(I)V
    .locals 2

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_0
    :pswitch_0
    return-void

    .line 120
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d(I)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(I)Z

    move-result v1

    invoke-interface {v0, v1}, LkZ;->b(Z)V

    goto :goto_0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->h:LkZ;

    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(I)Z

    move-result v1

    invoke-interface {v0, v1}, LkZ;->a(Z)V

    goto :goto_0

    .line 129
    :pswitch_4
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 132
    :pswitch_5
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final k(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 162
    packed-switch p1, :pswitch_data_0

    move v1, v0

    .line 179
    :goto_0
    :pswitch_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(IZ)V

    .line 180
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(IZ)V

    .line 181
    return-void

    :pswitch_1
    move v3, v1

    move v1, v0

    move v0, v3

    .line 170
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 174
    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 206
    const/16 v0, 0x11

    return v0
.end method
