.class public Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;
.super Lfj;
.source "SourceFile"


# instance fields
.field private h:Z

.field private i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 64
    return-void
.end method

.method private b()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 96
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 97
    const-class v1, Lsj;

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-virtual {v0}, Lsj;->b()Z

    move-result v2

    .line 100
    invoke-virtual {v0}, Lsj;->c()Z

    move-result v3

    .line 101
    invoke-virtual {v0}, Lsj;->i()Z

    move-result v4

    .line 102
    invoke-virtual {v0}, Lsj;->t()Z

    move-result v0

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 106
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v5, LfF;

    const v6, 0x7f02015c

    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v8, 0x7f070331

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v9, 0x7f070332

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, LfF;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v5, LfA;

    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v7, 0x7f070328

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v5, LfH;

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->w()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LfH;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v5, LfA;

    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v7, 0x7f070329

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v5, LfB;

    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v7, 0x7f0701b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v8, 0x7f0701b8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0701b9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v7, 0x7f0701ba

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, v3}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0701bb

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0701bc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5, v4}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070473

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f070474

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Los;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0701bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10, v11}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0702a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10, v11}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0701be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f070293

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0701bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    const-string v1, "com.kms.gui.entercodemode"

    sget-object v2, Lcom/kms/gui/KMSEnterCodeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method private k(I)I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private l(I)I
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private m(I)V
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->b(I)Z

    move-result v0

    .line 354
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 355
    const-class v2, Lsj;

    monitor-enter v2

    .line 357
    :try_start_0
    invoke-virtual {v1, v0}, Lsj;->d(Z)V

    .line 358
    invoke-virtual {v1}, Lsj;->g_()V

    .line 359
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->b(I)Z

    move-result v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, LnE;->b()V

    .line 367
    :goto_0
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->DisplayStatusBarNotificationChanged:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;Ljava/lang/Boolean;)V

    .line 368
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 365
    :cond_0
    invoke-static {}, LnE;->c()V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07021b

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f07021c

    invoke-virtual {v1, v2}, LoN;->b(I)LoN;

    move-result-object v1

    const v2, 0x7f07021d

    invoke-virtual {v1, v2, v0}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->l(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Los;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->b()V

    .line 414
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 417
    :cond_0
    invoke-super {p0, p1}, Lfj;->a(Z)V

    .line 418
    return-void
.end method

.method public final c(Z)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->h:Z

    if-ne p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iput-boolean p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->h:Z

    .line 74
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    goto :goto_0
.end method

.method protected final e()Landroid/view/View;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->i:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    .line 82
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->h:Z

    .line 84
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->b()V

    .line 86
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 88
    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    .line 343
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->e(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->l(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfH;

    .line 348
    invoke-virtual {v0}, LfH;->a()V

    .line 349
    invoke-super {p0}, Lfj;->g()V

    .line 350
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 379
    const v0, 0x7f060078

    return v0
.end method

.method protected final i(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 244
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->k(I)I

    move-result v2

    .line 246
    packed-switch v2, :pswitch_data_0

    .line 322
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :pswitch_1
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->j(I)V

    .line 249
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->SettingsLicensePanelOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 253
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->m(I)V

    goto :goto_0

    .line 258
    :pswitch_3
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v2

    .line 259
    const-class v3, Lsj;

    monitor-enter v3

    .line 261
    :try_start_0
    invoke-virtual {v2}, Lsj;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    :goto_1
    invoke-virtual {v2, v0}, Lsj;->e(Z)V

    .line 263
    invoke-virtual {v2}, Lsj;->g_()V

    .line 264
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    move v0, v1

    .line 261
    goto :goto_1

    .line 265
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->b(I)Z

    move-result v0

    .line 269
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 270
    const-class v2, Lsj;

    monitor-enter v2

    .line 271
    :try_start_1
    invoke-virtual {v1, v0}, Lsj;->h(Z)V

    .line 272
    invoke-virtual {v1}, Lsj;->g_()V

    .line 273
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 274
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->b(I)Z

    move-result v1

    .line 280
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v2

    .line 281
    const-class v3, Lsj;

    monitor-enter v3

    .line 283
    :try_start_2
    invoke-virtual {v2, v1}, Lsj;->g(Z)V

    .line 284
    invoke-virtual {v2}, Lsj;->g_()V

    .line 285
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 287
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    invoke-static {v2}, LoR;->a(Landroid/content/Context;)Z

    .line 288
    if-eqz v1, :cond_1

    .line 290
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const-class v3, Lcom/kms/gui/widget/KMSWidget;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 300
    :goto_2
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d(I)V

    goto :goto_0

    .line 285
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 296
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    const-class v3, Lcom/kms/gui/widget/KMSWidget;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_2

    .line 304
    :pswitch_6
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->c()V

    goto/16 :goto_0

    .line 307
    :pswitch_7
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    .line 308
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/kms/selfprotection/gui/UninstallActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    invoke-static {v1}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 310
    const-string v1, "com.kms.UninstallActivity.launchedFromAd"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 314
    :pswitch_8
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto/16 :goto_0

    .line 318
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/kms/additional/gui/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 384
    const/16 v0, 0x9

    return v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    .line 336
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 337
    invoke-super {p0}, Lfj;->o()V

    .line 338
    return-void
.end method

.method protected final u()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method protected final v()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Lfj;->v()V

    .line 397
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->d:Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AdditionalDetailPanel;->l(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfH;

    .line 400
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, LfH;->a()V

    .line 405
    :cond_0
    return-void
.end method
