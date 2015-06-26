.class public Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;
.super Lfh;
.source "SourceFile"


# instance fields
.field private h:Lsm;

.field private i:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lfh;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 43
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->h:Lsm;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;)Lsm;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->h:Lsm;

    return-object v0
.end method

.method private y()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 110
    invoke-virtual {p0, v3, v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->b(ILjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->h:Lsm;

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(IZ)V

    .line 113
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->k()V

    .line 114
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-object v0

    .line 128
    :pswitch_1
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->h:Lsm;

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->itemsInStorage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final b()Landroid/view/View;
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->i:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->i:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    .line 193
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->i:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    const v1, 0x7f020198

    const v2, 0x7f070091

    const v3, 0x7f070090

    invoke-virtual {v0, v1, v2, v3}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->a(III)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->i:Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1}, Lfh;->b(Z)V

    .line 119
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->y()V

    .line 120
    return-void
.end method

.method protected final c()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    .line 56
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfE;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f070407

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070408

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v6, v4}, LfE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    invoke-direct {v1}, LfA;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfM;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0700b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->h:Lsm;

    invoke-virtual {v4}, Lsm;->b()Z

    move-result v4

    new-instance v5, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$1;

    invoke-direct {v5, p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;)V

    invoke-direct {v1, v2, v3, v4, v5}, LfM;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0700bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$2;

    invoke-direct {v3, p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel$2;-><init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;)V

    invoke-direct {v1, v2, v6, v3}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0700ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfD;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f07010c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v6}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v6, v3}, LfD;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 99
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->d()V

    .line 100
    return-object v0
.end method

.method protected final d()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Los;->a()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lfh;->g()V

    .line 106
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->y()V

    .line 107
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f06006d

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i(I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ChangePrivacyProtectionMode:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 160
    :pswitch_3
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenPrivacyProtectionHiddenContacts:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x1d

    return v0
.end method
