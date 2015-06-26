.class public Lcom/kms/activation/gui/LicenseInfoActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method private a(LaC;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    const-string v1, "LicenseInfoActivity.shown_on_activation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 77
    const-string v2, "LicenseInfoActivity.license_blocked"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->g()V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    if-eqz v1, :cond_1

    .line 81
    invoke-direct {p0, p1}, Lcom/kms/activation/gui/LicenseInfoActivity;->d(LaC;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcom/kms/activation/gui/LicenseInfoActivity;->e(LaC;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 102
    const v0, 0x7f030002

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->a(II)V

    .line 104
    const-string v0, "LicenseInfoActivity.text"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 105
    const-string v0, "LicenseInfoActivity.icon"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 107
    if-eq v1, v3, :cond_0

    .line 109
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :cond_0
    if-eq v2, v3, :cond_1

    .line 115
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :cond_1
    return-void
.end method

.method private b(LaC;)V
    .locals 11

    .prologue
    const v10, 0x7f07035f

    const/16 v7, 0x8

    const v9, 0x7f070361

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-static {p1}, Lcom/kms/activation/gui/LicenseInfoActivity;->g(LaC;)I

    move-result v2

    .line 132
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v5

    .line 133
    invoke-interface {v5}, Lay;->d()Z

    move-result v6

    .line 135
    const-string v1, ""

    .line 136
    const-string v0, ""

    .line 138
    invoke-interface {v5}, Lay;->f()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v6, :cond_0

    .line 140
    const v1, 0x7f070363

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move-object v5, v0

    move-object v6, v1

    .line 202
    :goto_0
    const v0, 0x7f0b01d6

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    const v1, 0x7f0b01e3

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 210
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v0, 0x7f0b01e1

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    if-eqz v2, :cond_5

    .line 215
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v3

    .line 223
    :goto_1
    const v1, 0x7f0b01e0

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    if-eqz v4, :cond_6

    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    if-eqz v4, :cond_7

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    const v0, 0x7f0b01e2

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    return-void

    .line 144
    :cond_0
    invoke-interface {v5}, Lay;->b()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v2, v3

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    .line 147
    :pswitch_0
    const v1, 0x7f07036b

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move-object v5, v0

    move-object v6, v1

    .line 148
    goto :goto_0

    .line 150
    :pswitch_1
    if-eqz v6, :cond_1

    .line 152
    invoke-virtual {p0, v9}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    .line 156
    :cond_1
    const v0, 0x7f070362

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    const v0, 0x7f070364

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    move-object v5, v0

    move-object v6, v1

    .line 160
    goto :goto_0

    .line 162
    :pswitch_2
    if-eqz v6, :cond_2

    .line 164
    invoke-virtual {p0, v9}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    const v0, 0x7f070368

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    move-object v5, v0

    move-object v6, v1

    goto/16 :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0, v10}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    const v0, 0x7f070365

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    move-object v5, v0

    move-object v6, v1

    .line 174
    goto/16 :goto_0

    .line 176
    :pswitch_3
    if-eqz v6, :cond_3

    .line 178
    invoke-virtual {p0, v9}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    const v0, 0x7f070369

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    move-object v5, v0

    move-object v6, v1

    goto/16 :goto_0

    .line 184
    :cond_3
    invoke-virtual {p0, v10}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    const v0, 0x7f070366

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    move-object v5, v0

    move-object v6, v1

    .line 188
    goto/16 :goto_0

    .line 190
    :pswitch_4
    if-eqz v6, :cond_4

    .line 192
    invoke-virtual {p0, v9}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    const v0, 0x7f07036a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    move-object v5, v0

    move-object v6, v1

    goto/16 :goto_0

    .line 198
    :cond_4
    const v0, 0x7f070360

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    const v0, 0x7f070367

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    move-object v5, v0

    move-object v6, v1

    .line 200
    goto/16 :goto_0

    .line 217
    :cond_5
    invoke-static {v5}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 218
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    move v5, v7

    .line 224
    goto/16 :goto_2

    :cond_7
    move v1, v7

    .line 225
    goto/16 :goto_3

    :cond_8
    move v3, v7

    .line 227
    goto/16 :goto_4

    :cond_9
    move v4, v3

    goto/16 :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private c()V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    const-string v1, "licenseSuccessfullyInstalled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->a(Landroid/content/Intent;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->f()V

    goto :goto_0
.end method

.method private c(LaC;)V
    .locals 13

    .prologue
    .line 234
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->b()Ljava/lang/String;

    move-result-object v5

    .line 237
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 239
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 240
    invoke-interface {p1}, LaC;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 243
    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 245
    const/4 v3, 0x0

    .line 246
    invoke-interface {v0}, Lay;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 247
    invoke-interface {v0}, Lay;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 248
    const/4 v2, 0x1

    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 253
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    .line 278
    :goto_0
    invoke-static {p1}, Lcom/kms/activation/gui/LicenseInfoActivity;->f(LaC;)J

    move-result-wide v8

    .line 280
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_3

    .line 282
    const v0, 0x7f07035e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 290
    :goto_1
    const v0, 0x7f0b01d8

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 291
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v0, 0x7f0b01da

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 294
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v0, 0x7f0b0169

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 297
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    if-eqz v2, :cond_4

    .line 301
    const v0, 0x7f0b01dd

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 302
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const v0, 0x7f0b01df

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_2
    return-void

    .line 257
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-nez v0, :cond_1

    .line 259
    const v0, 0x7f07036d

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v1, v9, v11

    if-nez v1, :cond_2

    .line 268
    const v1, 0x7f07036e

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 264
    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 272
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 273
    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    goto/16 :goto_0

    .line 286
    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 287
    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1

    .line 309
    :cond_4
    const v0, 0x7f0b01dd

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    const v0, 0x7f0b01dc

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    const v0, 0x7f0b01df

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 316
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    const v0, 0x7f0b01de

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private d(LaC;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 324
    const v0, 0x7f03008f

    invoke-virtual {p0, v0, v6}, Lcom/kms/activation/gui/LicenseInfoActivity;->a(II)V

    .line 325
    const v0, 0x7f0b0188

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    invoke-static {p1}, Lcom/kms/activation/gui/LicenseInfoActivity;->g(LaC;)I

    move-result v1

    .line 327
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->e:LwL;

    const/high16 v3, 0x7f0f0000

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v1, v4}, LwL;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method

.method private e(LaC;)V
    .locals 14

    .prologue
    .line 332
    const v0, 0x7f030093

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->a(II)V

    .line 334
    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    const v1, 0x7f0b019a

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 336
    const v2, 0x7f0b019c

    invoke-virtual {p0, v2}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 337
    const v3, 0x7f0b019e

    invoke-virtual {p0, v3}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 338
    const v4, 0x7f0b01a0

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 339
    const v5, 0x7f0b01a2

    invoke-virtual {p0, v5}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 341
    invoke-interface {p1}, LaC;->b()Ljava/lang/String;

    move-result-object v6

    .line 342
    invoke-interface {p1}, LaC;->f()J

    move-result-wide v7

    .line 343
    invoke-static {p1}, Lcom/kms/activation/gui/LicenseInfoActivity;->f(LaC;)J

    move-result-wide v9

    .line 344
    invoke-static {p1}, Lcom/kms/activation/gui/LicenseInfoActivity;->g(LaC;)I

    move-result v11

    .line 345
    invoke-interface {p1}, LaC;->c()I

    move-result v12

    .line 347
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v13

    invoke-interface {v13}, Lay;->e()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 348
    invoke-static {v6}, Lra;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 349
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/View;

    const/4 v13, 0x0

    aput-object v0, v6, v13

    const/4 v0, 0x1

    const v13, 0x7f0b0197

    invoke-virtual {p0, v13}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    aput-object v13, v6, v0

    invoke-static {v6}, Lfb;->a([Landroid/view/View;)V

    .line 354
    :goto_0
    const/16 v0, 0x14

    invoke-static {p0, v7, v8, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const/16 v0, 0x14

    invoke-static {p0, v9, v10, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :goto_1
    invoke-static {}, Lcom/kms/kmsshared/Utils;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    packed-switch v12, :pswitch_data_0

    .line 389
    const v0, 0x7f070160

    .line 392
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 394
    return-void

    .line 351
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const v7, 0x7f0b0197

    invoke-virtual {p0, v7}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v6}, Lfb;->a([Landroid/view/View;)V

    .line 366
    const v0, 0x7f070388

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 368
    const v0, 0x7f070388

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 370
    const-string v0, "0"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 380
    :pswitch_0
    const v0, 0x7f07015d

    .line 381
    goto :goto_2

    .line 383
    :pswitch_1
    const v0, 0x7f07015f

    .line 384
    goto :goto_2

    .line 386
    :pswitch_2
    const v0, 0x7f07015e

    .line 387
    goto :goto_2

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static f(LaC;)J
    .locals 2

    .prologue
    .line 417
    invoke-interface {p0}, LaC;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->i()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, LaC;->e()J

    move-result-wide v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 122
    const v0, 0x7f0300a8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->a(II)V

    .line 123
    invoke-virtual {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->c(LaC;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->b(LaC;)V

    .line 126
    return-void
.end method

.method private static g(LaC;)I
    .locals 2

    .prologue
    .line 423
    invoke-interface {p0}, LaC;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, LsD;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, LaC;->d()I

    move-result v0

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    const v0, 0x7f030093

    invoke-virtual {p0, v0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->a(II)V

    .line 399
    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    const v1, 0x7f0b01a2

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 402
    const/16 v2, 0x8

    new-array v2, v2, [Landroid/view/View;

    const v3, 0x7f0b019a

    invoke-virtual {p0, v3}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const v4, 0x7f0b0199

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0b019c

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const v4, 0x7f0b019b

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0b019e

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f0b019d

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x7f0b01a0

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x7f0b019f

    invoke-virtual {p0, v4}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lfb;->a([Landroid/view/View;)V

    .line 411
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Lsk;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-static {}, Lcom/kms/kmsshared/Utils;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->setResult(I)V

    .line 439
    invoke-virtual {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->finish()V

    .line 440
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/kms/activation/gui/LicenseInfoActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->h()V

    .line 434
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 43
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->setTheme(I)V

    .line 44
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 49
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    .line 52
    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 53
    invoke-interface {v0}, LaC;->c()I

    move-result v1

    .line 54
    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->c()V

    .line 63
    :goto_0
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/LicenseInfoActivity;->a:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/kms/activation/gui/LicenseInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :goto_1
    return-void

    .line 60
    :cond_1
    invoke-direct {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->a(LaC;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->h()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/kms/activation/gui/LicenseInfoActivity;->h()V

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/LicenseInfoActivity;->setResult(I)V

    .line 457
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onPause()V

    .line 458
    return-void
.end method
