.class public Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;
.super Lfj;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private h:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 54
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->h:Z

    .line 59
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static A()I
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 270
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    return v0
.end method

.method private B()Ljava/lang/String;
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->A()I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->A()I

    move-result v0

    return v0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 230
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 231
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v2

    .line 232
    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lsy;->a(ILjava/lang/Object;)Lss;

    .line 233
    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Lsy;)V

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->l(I)V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;II)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method private static a(Lsy;)V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lsy;->g_()V

    .line 239
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->f()V

    .line 240
    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 72
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d:Ljava/util/Vector;

    .line 74
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->h:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f070330

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, LfN;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LfN;-><init>(I)V

    .line 82
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d:Ljava/util/Vector;

    new-instance v2, LfC;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070114

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->B()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6, v0}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, LfN;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LfN;-><init>(I)V

    .line 92
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$1;

    invoke-direct {v1, p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;LfJ;)V

    .line 100
    new-instance v2, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$2;

    invoke-direct {v2, p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$2;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;LfJ;)V

    .line 108
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d:Ljava/util/Vector;

    new-instance v3, LfC;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f070116

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->y()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6, v1}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfC;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    const v4, 0x7f070117

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v6, v2}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->k(I)V

    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    const v0, 0xea60

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->f()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 200
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    .line 201
    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-static {v4, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method private static d()I
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 213
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 215
    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()I
    .locals 4

    .prologue
    .line 222
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 225
    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k(I)V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 261
    const/4 v1, 0x2

    add-int/lit8 v2, p1, 0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsy;->a(ILjava/lang/Object;)Lss;

    .line 262
    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Lsy;)V

    .line 263
    return-void
.end method

.method private l(I)V
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 287
    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsy;->a(ILjava/lang/Object;)Lss;

    .line 288
    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Lsy;)V

    .line 289
    return-void
.end method

.method private y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->z()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static z()I
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 252
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 254
    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    .line 255
    return v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const v4, 0x7f070118

    const/4 v3, 0x0

    .line 129
    sparse-switch p1, :sswitch_data_0

    .line 167
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 133
    :sswitch_0
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;

    invoke-direct {v0, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectModeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;B)V

    .line 134
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070114

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->A()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 146
    :sswitch_1
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;

    invoke-direct {v0, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectDayListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;B)V

    .line 147
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070116

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->z()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 159
    :sswitch_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 160
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;

    invoke-direct {v2, p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel$DialogSelectTimeListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;B)V

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d()I

    move-result v3

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->f()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 165
    :sswitch_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LoK;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xbbd -> :sswitch_3
    .end sparse-switch
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 194
    :cond_0
    invoke-super {p0, p1}, Lfj;->d(Z)V

    .line 195
    return-void
.end method

.method protected final e()Landroid/view/View;
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b()V

    .line 66
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 68
    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 361
    const v0, 0x7f06003e

    return v0
.end method

.method protected final i(I)V
    .locals 1

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d(I)V

    goto :goto_0

    .line 179
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d(I)V

    goto :goto_0

    .line 182
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->d(I)V

    goto :goto_0

    .line 173
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
    .line 366
    const/4 v0, 0x4

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b012d

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;

    .line 351
    sget-object v1, Lcom/kms/kmsshared/DefaultActionHandler$Action;->ACTION_AV_UPDATE_BASES:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->a(Lcom/kms/kmsshared/DefaultActionHandler$Action;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-super {p0, p1}, Lfj;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final v()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 372
    :goto_0
    iget-boolean v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->h:Z

    if-eq v0, v1, :cond_0

    .line 373
    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->h:Z

    .line 374
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->b()V

    .line 375
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusUpdateDetailPanel;->a:Lfl;

    invoke-virtual {v0}, Lfl;->notifyDataSetChanged()V

    .line 377
    :cond_0
    return-void

    .line 371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
