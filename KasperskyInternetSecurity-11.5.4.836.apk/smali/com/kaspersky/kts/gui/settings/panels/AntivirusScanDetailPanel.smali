.class public Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;
.super Lfj;
.source "SourceFile"


# instance fields
.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 63
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->h:I

    .line 64
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->i:I

    .line 65
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->j:I

    .line 66
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k:I

    .line 67
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l:I

    .line 68
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->m:I

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->j:I

    return v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->h:I

    return p1
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;Lsf;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lsf;)V

    return-void
.end method

.method private static a(Lsf;)V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lsf;->g_()V

    .line 429
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->f()V

    .line 430
    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->h:I

    return v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->i:I

    return p1
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->j:I

    return p1
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->i:I

    return v0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k:I

    return p1
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l:I

    return p1
.end method

.method static synthetic e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->m:I

    return p1
.end method

.method static synthetic f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k:I

    return v0
.end method

.method static synthetic j(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l:I

    return v0
.end method

.method static synthetic l(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->m:I

    return v0
.end method

.method static synthetic m(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 317
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 259
    :pswitch_0
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;

    invoke-direct {v0, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V

    .line 261
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070226

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0004

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->h:I

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f070227

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_1
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;

    invoke-direct {v0, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$SelectCantCureDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V

    .line 273
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070228

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0006

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->i:I

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f070229

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_2
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;

    invoke-direct {v0, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectModeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V

    .line 285
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700ec

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0007

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->j:I

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0700ed

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :pswitch_3
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectDayListener;

    invoke-direct {v0, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectDayListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V

    .line 298
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700ee

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0009

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k:I

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0700ef

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :pswitch_4
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 311
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;

    invoke-direct {v2, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$DialogSelectTimeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l:I

    iget v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->m:I

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return-object p2

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->h:I

    aget-object v0, v0, v1

    .line 84
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->i:I

    aget-object v0, v0, v1

    .line 90
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->j:I

    aget-object v0, v0, v1

    .line 96
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k:I

    aget-object v0, v0, v1

    .line 102
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 107
    :pswitch_5
    const v0, 0xea60

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->m:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 108
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    .line 109
    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    sub-long/2addr v0, v2

    invoke-static {v4, v0, v1, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final d(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 365
    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(ILjava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0700f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(ILjava/lang/String;)V

    .line 370
    :cond_0
    invoke-super {p0, p1}, Lfj;->d(Z)V

    .line 371
    return-void
.end method

.method protected final e()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 126
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v7}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->h:I

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 129
    invoke-virtual {v1, v10}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->i:I

    .line 130
    invoke-virtual {v1, v11}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->j:I

    .line 131
    invoke-virtual {v1, v9}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 140
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 141
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 142
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 143
    add-int/lit8 v0, v0, -0x1

    .line 144
    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v0, v4

    const v4, 0xea60

    mul-int/2addr v0, v4

    int-to-long v4, v0

    .line 147
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 149
    const/4 v0, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 150
    invoke-virtual {v1}, Lsf;->g_()V

    .line 157
    :cond_0
    invoke-virtual {v1, v8}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 158
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 161
    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->k:I

    .line 162
    const-wide/32 v3, 0xea60

    div-long v3, v0, v3

    const-wide/16 v5, 0x3c

    rem-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->m:I

    .line 163
    const-wide/32 v3, 0x36ee80

    div-long/2addr v0, v3

    const-wide/16 v3, 0x18

    rem-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->l:I

    .line 165
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    .line 167
    new-instance v0, LfN;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LfN;-><init>(I)V

    .line 169
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v3, LfC;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0700f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0700f1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070345

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, LfN;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LfN;-><init>(I)V

    .line 184
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v3, LfB;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0700f2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0700f3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2, v0}, LfB;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfC;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0700f4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0700f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v11, v4}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v7, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0700e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, LfN;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LfN;-><init>(I)V

    .line 207
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfC;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0700e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0700e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v7, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$1;

    invoke-direct {v1, p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;LfJ;)V

    .line 223
    new-instance v2, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$2;

    invoke-direct {v2, p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$2;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;LfJ;)V

    .line 231
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v3, LfC;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0700e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0700e9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v9, v5}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7, v1}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f0700ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0700eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v7, v2}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 249
    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 517
    const v0, 0x7f060035

    return v0
.end method

.method protected final i(I)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 360
    :goto_0
    :pswitch_0
    return-void

    .line 327
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(I)V

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(I)Z

    move-result v0

    .line 333
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    .line 334
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 335
    invoke-virtual {v1}, Lsf;->g_()V

    .line 336
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->g(Z)V

    goto :goto_0

    .line 341
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(I)V

    goto :goto_0

    .line 346
    :pswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(I)V

    goto :goto_0

    .line 351
    :pswitch_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(I)V

    goto :goto_0

    .line 356
    :pswitch_6
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->d(I)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x3

    return v0
.end method
