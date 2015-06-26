.class public Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;
.super Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;
.source "SourceFile"


# instance fields
.field private h:Lse;

.field private i:Z

.field private j:LfC;

.field private k:LfC;

.field private l:LfC;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 45
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->i:Z

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private e(Z)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 220
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    invoke-virtual {v0}, Lse;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 226
    :goto_0
    if-nez v0, :cond_3

    .line 227
    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d(I)V

    :goto_1
    move v0, v2

    .line 238
    :goto_2
    return v0

    :cond_1
    move v0, v3

    .line 223
    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    invoke-virtual {v0, v3}, Lse;->d(Z)V

    .line 231
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    invoke-virtual {v0}, Lse;->g_()V

    .line 232
    invoke-virtual {p0, v2, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->a(IZ)V

    .line 233
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->y()V

    goto :goto_1

    :cond_3
    move v0, v3

    .line 238
    goto :goto_2
.end method

.method private y()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(I)Z

    move-result v0

    .line 261
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(IZ)V

    .line 262
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(IZ)V

    .line 263
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(IZ)V

    .line 264
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(IZ)V

    .line 265
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 57
    packed-switch p1, :pswitch_data_0

    .line 80
    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070221

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f070222

    invoke-virtual {v1, v2}, LoN;->b(I)LoN;

    move-result-object v1

    const v2, 0x7f070223

    new-instance v3, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$1;

    invoke-direct {v3, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;)V

    invoke-virtual {v1, v2, v3}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f070224

    invoke-virtual {v1, v2, v0}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$2;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$2;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->e(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->a()Z

    move-result v0

    goto :goto_0
.end method

.method protected final c()Landroid/view/View;
    .locals 8

    .prologue
    const v4, 0x7f070179

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 91
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    .line 93
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    new-instance v1, LfF;

    const v2, 0x7f020162

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v7}, LfF;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, LfP;

    invoke-direct {v0}, LfP;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    invoke-virtual {v4}, Lse;->h()Z

    move-result v4

    invoke-direct {v2, v3, v7, v4, v0}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v3, 0x7f0703b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;

    const/16 v0, 0x1c

    invoke-direct {v1, v0, v6}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;-><init>(IB)V

    .line 108
    new-instance v2, LfC;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v3, 0x7f07017e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    iput-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->j:LfC;

    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->j:LfC;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v4, 0x7f07017c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v5, 0x7f0701ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    invoke-virtual {v5}, Lse;->i()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5, v1}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v3, 0x7f0703ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;

    const/16 v0, 0x1a

    invoke-direct {v1, v0, v6}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;-><init>(IB)V

    .line 128
    new-instance v2, LfC;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v3, 0x7f07017a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    iput-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->l:LfC;

    .line 132
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->l:LfC;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;

    const/16 v0, 0x1b

    invoke-direct {v1, v0, v6}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel$SimWatchControlsAvailabilityChecker;-><init>(IB)V

    .line 137
    new-instance v2, LfC;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v3, 0x7f07017b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    iput-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->k:LfC;

    .line 141
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->k:LfC;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 146
    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->y()V

    .line 152
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->j:LfC;

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->j:LfC;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v3}, LfC;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->k:LfC;

    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->k:LfC;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v3}, LfC;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->l:LfC;

    if-eqz v0, :cond_2

    .line 160
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->l:LfC;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->h:Lse;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v3}, LfC;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->g()V

    .line 164
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f06005c

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const v1, 0x7f0703b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(I)Z

    move-result v0

    .line 176
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v1

    .line 177
    invoke-interface {v1, v0}, Lde;->e(Z)V

    .line 178
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->y()V

    .line 179
    if-eqz v0, :cond_0

    invoke-interface {v1}, Lde;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->a(IZ)V

    goto :goto_0

    .line 184
    :pswitch_2
    iput-boolean v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->i:Z

    .line 185
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const-class v3, Lcom/kms/antitheft/gui/BlockTextActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->b(I)Z

    move-result v0

    .line 189
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v1

    invoke-interface {v1, v0}, Lde;->f(Z)V

    goto :goto_0

    .line 192
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const-class v2, Lcom/kms/antitheft/gui/PhoneNumberActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v1, "phoneNumberSetting"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    iput-boolean v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->i:Z

    .line 196
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    const-class v2, Lcom/kms/antitheft/gui/EmailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v1, "emailSetting"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iput-boolean v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->i:Z

    .line 203
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x12

    return v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->i:Z

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->e(Z)Z

    .line 255
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSimWatchSettingsPanel;->i:Z

    .line 256
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->m()V

    .line 257
    return-void
.end method

.method protected final v()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method
