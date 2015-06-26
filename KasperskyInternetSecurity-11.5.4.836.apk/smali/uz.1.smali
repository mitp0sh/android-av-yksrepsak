.class public final Luz;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lnz;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;


# instance fields
.field private final c:Lkp;

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

.field private final k:LuK;

.field private final l:LuM;

.field private final m:Lcom/kms/menu/KisMenuButton;

.field private final n:LuJ;

.field private final o:LuI;

.field private final p:Lcom/kms/menu/KisMenuButton;

.field private final q:Lcom/kms/menu/KisMenuButton;

.field private final r:Lcom/kms/menu/KisMenuButton;

.field private final s:Lcom/kms/menu/KisMenuButton;

.field private final t:Luw;

.field private final u:Ljava/util/Collection;

.field private final v:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const-class v0, Luz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luz;->a:Ljava/lang/String;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lmi;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmg;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Luz;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 104
    new-instance v0, Lkp;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, Lkp;-><init>(Lrx;)V

    iput-object v0, p0, Luz;->c:Lkp;

    .line 109
    iput-boolean v2, p0, Luz;->d:Z

    .line 114
    iput-boolean v2, p0, Luz;->e:Z

    .line 137
    new-instance v0, LuK;

    invoke-direct {v0, p0}, LuK;-><init>(Luz;)V

    iput-object v0, p0, Luz;->k:LuK;

    .line 138
    new-instance v0, LuM;

    invoke-direct {v0, p0}, LuM;-><init>(Luz;)V

    iput-object v0, p0, Luz;->l:LuM;

    .line 139
    new-instance v0, LuH;

    invoke-direct {v0, p0}, LuH;-><init>(Luz;)V

    iput-object v0, p0, Luz;->m:Lcom/kms/menu/KisMenuButton;

    .line 140
    new-instance v0, LuJ;

    invoke-direct {v0, p0}, LuJ;-><init>(Luz;)V

    iput-object v0, p0, Luz;->n:LuJ;

    .line 141
    new-instance v0, LuI;

    invoke-direct {v0, p0}, LuI;-><init>(Luz;)V

    iput-object v0, p0, Luz;->o:LuI;

    .line 142
    new-instance v0, Luv;

    invoke-direct {v0, p0}, Luv;-><init>(Luz;)V

    iput-object v0, p0, Luz;->p:Lcom/kms/menu/KisMenuButton;

    .line 143
    new-instance v0, Luu;

    invoke-direct {v0, p0}, Luu;-><init>(Luz;)V

    iput-object v0, p0, Luz;->q:Lcom/kms/menu/KisMenuButton;

    .line 144
    new-instance v0, LuL;

    invoke-direct {v0, p0}, LuL;-><init>(Luz;)V

    iput-object v0, p0, Luz;->r:Lcom/kms/menu/KisMenuButton;

    .line 145
    new-instance v0, Lux;

    invoke-direct {v0, p0}, Lux;-><init>(Luz;)V

    iput-object v0, p0, Luz;->s:Lcom/kms/menu/KisMenuButton;

    .line 148
    new-instance v0, Luw;

    invoke-direct {v0, p0}, Luw;-><init>(Luz;)V

    iput-object v0, p0, Luz;->t:Luw;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Luz;->u:Ljava/util/Collection;

    .line 154
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->k:LuK;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->l:LuM;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->m:Lcom/kms/menu/KisMenuButton;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->n:LuJ;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->o:LuI;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->p:Lcom/kms/menu/KisMenuButton;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->q:Lcom/kms/menu/KisMenuButton;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->r:Lcom/kms/menu/KisMenuButton;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    iget-object v1, p0, Luz;->s:Lcom/kms/menu/KisMenuButton;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luz;->v:Ljava/util/Map;

    .line 780
    return-void
.end method

