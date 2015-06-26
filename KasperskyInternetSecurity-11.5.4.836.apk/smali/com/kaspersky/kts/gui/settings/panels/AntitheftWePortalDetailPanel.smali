.class public Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;
.super Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private h:Ljava/lang/String;

.field private i:LfL;

.field private j:Lfv;

.field private k:LfG;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 68
    new-instance v0, LfL;

    invoke-direct {v0}, LfL;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    .line 69
    new-instance v0, Lfv;

    invoke-direct {v0}, Lfv;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->j:Lfv;

    .line 70
    return-void
.end method

.method private A()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->c:Landroid/content/Context;

    const v1, 0x7f0702fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f070303

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Date;I)Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f070302

    const-wide v5, 0x40ed4c0000000000L    # 60000.0

    .line 211
    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 215
    int-to-double v1, p2

    mul-double/2addr v1, v5

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    add-double/2addr v1, v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    sub-double v0, v1, v3

    div-double/2addr v0, v5

    double-to-int v0, v0

    .line 217
    if-gez v0, :cond_1

    .line 219
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f070304

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static y()Z
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v4

    .line 137
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 138
    invoke-virtual {v4}, Lse;->d()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 141
    invoke-virtual {v4}, Lse;->c()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 143
    :goto_0
    const/16 v1, 0xf

    invoke-virtual {v4, v1}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 145
    sget-object v5, Lse;->a:Ljava/util/Date;

    invoke-virtual {v5, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v3

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v5}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 152
    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->k:LfG;

    if-eqz v6, :cond_1

    .line 153
    invoke-virtual {v4}, Lse;->j()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 154
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 155
    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->k:LfG;

    invoke-virtual {v6}, LfG;->b()V

    .line 165
    :cond_1
    :goto_1
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->y()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    invoke-static {v5, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->a(Landroid/content/Context;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v5, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    invoke-virtual {v6, v1}, LfL;->a(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    invoke-virtual {v1, v0}, LfL;->b(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    invoke-virtual {v0, v3}, LfL;->c(Ljava/lang/String;)V

    .line 179
    :goto_2
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->g:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 180
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    const v1, 0x7f070300

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LfL;->d(Ljava/lang/String;)V

    .line 184
    :goto_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    invoke-virtual {v0}, LfL;->a()V

    .line 188
    :cond_2
    invoke-virtual {v4}, Lse;->v()Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    const v0, 0x7f070306

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->j:Lfv;

    invoke-virtual {v0, v2}, Lfv;->a(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->j:Lfv;

    invoke-virtual {v0, v3}, Lfv;->b(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->j:Lfv;

    invoke-virtual {v0}, Lfv;->a()V

    .line 196
    return-void

    .line 158
    :cond_4
    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->k:LfG;

    const v7, 0x7f070472

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0706c5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p0}, LfG;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    const v1, 0x7f070301

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LfL;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    invoke-virtual {v0, v3}, LfL;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->z()V

    .line 268
    :cond_0
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->a(Z)V

    .line 269
    return-void
.end method

.method protected final c()Landroid/view/View;
    .locals 9

    .prologue
    .line 93
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->d:Ljava/util/Vector;

    .line 94
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 96
    new-instance v0, LfG;

    const v1, 0x7f02016c

    const v2, 0x7f0702fb

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->A()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0702fd

    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020031

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, LfG;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->k:LfG;

    .line 103
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->k:LfG;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    const v2, 0x7f0702fe

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->i:LfL;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->d:Ljava/util/Vector;

    new-instance v1, LfA;

    const v2, 0x7f070305

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LfA;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->j:Lfv;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 122
    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->z()V

    .line 261
    invoke-super {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->g()V

    .line 262
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f06005d

    return v0
.end method

.method protected final i(I)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x6

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 248
    invoke-super {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;->onClick(Landroid/view/View;)V

    .line 251
    :goto_0
    return-void

    .line 237
    :sswitch_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->h:Ljava/lang/String;

    .line 241
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->j(Z)V

    .line 242
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 240
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->h:Ljava/lang/String;

    goto :goto_1

    .line 245
    :sswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftWePortalDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0124 -> :sswitch_0
        0x7f0b012d -> :sswitch_0
        0x7f0b0163 -> :sswitch_1
    .end sparse-switch
.end method
