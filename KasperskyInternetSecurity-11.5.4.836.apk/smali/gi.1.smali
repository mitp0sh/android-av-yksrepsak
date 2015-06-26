.class public final Lgi;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/ArrayList;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgi;->a:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgi;->b:Ljava/util/ArrayList;

    .line 188
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lgi;->c:Landroid/view/LayoutInflater;

    .line 189
    iput-object p2, p0, Lgi;->d:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    .line 190
    return-void
.end method

.method private a(Landroid/view/View;Lgl;Z)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0047

    if-eq v0, v1, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lgi;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 246
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7f020123

    move v1, v0

    .line 247
    :goto_0
    const v0, 0x7f0b0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    invoke-static {p2}, Lgl;->c(Lgl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 252
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 253
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Light"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    return-object p1

    .line 246
    :cond_2
    const v0, 0x7f020122

    move v1, v0

    goto :goto_0
.end method

.method private static a(Lgl;)Landroid/view/View;
    .locals 1

    .prologue
    .line 259
    invoke-static {p0}, Lgl;->d(Lgl;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgi;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lgi;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 263
    iget-object v0, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 264
    iget-object v0, p0, Lgi;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v7

    .line 265
    :goto_0
    if-ge v2, v8, :cond_1

    .line 266
    iget-object v0, p0, Lgi;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgm;

    .line 267
    iget-object v9, p0, Lgi;->a:Ljava/util/ArrayList;

    new-instance v0, Lgl;

    invoke-static {v6}, Lgm;->a(Lgm;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v6}, Lgm;->b(Lgm;)Landroid/webkit/WebView;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lgl;-><init>(Lgi;ILjava/lang/String;ZLandroid/webkit/WebView;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {v6}, Lgm;->c(Lgm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lgl;

    invoke-static {v6}, Lgm;->d(Lgm;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lgm;->b(Lgm;)Landroid/webkit/WebView;

    move-result-object v5

    move-object v1, p0

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lgl;-><init>(Lgi;ILjava/lang/String;ZLandroid/webkit/WebView;)V

    .line 271
    iget-object v1, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static {v6}, Lgm;->b(Lgm;)Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 274
    invoke-direct {p0, v6, v0}, Lgi;->a(Lgm;Lgl;)V

    .line 265
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lgi;->notifyDataSetChanged()V

    .line 280
    return-void
.end method

.method private a(Lgm;Lgl;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 283
    iget-object v0, p0, Lgi;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 285
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 286
    invoke-static {p1, v0}, Lgm;->a(Lgm;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 287
    invoke-static {p2, v0}, Lgl;->a(Lgl;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 289
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 291
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 294
    new-instance v1, Lgj;

    invoke-direct {v1, p0, v0, p2}, Lgj;-><init>(Lgi;Landroid/webkit/WebView;Lgl;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 328
    invoke-static {p1}, Lgm;->d(Lgm;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html; charset=UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {p1, v3}, Lgm;->a(Lgm;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    return-void
.end method

.method static synthetic b(Lgi;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lgi;->d:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    return-object v0
.end method

.method static synthetic c(Lgi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lgi;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lgi;->e:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lgi;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v0, p0, Lgi;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-direct {p0}, Lgi;->a()V

    .line 226
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 219
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgl;

    .line 199
    invoke-static {v0}, Lgl;->a(Lgl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgl;

    .line 232
    invoke-static {v0}, Lgl;->a(Lgl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lgi;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgl;

    invoke-static {v1}, Lgl;->b(Lgl;)I

    move-result v1

    invoke-static {v0}, Lgl;->b(Lgl;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 235
    :goto_0
    invoke-direct {p0, p2, v0, v1}, Lgi;->a(Landroid/view/View;Lgl;Z)Landroid/view/View;

    move-result-object v0

    .line 237
    :goto_1
    return-object v0

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {v0}, Lgi;->a(Lgl;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x2

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lgi;->d:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 339
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgl;

    .line 340
    iget-object v1, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 341
    iget-object v1, p0, Lgi;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lgl;->b(Lgl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgm;

    .line 342
    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lgi;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lgi;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgl;

    invoke-static {v2}, Lgl;->b(Lgl;)I

    move-result v2

    invoke-static {v0}, Lgl;->b(Lgl;)I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 343
    iget-object v0, p0, Lgi;->d:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    invoke-virtual {v0, v5, v3}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a(ZI)V

    .line 344
    invoke-static {v1, v5}, Lgm;->a(Lgm;Z)Z

    .line 354
    :goto_1
    invoke-direct {p0}, Lgi;->a()V

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {v1, v6}, Lgm;->a(Lgm;Z)Z

    .line 347
    invoke-static {v1}, Lgm;->b(Lgm;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lgi;->d:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    invoke-virtual {v0, v6, v3}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->a(ZI)V

    .line 351
    :cond_3
    invoke-virtual {v1}, Lgm;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->c(Z)V

    goto :goto_1
.end method
