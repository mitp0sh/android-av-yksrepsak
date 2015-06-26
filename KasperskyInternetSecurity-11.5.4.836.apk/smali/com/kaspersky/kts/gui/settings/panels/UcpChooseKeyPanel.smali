.class public Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;
.super Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;
.source "SourceFile"

# interfaces
.implements Loc;


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

.field private o:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 47
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->i:Landroid/widget/TextView;

    const v1, 0x7f070142

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v2, 0x7f0b01ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 93
    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->n:Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    aput-object v1, v0, v5

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->o:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    .line 96
    invoke-virtual {v0}, Lsw;->b()I

    move-result v1

    .line 98
    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->k:Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->l:Landroid/widget/TextView;

    aput-object v1, v0, v6

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lsw;->c()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lob;->a(IJ)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    invoke-virtual {v0}, Lsw;->c()J

    move-result-wide v0

    .line 105
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->c:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lob;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 107
    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->k:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-static {v2}, Lfb;->b([Landroid/view/View;)V

    .line 108
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->c:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lob;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_1
    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->k:Landroid/widget/TextView;

    aput-object v1, v0, v5

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    goto :goto_0
.end method

.method private y()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->i:Landroid/widget/TextView;

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->n:Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    aput-object v1, v0, v3

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 119
    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v2, 0x7f0b01ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->n:Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->setCodesList(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method private z()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/16 v0, 0x8

    sput v0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->i:I

    .line 149
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->j(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->j(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e()Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0b01cf

    .line 56
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->m:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->i:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->j:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->k:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->l:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->n:Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    .line 67
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->n:Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->setOrientation(I)V

    .line 68
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->n:Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/licensing/ActivationCodesWrapList;->setOnCodeClickListener(Loc;)V

    .line 70
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->h:Landroid/view/View;

    return-object v0
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->f_()V

    .line 158
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->j(I)V

    .line 159
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x21

    return v0
.end method

.method public final l(I)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/String;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/kms/licensing/ActivationType;->KPC:Lcom/kms/licensing/ActivationType;

    invoke-static {v1}, LsQ;->a(Lcom/kms/licensing/ActivationType;)V

    .line 143
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, LkA;

    invoke-direct {v3, p0}, LkA;-><init>(Lkz;)V

    invoke-interface {v1, v0, v2, v3}, LsY;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 144
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :pswitch_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->onClick(Landroid/view/View;)V

    .line 136
    :goto_0
    return-void

    .line 128
    :pswitch_1
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->z()V

    goto :goto_0

    .line 131
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->l(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7f0b01cf
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final s()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->m()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->o:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->j(I)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->f()V

    goto :goto_0

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/UcpChooseKeyPanel;->y()V

    goto :goto_0
.end method