.method static synthetic a(Luz;)Lcom/kaspersky/components/views/sidebar/SideBarLayout;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Luz;->e()Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(IFLandroid/view/View;)V
    .locals 3

    .prologue
    .line 369
    const v0, 0x7f0b00db

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 371
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, LbI;->b(Landroid/app/Activity;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 372
    div-int/lit8 v1, p1, 0x2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 373
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;IILandroid/view/ViewGroup;Lcom/kms/menu/KisMenuButton;)V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Lcom/kms/menu/KisMenuButton;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 334
    iget-object v1, p0, Luz;->v:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 18

    .prologue
    .line 251
    invoke-virtual/range {p0 .. p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, LbI;->a(Landroid/app/Activity;)Lcom/kaspersky/components/views/ScreenOrientation;

    move-result-object v16

    .line 254
    invoke-static {}, Lkh;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kaspersky/components/views/ScreenOrientation;->Landscape:Lcom/kaspersky/components/views/ScreenOrientation;

    move-object/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 255
    invoke-virtual/range {p0 .. p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x3e3851ec    # 0.18f

    invoke-static {v1, v2}, LbI;->c(Landroid/app/Activity;F)I

    move-result v3

    .line 259
    :goto_0
    invoke-direct/range {p0 .. p0}, Luz;->d()I

    move-result v4

    .line 262
    invoke-virtual/range {v16 .. v16}, Lcom/kaspersky/components/views/ScreenOrientation;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    const/4 v1, 0x2

    move v13, v1

    .line 268
    :goto_1
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v1

    invoke-interface {v1}, LkM;->b()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move v15, v1

    .line 269
    :goto_2
    const/4 v1, 0x2

    .line 271
    if-eqz v15, :cond_a

    .line 272
    invoke-virtual/range {v16 .. v16}, Lcom/kaspersky/components/views/ScreenOrientation;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    const/4 v1, 0x6

    move v14, v1

    .line 281
    :goto_3
    const v1, 0x7f0b00d9

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Luz;->a(Landroid/view/ViewGroup;)V

    .line 285
    const/4 v1, 0x0

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Luz;->u:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kms/menu/KisMenuButton;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Luz;->m:Lcom/kms/menu/KisMenuButton;

    if-eq v6, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Luz;->n:LuJ;

    if-eq v6, v2, :cond_1

    .line 291
    invoke-virtual {v6}, Lcom/kms/menu/KisMenuButton;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    add-int/lit8 v7, v1, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 293
    invoke-direct/range {v1 .. v6}, Luz;->a(Landroid/view/LayoutInflater;IILandroid/view/ViewGroup;Lcom/kms/menu/KisMenuButton;)V

    .line 295
    if-ne v7, v13, :cond_9

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Luz;->m:Lcom/kms/menu/KisMenuButton;

    invoke-virtual {v1}, Lcom/kms/menu/KisMenuButton;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 297
    add-int/lit8 v1, v7, 0x1

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Luz;->m:Lcom/kms/menu/KisMenuButton;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Luz;->a(Landroid/view/LayoutInflater;IILandroid/view/ViewGroup;Lcom/kms/menu/KisMenuButton;)V

    .line 301
    :goto_5
    if-ne v1, v14, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Luz;->n:LuJ;

    invoke-virtual {v2}, LuJ;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Luz;->n:LuJ;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Luz;->a(Landroid/view/LayoutInflater;IILandroid/view/ViewGroup;Lcom/kms/menu/KisMenuButton;)V

    .line 309
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Luz;->k:LuK;

    if-eq v6, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Luz;->l:LuM;

    if-eq v6, v2, :cond_0

    .line 310
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/kms/menu/KisMenuButton;->b(Z)V

    goto :goto_4

    .line 257
    :cond_2
    invoke-virtual/range {p0 .. p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, LbI;->d(Landroid/app/Activity;F)I

    move-result v3

    goto/16 :goto_0

    .line 265
    :cond_3
    const/4 v1, 0x4

    move v13, v1

    goto/16 :goto_1

    .line 268
    :cond_4
    const/4 v1, 0x0

    move v15, v1

    goto/16 :goto_2

    .line 277
    :cond_5
    const/4 v1, 0x5

    move v14, v1

    goto/16 :goto_3

    .line 315
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/kaspersky/components/views/ScreenOrientation;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 316
    const/4 v2, 0x3

    invoke-static {v1, v2}, Luz;->b(II)I

    move-result v1

    .line 320
    :goto_6
    if-lez v1, :cond_7

    .line 321
    mul-int/2addr v3, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Luz;->t:Luw;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Luz;->a(Landroid/view/LayoutInflater;IILandroid/view/ViewGroup;Lcom/kms/menu/KisMenuButton;)V

    .line 324
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Luz;->n:LuJ;

    invoke-virtual {v1, v15}, LuJ;->c(Z)V

    .line 325
    return-void

    .line 318
    :cond_8
    const/4 v2, 0x5

    invoke-static {v1, v2}, Luz;->b(II)I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v7

    goto :goto_5

    :cond_a
    move v14, v1

    goto/16 :goto_3
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Luz;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 329
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 330
    return-void
.end method

.method private a(Lmn;)V
    .locals 2

    .prologue
    .line 596
    sget-object v0, LuC;->c:[I

    invoke-virtual {p1}, Lmn;->e()Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 607
    :goto_0
    :pswitch_0
    return-void

    .line 598
    :pswitch_1
    invoke-direct {p0}, Luz;->h()V

    goto :goto_0

    .line 604
    :pswitch_2
    invoke-direct {p0}, Luz;->i()V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lmo;)V
    .locals 2

    .prologue
    .line 582
    sget-object v0, LuC;->b:[I

    invoke-virtual {p1}, Lmo;->c()Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 584
    :pswitch_0
    invoke-virtual {p1}, Lmo;->e()Lcom/kms/antivirus/AntivirusUpdateReason;

    move-result-object v0

    .line 585
    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateReason;->OnDemand:Lcom/kms/antivirus/AntivirusUpdateReason;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateReason;->Scheduled:Lcom/kms/antivirus/AntivirusUpdateReason;

    if-ne v0, v1, :cond_0

    .line 586
    :cond_1
    invoke-direct {p0}, Luz;->j()V

    goto :goto_0

    .line 590
    :pswitch_1
    invoke-direct {p0}, Luz;->k()V

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(LpA;)V
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lmj;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, LpA;->a(Ljava/lang/String;)Lps;

    move-result-object v0

    check-cast v0, Lmj;

    .line 516
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmj;->a()Lmn;

    move-result-object v0

    invoke-virtual {v0}, Lmn;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Luz;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luz;->c(I)V

    return-void
.end method

.method static synthetic a(Luz;Lmn;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luz;->a(Lmn;)V

    return-void
.end method

.method static synthetic a(Luz;Lmo;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luz;->a(Lmo;)V

    return-void
.end method

.method static synthetic a(Luz;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luz;->c(Z)V

    return-void
.end method

.method private static b(II)I
    .locals 2

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 358
    rem-int v1, p0, p1

    .line 359
    if-eqz v1, :cond_0

    .line 360
    sub-int v0, p1, v1

    .line 363
    :cond_0
    return v0
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 508
    const v0, 0x7f07003f

    const v1, 0x7f070040

    const v2, 0x7f070041

    invoke-static {p1, v0, v1, v2}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result v0

    .line 510
    iget-object v1, p0, Luz;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Luz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    return-void
.end method

.method static synthetic b(Luz;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Luz;->g()V

    return-void
.end method

.method static synthetic b(Luz;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luz;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 525
    iget-object v0, p0, Luz;->h:Landroid/view/View;

    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/KisTheme;->getMenuBubbleOpenedBackgroundResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 527
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Luz;->getView()Landroid/view/View;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 245
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 246
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Luz;->a(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 248
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 530
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 531
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 532
    iget-object v1, p0, Luz;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 533
    iget-object v1, p0, Luz;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 534
    return-void
.end method

.method static synthetic c(Luz;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Luz;->c()V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 537
    invoke-virtual {p0}, Luz;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    return-void

    .line 540
    :cond_1
    if-eqz p1, :cond_2

    .line 541
    iget-object v0, p0, Luz;->h:Landroid/view/View;

    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/KisTheme;->getMenuBubbleOpenedBackgroundResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 542
    iget-object v0, p0, Luz;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Luz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Luz;->c(I)V

    .line 552
    :goto_0
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/menu/KisMenuButton;

    .line 553
    invoke-virtual {v0}, Lcom/kms/menu/KisMenuButton;->d()V

    goto :goto_1

    .line 545
    :cond_2
    iget-object v0, p0, Luz;->h:Landroid/view/View;

    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/KisTheme;->getMenuBubbleClosedBackgroundResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 546
    iget-object v0, p0, Luz;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Luz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Luz;->c(I)V

    goto :goto_0
.end method

.method private d()I
    .locals 3

    .prologue
    .line 341
    invoke-static {}, Lkh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x3df5c290    # 0.120000005f

    invoke-static {v0, v1}, LbI;->b(Landroid/app/Activity;F)I

    move-result v0

    .line 348
    :goto_0
    iget-object v1, p0, Luz;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 344
    :cond_0
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v0, v1}, LbI;->b(Landroid/app/Activity;F)I

    move-result v0

    goto :goto_0

    .line 352
    :cond_1
    return v1
.end method

.method private e()Lcom/kaspersky/components/views/sidebar/SideBarLayout;
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    .line 423
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Luz;->j:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Luz;->c(Z)V

    .line 429
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 455
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    .line 457
    invoke-interface {v0}, LpA;->b()I

    move-result v1

    .line 458
    invoke-interface {v0}, LpA;->c()Lps;

    move-result-object v2

    .line 460
    packed-switch v1, :pswitch_data_0

    .line 478
    invoke-direct {p0, v1}, Luz;->b(I)V

    .line 482
    :goto_0
    iget-boolean v0, p0, Luz;->d:Z

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kms/KisTheme;->getShieldLabelColorWarning(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    :goto_1
    iget-boolean v0, p0, Luz;->d:Z

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Luz;->k:LuK;

    invoke-virtual {v0}, LuK;->i()V

    .line 505
    :cond_0
    return-void

    .line 462
    :pswitch_0
    invoke-direct {p0, v0}, Luz;->a(LpA;)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-boolean v1, p0, Luz;->d:Z

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 466
    invoke-interface {v2}, Lps;->q()Ljava/lang/String;

    move-result-object v0

    .line 467
    sget-object v1, Luz;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    invoke-interface {v2}, Lps;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Luz;->b(I)V

    goto :goto_0

    .line 474
    :cond_2
    invoke-direct {p0, v0}, Luz;->a(LpA;)V

    goto :goto_0

    .line 484
    :cond_3
    if-eqz v2, :cond_4

    .line 485
    sget-object v0, LuC;->a:[I

    invoke-interface {v2}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/issues/IssueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 496
    sget-object v0, Luz;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No color specified for issue type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 487
    :pswitch_2
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kms/KisTheme;->getShieldLabelColorInfo(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 490
    :pswitch_3
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kms/KisTheme;->getShieldLabelColorWarning(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 493
    :pswitch_4
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kms/KisTheme;->getShieldLabelColorError(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 499
    :cond_4
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kms/KisTheme;->getShieldLabelColorInfo(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 485
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private h()V
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Luz;->d:Z

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Luz;->d:Z

    .line 560
    iget-object v0, p0, Luz;->k:LuK;

    invoke-virtual {v0}, LuK;->g()V

    .line 562
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Luz;->d:Z

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Luz;->d:Z

    .line 567
    iget-object v0, p0, Luz;->k:LuK;

    invoke-virtual {v0}, LuK;->h()V

    .line 569
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Luz;->e:Z

    .line 573
    iget-object v0, p0, Luz;->l:LuM;

    invoke-virtual {v0}, LuM;->g()V

    .line 574
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Luz;->e:Z

    .line 578
    iget-object v0, p0, Luz;->l:LuM;

    invoke-virtual {v0}, LuM;->h()V

    .line 579
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Luz;->u:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/menu/KisMenuButton;

    .line 624
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kms/menu/KisMenuButton;->a(Z)V

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method private static m()V
    .locals 2

    .prologue
    .line 701
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->AntiSpamButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 702
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenCallAndTextFilterDialog:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 703
    return-void
.end method

.method private static n()V
    .locals 2

    .prologue
    .line 706
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->PrivacyProtectionButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 707
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenPrivacyProtectionDialog:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 708
    return-void
.end method


# virtual methods
.method public final a(Lcom/kms/menu/KisMenuButton;)Landroid/view/View;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Luz;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 674
    :goto_0
    if-nez p1, :cond_3

    .line 675
    if-eqz v0, :cond_2

    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    invoke-virtual {v0}, Lsj;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p0}, Luz;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lnv;->a(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;)V

    .line 687
    :cond_0
    :goto_1
    return-void

    .line 672
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 678
    :cond_2
    invoke-static {}, Luz;->m()V

    goto :goto_1

    .line 680
    :cond_3
    if-ne p1, v1, :cond_0

    .line 681
    if-eqz v0, :cond_4

    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    invoke-virtual {v0}, Lsj;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    invoke-virtual {p0}, Luz;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lnv;->a(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 684
    :cond_4
    invoke-static {}, Luz;->n()V

    goto :goto_1
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 691
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 692
    if-nez p1, :cond_1

    .line 693
    invoke-static {}, Luz;->m()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 695
    invoke-static {}, Luz;->n()V

    goto :goto_0
.end method

.method final a(Lcom/kms/menu/KisMenuButton;I)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 635
    iget-object v0, p0, Luz;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 637
    if-eqz v0, :cond_0

    .line 638
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 640
    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 641
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 643
    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 644
    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    .line 645
    invoke-virtual {p0}, Luz;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 648
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 649
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 650
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 652
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 654
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 629
    if-eqz p1, :cond_0

    .line 630
    invoke-direct {p0}, Luz;->l()V

    .line 632
    :cond_0
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Luz;->d:Z

    return v0
.end method

.method final b(Lcom/kms/menu/KisMenuButton;)V
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Luz;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 658
    if-eqz v0, :cond_0

    .line 660
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 662
    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 663
    invoke-virtual {p1}, Lcom/kms/menu/KisMenuButton;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 665
    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 666
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kms/menu/KisMenuButton;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 669
    :cond_0
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Luz;->e:Z

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    iget-object v0, p0, Luz;->c:Lkp;

    const-class v1, Lme;

    new-instance v2, LuD;

    invoke-direct {v2, p0, v3}, LuD;-><init>(Luz;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 183
    iget-object v0, p0, Luz;->c:Lkp;

    const-class v1, Lpu;

    new-instance v2, LuE;

    invoke-direct {v2, p0, v3}, LuE;-><init>(Luz;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 184
    iget-object v0, p0, Luz;->c:Lkp;

    const-class v1, LsZ;

    new-instance v2, LuF;

    invoke-direct {v2, p0, v3}, LuF;-><init>(Luz;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 186
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 194
    const v0, 0x7f030046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, LbI;->a(Landroid/app/Activity;)Lcom/kaspersky/components/views/ScreenOrientation;

    move-result-object v1

    .line 198
    invoke-direct {p0, p1, v0}, Luz;->a(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 200
    const v2, 0x7f0b00d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 201
    const v3, 0x7f0b00dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 202
    const v4, 0x7f0b00dc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 203
    invoke-virtual {v1}, Lcom/kaspersky/components/views/ScreenOrientation;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    invoke-static {}, Lkh;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x3e23d70a    # 0.16f

    invoke-static {v6, v7}, LbI;->b(Landroid/app/Activity;F)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 218
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/16 v5, 0xe

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v3, v3, 0xe

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    invoke-direct {p0}, Luz;->d()I

    move-result v2

    .line 222
    invoke-static {}, Lkh;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const v3, 0x3cf5c28f    # 0.03f

    invoke-direct {p0, v2, v3, v0}, Luz;->a(IFLandroid/view/View;)V

    .line 228
    :goto_1
    invoke-direct {p0}, Luz;->e()Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    move-result-object v2

    .line 229
    invoke-virtual {v1}, Lcom/kaspersky/components/views/ScreenOrientation;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x3e8f5c29    # 0.28f

    invoke-static {v1, v3}, LbI;->b(Landroid/app/Activity;F)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->setSlidingViewLedge(I)V

    .line 239
    :goto_2
    return-object v0

    .line 207
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x3e051eb8    # 0.13f

    invoke-static {v6, v7}, LbI;->b(Landroid/app/Activity;F)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {}, Lkh;->a()Z

    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v6, v7}, LbI;->b(Landroid/app/Activity;F)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 225
    :cond_2
    const v3, 0x3d23d70a    # 0.04f

    invoke-direct {p0, v2, v3, v0}, Luz;->a(IFLandroid/view/View;)V

    goto :goto_1

    .line 232
    :cond_3
    invoke-static {}, Lkh;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x3e6147ae    # 0.22f

    invoke-static {v1, v3}, LbI;->b(Landroid/app/Activity;F)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->setSlidingViewLedge(I)V

    goto :goto_2

    .line 235
    :cond_4
    invoke-virtual {p0}, Luz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v1, v3}, LbI;->b(Landroid/app/Activity;F)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->setSlidingViewLedge(I)V

    goto :goto_2
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Luz;->c:Lkp;

    invoke-virtual {v0}, Lkp;->a()V

    .line 414
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 415
    return-void
.end method

.method public final onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 436
    invoke-direct {p0}, Luz;->c()V

    .line 439
    iput-boolean v0, p0, Luz;->d:Z

    .line 440
    iput-boolean v0, p0, Luz;->e:Z

    .line 443
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->a()Lmn;

    move-result-object v0

    invoke-direct {p0, v0}, Luz;->a(Lmn;)V

    .line 444
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v2

    invoke-interface {v2}, Lmk;->b()Lmo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 451
    invoke-direct {p0}, Luz;->g()V

    .line 452
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 379
    const v0, 0x7f0b00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 380
    new-instance v1, LuA;

    invoke-direct {v1, p0}, LuA;-><init>(Luz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Luz;->f:Landroid/widget/TextView;

    .line 391
    iget-object v0, p0, Luz;->f:Landroid/widget/TextView;

    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Medium"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 393
    const v0, 0x7f0b00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Luz;->g:Landroid/widget/ImageView;

    .line 394
    const v0, 0x7f0b00d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Luz;->h:Landroid/view/View;

    .line 396
    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Luz;->i:Landroid/view/View;

    .line 397
    new-instance v1, LuB;

    invoke-direct {v1, p0}, LuB;-><init>(Luz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-direct {p0}, Luz;->e()Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    move-result-object v0

    iput-object v0, p0, Luz;->j:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    .line 406
    iget-object v0, p0, Luz;->j:Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    new-instance v1, LuG;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LuG;-><init>(Luz;B)V

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->setOnSlideListener(LbY;)V

    .line 408
    invoke-direct {p0}, Luz;->f()V

    .line 409
    return-void
.end method
