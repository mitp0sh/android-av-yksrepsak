.class public Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;
.super Lfj;
.source "SourceFile"

# interfaces
.implements Lfz;
.implements LkU;


# instance fields
.field private h:Lfw;

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;

.field private l:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;B)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->l:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method private static b()I
    .locals 1

    .prologue
    .line 123
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    invoke-interface {v0}, LkM;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)Lfw;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->d()V

    return-void
.end method

.method private static c()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    invoke-virtual {v0}, Lsb;->b()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private l(I)I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 135
    :pswitch_0
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    invoke-virtual {v1}, Lfw;->a()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    invoke-static {v1, v0, p0}, LkR;->a(Landroid/content/Context;ILkU;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    .line 109
    packed-switch p1, :pswitch_data_0

    move-object v0, p2

    .line 119
    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f070315

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f070316

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->b()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c_()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    invoke-virtual {v0}, Lfw;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    invoke-virtual {v0}, Lfw;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->d(I)V

    goto :goto_0
.end method

.method protected final e()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 61
    new-instance v6, Ljava/util/Vector;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Ljava/util/Vector;-><init>(I)V

    .line 62
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    new-instance v0, Lfw;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f02016a

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070309

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f07030a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lfw;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lfz;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    .line 71
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, LfA;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f070313

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, LfB;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v8, v7}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    new-instance v0, LfC;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f070314

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v9, v7}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->k:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0, v6}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 99
    return-object v0
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 177
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    invoke-virtual {v0}, Lfw;->b_()V

    .line 179
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->i:Z

    if-eqz v0, :cond_0

    .line 180
    iput-boolean v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->i:Z

    .line 181
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->h:Lfw;

    invoke-virtual {v0}, Lfw;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->d(I)V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->d(I)V

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->j:Z

    if-eqz v0, :cond_1

    .line 187
    iput-boolean v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->j:Z

    .line 188
    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->d(I)V

    .line 191
    :cond_1
    invoke-super {p0}, Lfj;->g()V

    .line 192
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f060048

    return v0
.end method

.method protected final i(I)V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->l(I)I

    move-result v0

    .line 148
    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->b(ILjava/lang/String;)V

    .line 172
    return-void

    .line 151
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->b(I)Z

    move-result v1

    .line 153
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v2

    .line 154
    if-eqz v1, :cond_0

    .line 155
    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v3}, LkW;->a(Landroid/content/Context;)LrE;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LrE;)V

    .line 159
    :goto_1
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v1}, Lsb;->a(Z)V

    .line 161
    invoke-virtual {v2}, Lsb;->g_()V

    .line 162
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->h(Z)V

    goto :goto_0

    .line 157
    :cond_0
    const-class v3, LkW;

    invoke-virtual {v2, v3}, Lcom/kms/kmsdaemon/KMSDaemon;->a(Ljava/lang/Class;)V

    goto :goto_1

    .line 167
    :pswitch_1
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    sget-object v2, Lcom/kms/UiEventType;->ShowSelectApModeDialog:Lcom/kms/UiEventType;

    invoke-virtual {v2}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx;->a(Lrw;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->i:Z

    goto :goto_0

    .line 211
    :pswitch_1
    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->j:Z

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 223
    const/16 v0, 0x8

    return v0
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lfj;->p()V

    .line 247
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, LkJ;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->l:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 248
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel;->l:Lcom/kaspersky/kts/gui/settings/panels/AntiPhishingDetailPanel$AntiphishingModeChangedListener;

    invoke-interface {v0, v1}, Lrx;->a(Lrz;)V

    .line 253
    invoke-super {p0}, Lfj;->q()V

    .line 254
    return-void
.end method
