.class public final Lcom/kms/gui/dialog/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/ListAdapter;

.field private C:I

.field private D:Landroid/os/Handler;

.field private E:Z

.field private F:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/DialogInterface;

.field private final b:Landroid/view/Window;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/widget/Button;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/os/Message;

.field private o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/os/Message;

.field private r:Landroid/widget/Button;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/os/Message;

.field private u:Landroid/widget/ScrollView;

.field private v:I

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    .line 105
    iput v1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    .line 121
    iput v1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->E:Z

    .line 127
    new-instance v0, Lot;

    invoke-direct {v0, p0}, Lot;-><init>(Lcom/kms/gui/dialog/AlertController;)V

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->F:Landroid/view/View$OnClickListener;

    .line 179
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->a:Landroid/content/DialogInterface;

    .line 180
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    .line 181
    new-instance v0, Loz;

    invoke-direct {v0, p1}, Loz;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->D:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    return p1
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->B:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    return-object p1
.end method

.method private static a(Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 541
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 542
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 543
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)Z
    .locals 7

    .prologue
    const v5, 0x7f0b0059

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 403
    .line 405
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 410
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->A:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :cond_0
    :goto_0
    return v2

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b005b

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    .line 419
    if-eqz v1, :cond_5

    .line 422
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    .line 424
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget v0, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    if-lez v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 416
    goto :goto_1

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 433
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 434
    :cond_4
    iget v0, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v2, v3

    .line 452
    goto :goto_0
.end method

.method public static synthetic b(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->n:Landroid/os/Message;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const v6, 0x7f0b004d

    const/16 v4, 0x8

    const/4 v5, -0x1

    .line 355
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 356
    invoke-direct {p0, v0}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/widget/LinearLayout;)V

    .line 357
    invoke-direct {p0}, Lcom/kms/gui/dialog/AlertController;->c()Z

    move-result v1

    .line 359
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v2, 0x7f0b0058

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 361
    invoke-direct {p0, v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/LinearLayout;)Z

    move-result v2

    .line 363
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v3, 0x7f0b004f

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 371
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v3, 0x7f0b004e

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 372
    iget-object v3, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-boolean v3, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    if-eqz v3, :cond_1

    .line 374
    iget v3, p0, Lcom/kms/gui/dialog/AlertController;->g:I

    iget v4, p0, Lcom/kms/gui/dialog/AlertController;->h:I

    iget v5, p0, Lcom/kms/gui/dialog/AlertController;->i:I

    iget v6, p0, Lcom/kms/gui/dialog/AlertController;->j:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 387
    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 389
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->B:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    .line 393
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->B:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 395
    iget v0, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    if-ltz v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 397
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 400
    :cond_5
    return-void

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const v5, 0x7f0b004b

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 459
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    .line 460
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 463
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    .line 464
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private static b(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return v0

    .line 189
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 194
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 195
    :cond_2
    if-lez v2, :cond_3

    .line 196
    add-int/lit8 v2, v2, -0x1

    .line 197
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 198
    invoke-static {v3}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 203
    goto :goto_0
.end method

.method public static synthetic c(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    return-object v0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 485
    .line 489
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    .line 490
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b0052

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    .line 501
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b0053

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    .line 513
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    :goto_2
    if-ne v1, v3, :cond_4

    .line 529
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/Button;)V

    .line 536
    :cond_0
    :goto_3
    if-eqz v1, :cond_6

    :goto_4
    return v3

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 497
    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 509
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 530
    :cond_4
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 531
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    .line 532
    :cond_5
    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v3, v2

    .line 536
    goto :goto_4
.end method

.method public static synthetic d(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->q:Landroid/os/Message;

    return-object v0
.end method

.method public static synthetic e(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic f(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->t:Landroid/os/Message;

    return-object v0
.end method

.method public static synthetic g(Lcom/kms/gui/dialog/AlertController;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->E:Z

    return v0
.end method

.method public static synthetic h(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->a:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public static synthetic i(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->D:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 208
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 210
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 215
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 216
    invoke-direct {p0}, Lcom/kms/gui/dialog/AlertController;->b()V

    .line 217
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 308
    iput p1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    .line 309
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 310
    if-lez p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    if-nez p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 276
    if-eqz p3, :cond_0

    .line 277
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->D:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 280
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->m:Ljava/lang/CharSequence;

    .line 284
    iput-object p4, p0, Lcom/kms/gui/dialog/AlertController;->n:Landroid/os/Message;

    .line 295
    :goto_0
    return-void

    .line 288
    :pswitch_1
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->p:Ljava/lang/CharSequence;

    .line 289
    iput-object p4, p0, Lcom/kms/gui/dialog/AlertController;->q:Landroid/os/Message;

    goto :goto_0

    .line 293
    :pswitch_2
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->s:Ljava/lang/CharSequence;

    .line 294
    iput-object p4, p0, Lcom/kms/gui/dialog/AlertController;->t:Landroid/os/Message;

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 244
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    .line 246
    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 253
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    .line 255
    iput p2, p0, Lcom/kms/gui/dialog/AlertController;->g:I

    .line 256
    iput p3, p0, Lcom/kms/gui/dialog/AlertController;->h:I

    .line 257
    iput p4, p0, Lcom/kms/gui/dialog/AlertController;->i:I

    .line 258
    iput p5, p0, Lcom/kms/gui/dialog/AlertController;->j:I

    .line 259
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->c:Ljava/lang/CharSequence;

    .line 221
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/kms/gui/dialog/AlertController;->E:Z

    .line 150
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 342
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    goto :goto_0

    .line 338
    :pswitch_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    goto :goto_0

    .line 340
    :pswitch_2
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    .line 235
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
