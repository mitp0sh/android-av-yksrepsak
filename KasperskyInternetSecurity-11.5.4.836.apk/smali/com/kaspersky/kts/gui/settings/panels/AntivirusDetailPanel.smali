.class public Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;
.super Lfj;
.source "SourceFile"


# instance fields
.field h:Z

.field private i:Ljava/util/ArrayList;

.field private final j:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 60
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->h:Z

    .line 61
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;B)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->j:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 12

    .prologue
    .line 90
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 91
    const-class v1, Lsl;

    monitor-enter v1

    .line 92
    :try_start_0
    invoke-virtual {v0}, Lsl;->c()I

    move-result v2

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    .line 96
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 97
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 99
    new-instance v5, LfO;

    invoke-direct {v5}, LfO;-><init>()V

    .line 100
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->d()Z

    move-result v6

    .line 103
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 104
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v8, LfF;

    const v9, 0x7f020166

    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    if-eqz v6, :cond_3

    const v0, 0x7f0702f6

    :goto_0
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v0, v10}, LfF;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    if-eqz v6, :cond_0

    .line 113
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v8, LfE;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v9, 0x7f07032d

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v11, 0x7f07032e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v0, v10}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v11, 0x7f070340

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v8, v9, v10, v11, v0}, LfE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfC;

    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v8, 0x7f0700d6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v2, v7, v8, v9, v5}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    sget-object v7, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AV_CHANGE_PROTECTION_LEVEL:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    invoke-virtual {v2, v7}, LfC;->a(Lcom/kms/kmsshared/DefaultActionHandler$Action;)LfI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfA;

    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v8, 0x7f0702f7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v2, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$1;

    invoke-direct {v2, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;)V

    .line 146
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v8, LfB;

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v9, 0x7f070294

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    if-eqz v3, :cond_5

    const v0, 0x7f070295

    :goto_2
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0, v3, v2}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v7, 0x7f0702b2

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v8, 0x7f0702b3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v7, v4}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0702b4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v7, 0x7f0702b5

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lsf;->f()Z

    move-result v1

    invoke-direct {v2, v3, v4, v1}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0702f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    if-eqz v6, :cond_1

    .line 182
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f070297

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v5}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f070339

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    if-eqz v6, :cond_2

    .line 202
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f07033a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f07033b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 220
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 107
    :cond_3
    const v0, 0x7f07047e

    goto/16 :goto_0

    .line 114
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 147
    :cond_5
    const v0, 0x7f070296

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method private static l(I)V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 253
    const-class v1, Lsl;

    monitor-enter v1

    .line 254
    :try_start_0
    invoke-virtual {v0, p0}, Lsl;->c(I)V

    .line 255
    invoke-virtual {v0}, Lsl;->g_()V

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0, p0}, Lgz;->a(I)I

    .line 259
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 352
    const/16 v0, 0xbb9

    if-ne p1, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LoK;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, p2

    .line 248
    :goto_0
    return-object v0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f07033c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/kms/kmsshared/Utils;->f()I

    move-result v1

    .line 229
    if-nez v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <b><font color=\"#ff8080\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f07033f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font></b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f07033e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f07033d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 240
    :pswitch_2
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 241
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    const v0, 0x7f070341

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f070342

    goto :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final c(Z)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    return-object v0
.end method

.method protected final e()Landroid/view/View;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    .line 78
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b()V

    .line 80
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 83
    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 337
    const v0, 0x7f060025

    return v0
.end method

.method protected final i(I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 264
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v2

    .line 265
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    .line 267
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_0
    :pswitch_0
    return-void

    .line 269
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(I)Z

    move-result v1

    .line 270
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0, v1}, Lmk;->a(Z)V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(ILjava/lang/String;)V

    .line 273
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    invoke-virtual {v0}, Lsl;->d()I

    move-result v0

    .line 274
    if-eqz v1, :cond_0

    .line 275
    or-int/lit8 v0, v0, 0x10

    .line 279
    :goto_1
    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->l(I)V

    .line 281
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->d(Z)V

    goto :goto_0

    .line 277
    :cond_0
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    .line 285
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(I)Z

    move-result v1

    .line 286
    const/16 v0, 0xa

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 287
    invoke-virtual {v2}, Lsf;->g_()V

    .line 289
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lsl;->d()I

    move-result v0

    .line 291
    if-eqz v1, :cond_1

    .line 292
    and-int/lit8 v0, v0, -0x41

    .line 296
    :goto_2
    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->l(I)V

    .line 297
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->i()LgJ;

    move-result-object v0

    invoke-virtual {v0, v1}, LgJ;->b(Z)V

    .line 299
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->e(Z)V

    goto :goto_0

    .line 294
    :cond_1
    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    .line 303
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 306
    :pswitch_4
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 309
    :pswitch_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 312
    :pswitch_6
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    .line 313
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->c()V

    goto :goto_0

    .line 316
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b(I)Z

    move-result v0

    .line 317
    invoke-virtual {v2, v0}, Lsf;->a(Z)V

    .line 318
    invoke-virtual {v2}, Lsf;->g_()V

    .line 319
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->f(Z)V

    goto/16 :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final k(I)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 360
    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;

    invoke-direct {v1, p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$2;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Lfj;->p()V

    .line 390
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, Lme;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->j:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 391
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 395
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->j:Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel$MonitorStateChangedListener;

    invoke-interface {v0, v1}, Lrx;->a(Lrz;)V

    .line 396
    invoke-super {p0}, Lfj;->q()V

    .line 397
    return-void
.end method

.method protected final u()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method protected final v()V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->a()Z

    move-result v0

    .line 343
    iget-boolean v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->h:Z

    if-eq v0, v1, :cond_0

    .line 344
    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->h:Z

    .line 345
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->b()V

    .line 346
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusDetailPanel;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 348
    :cond_0
    return-void
.end method
