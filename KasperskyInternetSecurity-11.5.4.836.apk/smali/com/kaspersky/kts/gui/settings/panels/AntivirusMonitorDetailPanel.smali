.class public Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;
.super Lfj;
.source "SourceFile"


# instance fields
.field private h:Ljava/util/Vector;

.field private i:I

.field private j:I

.field private k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->i:I

    return p1
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Lcom/kms/kmsshared/KMSApplication;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->f:Lcom/kms/kmsshared/KMSApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->j:I

    return p1
.end method

.method private b()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v3

    .line 85
    const-class v4, Lsl;

    monitor-enter v4

    .line 86
    :try_start_0
    invoke-virtual {v3}, Lsl;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->i:I

    .line 89
    invoke-virtual {v3}, Lsl;->b()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->j:I

    .line 90
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0003

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->k:[Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->l:[Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h:Ljava/util/Vector;

    .line 98
    new-instance v4, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$1;

    invoke-direct {v4, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)V

    .line 106
    invoke-virtual {v3}, Lsl;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 108
    :goto_1
    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h:Ljava/util/Vector;

    new-instance v1, LfE;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    const v5, 0x7f0700d8

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0700d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5, v8, v2}, LfE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0703d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_2
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h:Ljava/util/Vector;

    new-instance v3, LfC;

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0700da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    const v7, 0x7f0700db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v2, v4}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$2;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$2;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)V

    .line 136
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h:Ljava/util/Vector;

    new-instance v4, LfC;

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    const v6, 0x7f0700dc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v2, v1}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 146
    return-object v0

    :cond_0
    move v0, v2

    .line 86
    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0700dd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Lcom/kms/kmsshared/KMSApplication;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->f:Lcom/kms/kmsshared/KMSApplication;

    return-object v0
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    .line 153
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Landroid/view/View;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->n:Landroid/view/View;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 322
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 323
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->m:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->n:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->o:Landroid/view/View;

    .line 326
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->i:I

    return v0
.end method

.method static synthetic f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method private f()Landroid/view/View;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->o:Landroid/view/View;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 336
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 337
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->m:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->o:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->n:Landroid/view/View;

    .line 340
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->l:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->j:I

    return v0
.end method

.method static synthetic i(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 196
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 175
    :pswitch_0
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;

    invoke-direct {v0, p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;B)V

    .line 177
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700de

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0003

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->i:I

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0700df

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 185
    :pswitch_1
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;

    invoke-direct {v0, p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;B)V

    .line 187
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700e0

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0005

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->j:I

    invoke-virtual {v1, v2, v3, v0}, LoN;->a(IILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0700e1

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 64
    const/4 v0, 0x0

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 73
    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->k:[Ljava/lang/String;

    iget v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->i:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_1
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->l:[Ljava/lang/String;

    iget v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->j:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 297
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->f()Landroid/view/View;

    move-result-object v0

    .line 305
    :goto_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->k()V

    .line 307
    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    :cond_0
    invoke-super {p0, p1}, Lfj;->a(Z)V

    .line 314
    return-void

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->d()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected final e()Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->m:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 289
    const v0, 0x7f06002a

    return v0
.end method

.method protected final i(I)V
    .locals 1

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 160
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->d(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->d(I)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x2

    return v0
.end method
