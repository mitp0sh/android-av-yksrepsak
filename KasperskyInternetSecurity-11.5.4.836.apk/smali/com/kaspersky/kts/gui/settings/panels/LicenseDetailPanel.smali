.class public Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;
.super Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;
.source "SourceFile"

# interfaces
.implements LnZ;


# static fields
.field public static i:I


# instance fields
.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/kms/gui/controls/licensing/LicenseInfoControl;

.field private m:Lcom/kms/gui/controls/Warning;

.field private n:Lcom/kms/gui/controls/Warning;

.field private o:Lcom/kms/gui/controls/ProgressButton;

.field private p:I

.field private q:Lky;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    .line 77
    return-void
.end method

.method private static A()Z
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    .line 212
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v3, 0x7f0b01a9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v4, 0x7f0b01aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 215
    new-array v4, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    aput-object v5, v4, v1

    invoke-static {v4}, Lfb;->b([Landroid/view/View;)V

    .line 216
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->j:Landroid/view/View;

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    aput-object v3, v4, v7

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->n:Lcom/kms/gui/controls/Warning;

    aput-object v6, v4, v5

    invoke-static {v4}, Lfb;->a([Landroid/view/View;)V

    .line 218
    iget v4, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    packed-switch v4, :pswitch_data_0

    .line 255
    :cond_0
    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    aput-object v3, v0, v1

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    move v0, v1

    .line 258
    :goto_0
    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    invoke-static {}, Lkr;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->k:Landroid/view/View;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->l(I)V

    .line 261
    return-void

    .line 220
    :pswitch_0
    new-array v3, v2, [Landroid/view/View;

    aput-object v0, v3, v1

    invoke-static {v3}, Lfb;->b([Landroid/view/View;)V

    .line 221
    invoke-static {}, Lkr;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->j:Landroid/view/View;

    aput-object v4, v3, v1

    invoke-static {v3}, Lfb;->b([Landroid/view/View;)V

    .line 226
    :cond_1
    :pswitch_1
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    const v4, 0x7f070130

    invoke-virtual {v3, v4}, Lcom/kms/gui/controls/ProgressButton;->setText(I)V

    .line 227
    new-array v3, v2, [Landroid/view/View;

    aput-object v0, v3, v1

    invoke-static {v3}, Lfb;->b([Landroid/view/View;)V

    move v0, v1

    .line 228
    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    const v4, 0x7f070133

    invoke-virtual {v0, v4}, Lcom/kms/gui/controls/ProgressButton;->setText(I)V

    .line 231
    new-array v0, v2, [Landroid/view/View;

    aput-object v3, v0, v1

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    move v0, v1

    .line 232
    goto :goto_0

    .line 234
    :pswitch_3
    const v0, 0x7f070135

    .line 236
    :goto_3
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    const v4, 0x7f070131

    invoke-virtual {v3, v4}, Lcom/kms/gui/controls/ProgressButton;->setText(I)V

    goto :goto_0

    .line 239
    :pswitch_4
    new-array v0, v7, [Landroid/view/View;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->n:Lcom/kms/gui/controls/Warning;

    aput-object v3, v0, v2

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 242
    :pswitch_5
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->n:Lcom/kms/gui/controls/Warning;

    aput-object v3, v0, v1

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    const v3, 0x7f07012a

    invoke-virtual {v0, v3}, Lcom/kms/gui/controls/ProgressButton;->setText(I)V

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :pswitch_6
    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->n:Lcom/kms/gui/controls/Warning;

    aput-object v3, v0, v1

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 251
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->f()V

    move v0, v1

    .line 252
    goto/16 :goto_0

    :cond_2
    move v2, v1

    .line 258
    goto/16 :goto_1

    .line 259
    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_2

    :pswitch_7
    move v0, v1

    goto :goto_3

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private C()V
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 308
    :pswitch_0
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->D()V

    goto :goto_0

    .line 311
    :pswitch_1
    invoke-static {}, Lkr;->g()V

    goto :goto_0

    .line 315
    :pswitch_2
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->E()V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private D()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0, v2}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->l(I)V

    .line 328
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/kms/gui/controls/ProgressButton;->setClickable(Z)V

    .line 330
    new-instance v0, Lur;

    invoke-direct {v0}, Lur;-><init>()V

    .line 331
    invoke-virtual {v0}, Lur;->a()V

    .line 332
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$ActivationCodeListenerImpl;-><init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;B)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lur;->a(Lut;J)V

    .line 336
    :goto_0
    return-void

    .line 324
    :cond_0
    const v0, 0x7f070136

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->l(I)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->f()V

    goto :goto_0
.end method

.method private E()V
    .locals 2

    .prologue
    .line 361
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    new-instance v1, LkA;

    invoke-direct {v1, p0}, LkA;-><init>(Lkz;)V

    invoke-interface {v0, v1}, LsY;->a(Landroid/os/Handler;)V

    .line 362
    return-void
.end method

.method private F()V
    .locals 1

    .prologue
    .line 365
    invoke-static {}, Lkr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->d(I)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v0, LkA;

    invoke-direct {v0, p0}, LkA;-><init>(Lkz;)V

    invoke-static {v0}, Lkr;->a(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private a(LaC;)V
    .locals 7

    .prologue
    const/4 v2, 0x6

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    sget v3, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->i:I

    if-eqz v3, :cond_0

    .line 174
    sget v0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->i:I

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    .line 175
    sput v1, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->i:I

    .line 208
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-interface {p1}, LaC;->c()I

    move-result v3

    .line 181
    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 182
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    goto :goto_0

    .line 183
    :cond_1
    if-ne v3, v5, :cond_2

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    goto :goto_0

    .line 185
    :cond_2
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v3

    invoke-interface {v3}, Lay;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    const/4 v0, 0x7

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    goto :goto_0

    .line 187
    :cond_3
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v3

    invoke-interface {v3}, Lay;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 191
    const-wide/16 v3, 0x0

    invoke-interface {p1}, LaC;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, LaC;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 197
    :goto_1
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v1

    invoke-interface {v1}, Ltg;->a()LsW;

    move-result-object v1

    invoke-interface {v1}, LsW;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 192
    goto :goto_1

    .line 198
    :cond_5
    const/4 v0, 0x5

    goto :goto_2

    .line 200
    :cond_6
    if-eqz v0, :cond_7

    :goto_3
    iput v2, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_3

    .line 203
    :cond_8
    invoke-interface {p1}, LaC;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    iput v5, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    goto :goto_0

    .line 206
    :cond_9
    iput v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->p:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;I)V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->j(I)V

    return-void
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)Lcom/kms/gui/controls/ProgressButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    return-object v0
.end method

.method private l(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 264
    if-nez p1, :cond_0

    .line 265
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->m:Lcom/kms/gui/controls/Warning;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->m:Lcom/kms/gui/controls/Warning;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->m:Lcom/kms/gui/controls/Warning;

    invoke-virtual {v0, p1}, Lcom/kms/gui/controls/Warning;->setMessage(I)V

    goto :goto_0
.end method

.method private static z()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v2

    invoke-virtual {v2}, Lsk;->v()I

    move-result v2

    .line 126
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v3

    invoke-virtual {v3}, Lsx;->d()Z

    move-result v3

    .line 128
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 130
    :pswitch_0
    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v2

    invoke-interface {v2}, Ltg;->a()LsW;

    move-result-object v2

    invoke-interface {v2}, LsW;->b()Z

    move-result v2

    .line 137
    if-nez v3, :cond_1

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->A()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 341
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 342
    new-instance v0, Lky;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lky;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->q:Lky;

    .line 343
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->q:Lky;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, v1}, Lky;->a(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->q:Lky;

    invoke-virtual {v0, p0}, Lky;->a(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->s()V

    .line 346
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->q:Lky;

    .line 348
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e()Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0704c0

    .line 86
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/ProgressButton;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    .line 89
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->o:Lcom/kms/gui/controls/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/ProgressButton;->setSizeChangeObserver(LnZ;)V

    .line 91
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->j:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->k:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->l:Lcom/kms/gui/controls/licensing/LicenseInfoControl;

    .line 102
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/Warning;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->m:Lcom/kms/gui/controls/Warning;

    .line 104
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/Warning;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->n:Lcom/kms/gui/controls/Warning;

    .line 105
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->n:Lcom/kms/gui/controls/Warning;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->e:Landroid/support/v4/app/Fragment;

    const v3, 0x7f0704c1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$1;

    invoke-direct {v3, p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kms/gui/controls/Warning;->setMessageWithClickablePart(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->n:Lcom/kms/gui/controls/Warning;

    invoke-virtual {v0, v3}, Lcom/kms/gui/controls/Warning;->setMessage(I)V

    goto :goto_0
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lqq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->d(I)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->j(I)V

    goto :goto_0
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->f_()V

    .line 375
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->e(I)V

    .line 376
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->s()V

    .line 377
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->s()V

    .line 169
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->g()V

    .line 170
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 381
    const/16 v0, 0x20

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 298
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->onClick(Landroid/view/View;)V

    .line 300
    :goto_0
    return-void

    .line 276
    :sswitch_0
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->C()V

    goto :goto_0

    .line 279
    :sswitch_1
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->F()V

    goto :goto_0

    .line 282
    :sswitch_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->d_()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, LkA;

    invoke-direct {v2, p0}, LkA;-><init>(Lkz;)V

    invoke-static {v0, v1, v2}, Lkq;->a(Landroid/content/Context;Landroid/app/Activity;LkA;)V

    goto :goto_0

    .line 285
    :sswitch_3
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->j(I)V

    goto :goto_0

    .line 288
    :sswitch_4
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->E()V

    goto :goto_0

    .line 291
    :sswitch_5
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->x()V

    .line 292
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->d_()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 295
    :sswitch_6
    invoke-static {}, Lkr;->g()V

    goto :goto_0

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0082 -> :sswitch_2
        0x7f0b0083 -> :sswitch_3
        0x7f0b018a -> :sswitch_6
        0x7f0b01a8 -> :sswitch_0
        0x7f0b01a9 -> :sswitch_5
        0x7f0b01aa -> :sswitch_4
        0x7f0b01ab -> :sswitch_1
    .end sparse-switch
.end method

.method protected final s()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->f:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->l:Lcom/kms/gui/controls/licensing/LicenseInfoControl;

    invoke-virtual {v1, v0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a(LaC;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->a(LaC;)V

    .line 163
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->B()V

    .line 164
    return-void
.end method

.method protected final v()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseActivationPanel;->v()V

    .line 387
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->s()V

    .line 390
    :cond_0
    return-void
.end method

.method public final y()V
    .locals 1

    .prologue
    .line 394
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/LicenseDetailPanel;->q:Lky;

    invoke-virtual {v0}, Lky;->a()V

    .line 397
    :cond_0
    return-void
.end method
