.class public Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Lax;
.implements LeK;
.implements Lnz;


# instance fields
.field private a:[Lfn;

.field private b:[Ljava/lang/String;

.field private c:Lfn;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    .line 49
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->f:Z

    .line 565
    return-void
.end method

.method public static synthetic a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    return v0
.end method

.method public static synthetic a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;I)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(I)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;)V
    .locals 13

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 211
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 212
    const v0, 0x7f0b0142

    invoke-virtual {v4, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 213
    const v1, 0x7f0b017c

    invoke-virtual {v4, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 214
    const v2, 0x7f0b0180

    invoke-virtual {v4, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 215
    const v2, 0x7f0b017f

    invoke-virtual {v4, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 216
    const v2, 0x7f0b017e

    invoke-virtual {v4, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 217
    const v3, 0x7f0b017b

    invoke-virtual {v4, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 218
    const v3, 0x7f0b017d

    invoke-virtual {v4, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 219
    const v9, 0x7f0b017f

    invoke-virtual {v4, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 222
    iget-object v9, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    iget v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    iget v9, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    invoke-static {v9}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(I)I

    move-result v9

    .line 228
    packed-switch v9, :pswitch_data_0

    .line 263
    :goto_1
    :pswitch_0
    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v11, 0x5

    invoke-static {v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :goto_2
    sget-object v10, Lfr;->a:[I

    invoke-virtual {p1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 340
    :goto_3
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->i()V

    .line 341
    return-void

    .line 224
    :cond_0
    iget-object v9, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v11

    aget-object v10, v10, v11

    .line 235
    const v11, 0x7f020167

    invoke-static {v1, v3, v10, v10, v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 239
    :pswitch_2
    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v11

    aget-object v10, v10, v11

    .line 240
    const v11, 0x7f020169

    invoke-static {v1, v3, v10, v10, v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 246
    :pswitch_3
    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v11

    aget-object v10, v10, v11

    .line 247
    const v11, 0x7f020163

    invoke-static {v1, v3, v10, v10, v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 250
    :pswitch_4
    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v11, 0x3

    invoke-static {v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 253
    :pswitch_5
    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v11, 0x4

    invoke-static {v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 259
    :pswitch_6
    iget-object v10, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    const/4 v11, 0x5

    invoke-static {v11}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v11

    aget-object v10, v10, v11

    .line 260
    iget-object v11, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    invoke-static {v9}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v12

    aget-object v11, v11, v12

    .line 261
    const v12, 0x7f02015d

    invoke-static {v1, v3, v10, v11, v12}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 268
    :pswitch_7
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 273
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 274
    const v4, 0x7f07032c

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 275
    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v6

    add-int/lit8 v6, v6, 0xf

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 280
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 287
    :pswitch_8
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 288
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 289
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 291
    const/4 v2, 0x0

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 292
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 293
    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v5

    add-int/lit8 v5, v5, -0xf

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 297
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v2

    if-eq v0, v2, :cond_4

    const/4 v0, 0x7

    if-eq v9, v0, :cond_4

    const/16 v0, 0x8

    if-eq v9, v0, :cond_4

    const/16 v0, 0x9

    if-eq v9, v0, :cond_4

    const/16 v0, 0xb

    if-eq v9, v0, :cond_4

    const/16 v0, 0xc

    if-eq v9, v0, :cond_4

    const/16 v0, 0xd

    if-eq v9, v0, :cond_4

    const/16 v0, 0xa

    if-eq v9, v0, :cond_4

    const/16 v0, 0xe

    if-eq v9, v0, :cond_4

    const/16 v0, 0xf

    if-eq v9, v0, :cond_4

    const/16 v0, 0x10

    if-eq v9, v0, :cond_4

    const/16 v0, 0x11

    if-eq v9, v0, :cond_4

    const/16 v0, 0x12

    if-ne v9, v0, :cond_5

    .line 313
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 316
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 322
    :pswitch_9
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    const/4 v4, -0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 325
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 328
    const v4, 0x7f07032c

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 329
    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v6

    add-int/lit8 v6, v6, 0xf

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 334
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 336
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/16 v1, 0x320

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->f:Z

    return p1
.end method

.method private static b(I)I
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lff;->a(I)I

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->f:Z

    return v0
.end method

.method private static c(I)I
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lff;->b(I)I

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->h()V

    return-void
.end method

.method private d(I)V
    .locals 2

    .prologue
    .line 411
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lnv;->a(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;)V

    .line 413
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    sget-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->OnePanelDetails:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    move-object v1, v0

    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 445
    const/16 v3, 0x13

    invoke-static {v3}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v3

    .line 446
    :goto_1
    if-ge v2, v3, :cond_3

    .line 447
    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(I)I

    move-result v4

    .line 448
    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lfn;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 449
    iget-object v5, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 446
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 435
    :cond_1
    sget-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->OnePanelGroups:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    move-object v1, v0

    goto :goto_0

    .line 438
    :cond_2
    sget-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->DualPanel:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    .line 439
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    move p1, v2

    .line 440
    goto :goto_0

    .line 452
    :cond_3
    if-ltz p1, :cond_4

    .line 453
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    aget-object v2, v2, p1

    .line 454
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 455
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 456
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 457
    iput-object v2, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    .line 459
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a(LeP;)V

    .line 461
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {p1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 465
    :cond_4
    invoke-direct {p0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;)V

    .line 466
    return-void

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    const/16 v4, 0x13

    .line 83
    new-array v0, v4, [Lfn;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    .line 84
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e()V

    .line 85
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 87
    invoke-static {v0}, Lfn;->a(I)Lfn;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    aput-object v2, v3, v0

    .line 89
    const v3, 0x7f0b017f

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 90
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 94
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 96
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->g()V

    .line 98
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    aget-object v1, v1, v0

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lfn;->f()Lfj;

    move-result-object v1

    invoke-virtual {v1}, Lfj;->p()V

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 146
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 148
    const v0, 0x7f020164

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 151
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->f:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const v0, 0x7f0a0022

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b:[Ljava/lang/String;

    .line 165
    new-instance v0, Lfo;

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lfo;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 167
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020165

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 170
    new-instance v1, Lfp;

    invoke-direct {v1, p0}, Lfp;-><init>(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void

    .line 155
    :cond_0
    const v0, 0x7f0a0023

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const v0, 0x7f0a0020

    goto :goto_0

    .line 161
    :cond_2
    const v0, 0x7f0a0021

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    invoke-virtual {v0}, Lfn;->f()Lfj;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfj;->b(Z)V

    .line 350
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 357
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e:I

    if-ne v1, v0, :cond_1

    invoke-static {}, Lkh;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 395
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 396
    invoke-virtual {v0}, Lsj;->w()Z

    move-result v1

    .line 397
    invoke-virtual {v0}, Lsj;->v()Z

    move-result v0

    .line 399
    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 401
    :cond_1
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d(I)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_2
    invoke-static {p1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    .line 407
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e(I)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 417
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 419
    if-nez p1, :cond_1

    .line 420
    const/4 v0, 0x3

    .line 424
    :goto_0
    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    .line 425
    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e(I)V

    .line 427
    :cond_0
    return-void

    .line 422
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public final a(Lay;)V
    .locals 2

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lfq;

    invoke-direct {v1, p0}, Lfq;-><init>(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method

.method public final a()Z
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 470
    .line 472
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    invoke-virtual {v0}, Lfn;->a()Z

    move-result v0

    .line 474
    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    invoke-virtual {v0}, Lfn;->g()I

    move-result v4

    .line 478
    packed-switch v4, :pswitch_data_0

    .line 508
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e:I

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    iput v3, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    .line 517
    :goto_0
    if-eq v3, v4, :cond_1

    move v0, v2

    .line 518
    :goto_1
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0, v3}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    .line 524
    :cond_0
    :goto_2
    return v0

    :pswitch_0
    move v3, v1

    .line 484
    goto :goto_0

    :pswitch_1
    move v3, v2

    .line 488
    goto :goto_0

    .line 493
    :pswitch_2
    const/4 v0, 0x2

    move v3, v0

    .line 494
    goto :goto_0

    .line 498
    :pswitch_3
    const/16 v0, 0xf

    move v3, v0

    .line 499
    goto :goto_0

    .line 504
    :pswitch_4
    const/4 v0, 0x5

    move v3, v0

    .line 505
    goto :goto_0

    :cond_1
    move v0, v1

    .line 517
    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 478
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b()Lfn;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c:Lfn;

    return-object v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->i()V

    .line 354
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->f:Z

    invoke-static {v0}, Lff;->a(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e:I

    .line 120
    instance-of v1, v0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;

    if-eqz v1, :cond_1

    .line 121
    check-cast v0, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;

    invoke-virtual {v0, p0}, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;->a(LeK;)V

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    .line 125
    const-string v0, "current_choice"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;->b()I

    move-result v0

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(I)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    .line 131
    :cond_3
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->f()V

    .line 132
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->h()V

    .line 134
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1}, LsY;->a(Lax;I)Z

    .line 136
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 374
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e:I

    .line 375
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->e(I)V

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 378
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 530
    instance-of v0, v2, Lcom/kaspersky/kts/gui/settings/BaseSettingsActivity;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    if-eqz v0, :cond_1

    .line 532
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a:[Lfn;

    aget-object v0, v0, v1

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lfn;->f()Lfj;

    move-result-object v3

    .line 536
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-virtual {v3}, Lfj;->l()I

    move-result v4

    invoke-interface {v0, v4}, LsY;->c(I)V

    .line 538
    invoke-virtual {v3}, Lfj;->q()V

    .line 532
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 543
    :cond_1
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, LsY;->c(I)V

    .line 544
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 545
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 389
    invoke-static {p3}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    .line 390
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 384
    const-string v0, "current_choice"

    iget v1, p0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    return-void
.end method
