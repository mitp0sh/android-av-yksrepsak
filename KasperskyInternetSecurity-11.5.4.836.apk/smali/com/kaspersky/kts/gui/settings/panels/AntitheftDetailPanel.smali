.class public Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;
.super Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;
.source "SourceFile"


# instance fields
.field private h:[Z

.field private i:[Ljava/lang/String;

.field private j:LfG;

.field private final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    .line 55
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->i:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;[Z)[Z
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    return-object p1
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)[Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    return-object v0
.end method

.method private k(I)I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private y()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    const/4 v2, 0x0

    invoke-interface {v0}, Lde;->b()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 68
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    const/4 v2, 0x1

    invoke-interface {v0}, Lde;->d()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 69
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    const/4 v2, 0x2

    invoke-interface {v0}, Lde;->n()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 70
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    const/4 v2, 0x3

    invoke-interface {v0}, Lde;->e()Z

    move-result v0

    aput-boolean v0, v1, v2

    .line 71
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->j:LfG;

    invoke-virtual {v0}, LfG;->d()V

    .line 221
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->j:LfG;

    invoke-virtual {v0}, LfG;->a()V

    .line 234
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->j:LfG;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f070334

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LfG;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->j:LfG;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f070333

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$1;

    invoke-direct {v2, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)V

    invoke-virtual {v0, v1, v2}, LfG;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x0

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    new-array v0, v3, [Z

    .line 243
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;

    invoke-direct {v1, p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;[Z)V

    .line 245
    new-instance v2, LoN;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, LoN;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07029a

    invoke-virtual {v2, v3}, LoN;->a(I)LoN;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3, v0, v1}, LoN;->a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)LoN;

    move-result-object v0

    const v2, 0x7f0701f8

    invoke-virtual {v0, v2, v1}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v2, 0x7f0701f9

    invoke-virtual {v0, v2, v1}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 78
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->h:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 80
    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->i:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 78
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->i:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_2
    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f070406

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_3
    return-object v0
.end method

.method protected final c()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 105
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->y()V

    .line 107
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 108
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    new-instance v1, LfG;

    const v2, 0x7f020162

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070307

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f070308

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LfG;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->j:LfG;

    .line 115
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->j:LfG;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, LfA;

    invoke-direct {v1}, LfA;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f07029a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v7}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f07029b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0702a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0702a1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lqq;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0702a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0702a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f07029d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f07029e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f07029f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030081

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 172
    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 173
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->d()V

    .line 174
    return-object v1
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->d()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final d()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->z()V

    .line 216
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 259
    const v0, 0x7f060056

    return v0
.end method

.method protected final i(I)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    .line 186
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->k(I)I

    move-result v1

    .line 188
    packed-switch v1, :pswitch_data_0

    .line 200
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->d(I)V

    goto :goto_0

    .line 193
    :pswitch_2
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 196
    :pswitch_3
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 199
    :pswitch_4
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x7

    return v0
.end method
