.class public Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;
.super Lfj;
.source "SourceFile"


# static fields
.field private static final h:[I


# instance fields
.field private i:I

.field private j:[Z

.field private k:Lsm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x5
        0xa
        0xf
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->i:I

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    .line 53
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->i:I

    return v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->i:I

    return p1
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;[Z)[Z
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    return-object p1
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Lsm;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    return-object v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->h:[I

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 121
    const/16 v1, 0x15

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(IZ)V

    .line 123
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(IZ)V

    .line 125
    :cond_0
    invoke-interface {v0}, LaC;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0, v2, v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(IZ)V

    .line 128
    :cond_1
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v2}, Lsm;->e()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 132
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v3}, Lsm;->f()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 133
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v3}, Lsm;->g()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 134
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v3}, Lsm;->h()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 135
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v3}, Lsm;->i()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 137
    :goto_0
    sget-object v1, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->h:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v1}, Lsm;->c()J

    move-result-wide v1

    long-to-int v1, v1

    sget-object v2, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->h:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 139
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->i:I

    .line 143
    :cond_0
    return-void

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;)[Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 147
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;

    invoke-direct {v1, p0, v2}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$SelectAutoHideTimeDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;B)V

    .line 152
    new-instance v2, LoN;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, LoN;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070109

    invoke-virtual {v2, v3}, LoN;->a(I)LoN;

    move-result-object v2

    const v3, 0x7f0a0001

    iget v4, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->i:I

    invoke-virtual {v2, v3, v4, v1}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f07010a

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_1
    new-array v0, v3, [Z

    .line 161
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;

    invoke-direct {v1, p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$ItemsToHideDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;[Z)V

    .line 163
    new-instance v2, LoN;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, LoN;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070106

    invoke-virtual {v2, v3}, LoN;->a(I)LoN;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3, v0, v1}, LoN;->a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)LoN;

    move-result-object v0

    const v2, 0x7f070108

    invoke-virtual {v0, v2, v1}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v2, 0x7f070107

    invoke-virtual {v0, v2, v1}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0a000a

    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x0

    .line 60
    packed-switch p1, :pswitch_data_0

    move-object v0, p2

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :goto_1
    :pswitch_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->j:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 64
    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 71
    :cond_3
    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f070105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_1
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->i:I

    if-eqz v0, :cond_4

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->h:[I

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->i:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f070101

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Lfj;->b(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k()V

    .line 197
    return-void
.end method

.method protected final e()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 93
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d()V

    .line 95
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$PrivacyModeAvailablilityChecker;

    invoke-direct {v0, p0, v4}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel$PrivacyModeAvailablilityChecker;-><init>(Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;B)V

    .line 96
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d:Ljava/util/Vector;

    .line 97
    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f070104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v6}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    .line 99
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, LfC;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0700ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f070100

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;LfJ;)V

    .line 103
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v1}, Lsm;->d()Z

    move-result v1

    .line 106
    new-instance v2, LfB;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070102

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f070103

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    .line 109
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 113
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c()V

    .line 115
    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f060074

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i(I)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->b(I)Z

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 184
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v1}, Lsm;->g_()V

    .line 185
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->p(Z)V

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->d(I)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0x1e

    return v0
.end method

.method protected final t()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/PrivacyProtectionSettingsDetailPanel;->k:Lsm;

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
