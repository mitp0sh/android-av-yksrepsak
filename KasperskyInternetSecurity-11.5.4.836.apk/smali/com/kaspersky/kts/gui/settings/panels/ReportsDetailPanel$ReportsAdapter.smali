.class Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:[J

.field private b:[Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:[I

.field private synthetic g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)V
    .locals 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->a:[J

    .line 205
    invoke-static {p1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->b:[Ljava/lang/CharSequence;

    .line 207
    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->c:Landroid/graphics/drawable/Drawable;

    .line 208
    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->d:Landroid/graphics/drawable/Drawable;

    .line 209
    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->e:Landroid/graphics/drawable/Drawable;

    .line 210
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->a()V

    .line 211
    return-void

    .line 186
    nop

    :array_0
    .array-data 8
        0x0
        0x240c8400
        -0x65813800
        0x2a69c000
    .end array-data
.end method

.method private a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->i(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const v1, 0x7f070498

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->j(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-static {p1, p2}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getCategoriesByMask(J)Ljava/util/List;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 387
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v0}, Lcom/kaspersky/components/urlchecker/UrlCategory;->ordinal()I

    move-result v0

    .line 388
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 389
    aget-object v0, v2, v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/kms/kmsshared/reports/Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 333
    :pswitch_0
    invoke-virtual {p1}, Lcom/kms/kmsshared/reports/Event;->getDetails()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 329
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->b(Lcom/kms/kmsshared/reports/Event;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->c(Lcom/kms/kmsshared/reports/Event;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/kms/kmsshared/reports/Event;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v0

    .line 339
    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong event id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    invoke-virtual {p1, v2}, Lcom/kms/kmsshared/reports/Event;->param(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {p1, v3}, Lcom/kms/kmsshared/reports/Event;->param(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 350
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/kms/kmsshared/reports/Event;->getDetailsForEvent(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    .line 353
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/kms/kmsshared/reports/Event;->getDetails()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/kms/kmsshared/reports/Event;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 359
    invoke-virtual {p1}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v1

    .line 360
    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong event id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    invoke-virtual {p1, v6}, Lcom/kms/kmsshared/reports/Event;->param(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {p1, v7}, Lcom/kms/kmsshared/reports/Event;->param(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {p1, v8}, Lcom/kms/kmsshared/reports/Event;->param(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->a(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 378
    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    aput-object v0, v4, v8

    invoke-static {v1, v4}, Lcom/kms/kmsshared/reports/Event;->getDetailsForEvent(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->h(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const v4, 0x7f070498

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v4, 0x0

    .line 214
    .line 217
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 219
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 220
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 221
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 223
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->getCount()I

    move-result v8

    .line 225
    new-array v0, v8, [I

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->f:[I

    move v5, v4

    move v1, v4

    move v3, v4

    .line 226
    :goto_0
    if-ge v5, v8, :cond_1

    .line 227
    invoke-virtual {p0, v5}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Event;

    .line 228
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getTime()J

    move-result-wide v9

    .line 230
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->f:[I

    const/4 v2, -0x1

    aput v2, v0, v5

    .line 231
    if-ge v3, v13, :cond_4

    move v2, v3

    .line 232
    :goto_1
    if-ge v2, v13, :cond_4

    .line 233
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->a:[J

    aget-wide v11, v0, v2

    sub-long v11, v6, v11

    cmp-long v0, v11, v9

    if-gtz v0, :cond_0

    .line 234
    if-eq v3, v2, :cond_3

    move v0, v4

    .line 238
    :goto_2
    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->f:[I

    aput v2, v0, v5

    .line 240
    const/4 v0, 0x1

    move v1, v2

    .line 226
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 249
    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 263
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 270
    if-nez p2, :cond_0

    .line 271
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->f(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 275
    :cond_0
    const v0, 0x7f0b0174

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    const v1, 0x7f0b0171

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 278
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->f:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 279
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kms/kmsshared/reports/Event;

    .line 288
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->g(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/Event;->getTime()J

    move-result-wide v3

    const/16 v5, 0x15

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-direct {p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->a(Lcom/kms/kmsshared/reports/Event;)Ljava/lang/String;

    move-result-object v2

    .line 293
    const v0, 0x7f0b0175

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v0, 0x7f0b0173

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v1

    invoke-static {v1}, Lcom/kms/kmsshared/reports/Reports;->getEventGroup(I)I

    move-result v1

    .line 298
    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->d()[I

    move-result-object v2

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->g:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;

    invoke-static {v3}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)I

    move-result v3

    aget v2, v2, v3

    invoke-static {}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->d()[I

    move-result-object v3

    aget v3, v3, v6

    if-ne v2, v3, :cond_2

    .line 299
    sparse-switch v1, :sswitch_data_0

    .line 316
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    :goto_1
    return-object p2

    .line 281
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    const v1, 0x7f0b0172

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 283
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->b:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->f:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :sswitch_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 306
    :sswitch_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 311
    :sswitch_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method
