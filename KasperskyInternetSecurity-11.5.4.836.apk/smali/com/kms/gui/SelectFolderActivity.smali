.class public abstract Lcom/kms/gui/SelectFolderActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final e:[Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z

.field private g:Landroid/view/LayoutInflater;

.field private h:[Ljava/lang/String;

.field private i:LnQ;

.field private j:LnR;

.field private k:Z

.field private l:[Ljava/lang/String;

.field private m:Ljava/util/ArrayList;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/TextView;

.field private final x:Ljava/util/concurrent/ScheduledExecutorService;

.field private y:Ljava/lang/String;

.field private final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    .line 40
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/kms/gui/SelectFolderActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 45
    new-instance v0, LnQ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LnQ;-><init>(Lcom/kms/gui/SelectFolderActivity;B)V

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->i:LnQ;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->k:Z

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, LnP;

    invoke-direct {v0, p0}, LnP;-><init>(Lcom/kms/gui/SelectFolderActivity;)V

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->A:Ljava/lang/Runnable;

    .line 632
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;)LnQ;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->i:LnQ;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    const v0, 0x7f0b0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    new-instance v1, LnL;

    invoke-direct {v1, p0, v0, p1}, LnL;-><init>(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;Landroid/view/View;)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 314
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kms/gui/SelectFolderActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kms/gui/SelectFolderActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/kms/gui/SelectFolderActivity;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kms/gui/SelectFolderActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kms/gui/SelectFolderActivity;->b:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:LnR;

    invoke-virtual {v0}, LnR;->notifyDataSetChanged()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->x:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/kms/gui/SelectFolderActivity;->A:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 429
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    sget-object v0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->c:[Ljava/lang/String;

    .line 433
    sget-object v0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->h:[Ljava/lang/String;

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 438
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_6

    aget-object v7, v5, v2

    .line 441
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->x:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->x:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 447
    if-eqz p2, :cond_2

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 450
    array-length v9, p2

    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_7

    aget-object v10, p2, v0

    .line 451
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 452
    const/4 v0, 0x1

    .line 457
    :goto_3
    if-nez v0, :cond_3

    .line 458
    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_3
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 450
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 464
    :cond_5
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 468
    :cond_6
    sget-object v0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->c:[Ljava/lang/String;

    .line 469
    sget-object v0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->h:[Ljava/lang/String;

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public static synthetic b(Lcom/kms/gui/SelectFolderActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 317
    const v0, 0x7f0b0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    const v1, 0x7f0b0092

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 319
    new-instance v2, LnM;

    invoke-direct {v2, p0, v0, v1}, LnM;-><init>(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;Landroid/view/View;)V

    .line 334
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 335
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    return-void
.end method

.method public static synthetic b(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kms/gui/SelectFolderActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 494
    new-instance v0, LnO;

    invoke-direct {v0, p0, p1}, LnO;-><init>(Lcom/kms/gui/SelectFolderActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method public static synthetic c(Lcom/kms/gui/SelectFolderActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->n:I

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic e(Lcom/kms/gui/SelectFolderActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic f(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->p:I

    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic g(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->q:I

    return v0
.end method

.method public static synthetic h(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->o:I

    return v0
.end method

.method public static synthetic i(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->r:I

    return v0
.end method

.method public static synthetic j(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->s:I

    return v0
.end method

.method public static synthetic k(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->t:I

    return v0
.end method

.method public static synthetic l(Lcom/kms/gui/SelectFolderActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/gui/SelectFolderActivity;->u:I

    return v0
.end method

.method public static synthetic m(Lcom/kms/gui/SelectFolderActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic n(Lcom/kms/gui/SelectFolderActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic o(Lcom/kms/gui/SelectFolderActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->v:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic p(Lcom/kms/gui/SelectFolderActivity;)LnR;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:LnR;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 480
    return-void
.end method

.method public abstract b()I
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->c:[Ljava/lang/String;

    array-length v0, v0

    sub-int v0, p1, v0

    .line 289
    iget-boolean v1, p0, Lcom/kms/gui/SelectFolderActivity;->d:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_1

    .line 290
    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/kms/gui/SelectFolderActivity;->h:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->d:Z

    if-eqz v0, :cond_1

    .line 342
    if-nez p1, :cond_0

    .line 344
    sget-object v0, Lcom/kms/gui/SelectFolderActivity;->f:Ljava/lang/String;

    .line 351
    :goto_0
    return-object v0

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->m:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public final e()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sys"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/proc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/dev"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/debug"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/mnt/debugfs"

    aput-object v2, v0, v1

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 394
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->l:[Ljava/lang/String;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 483
    new-instance v0, LnN;

    invoke-direct {v0, p0}, LnN;-><init>(Lcom/kms/gui/SelectFolderActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030024

    invoke-virtual {p0, v0, v2}, Lcom/kms/gui/SelectFolderActivity;->a(II)V

    .line 74
    const v0, 0x7f030025

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->n:I

    .line 75
    const v0, 0x7f030026

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->o:I

    .line 76
    const v0, 0x7f020115

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->p:I

    .line 77
    const v0, 0x7f020114

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->q:I

    .line 78
    const v0, 0x7f020118

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->r:I

    .line 79
    const v0, 0x7f020111

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->s:I

    .line 80
    const v0, 0x7f020113

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->t:I

    .line 81
    const v0, 0x7f020112

    iput v0, p0, Lcom/kms/gui/SelectFolderActivity;->u:I

    .line 83
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    const v1, 0x7f0704c2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 86
    new-instance v1, LnK;

    invoke-direct {v1, p0}, LnK;-><init>(Lcom/kms/gui/SelectFolderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->g:Landroid/view/LayoutInflater;

    .line 97
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->v:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0090

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->w:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070497

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->y:Ljava/lang/String;

    .line 101
    new-instance v0, LnR;

    invoke-direct {v0, p0, v2}, LnR;-><init>(Lcom/kms/gui/SelectFolderActivity;B)V

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:LnR;

    .line 102
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:LnR;

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iput-boolean v3, p0, Lcom/kms/gui/SelectFolderActivity;->d:Z

    .line 114
    invoke-static {v2}, Lcom/kavsdk/shared/SdkUtils;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->m:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Lcom/kms/gui/KMSBaseListActivity;->onDestroy()V

    .line 475
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->x:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 476
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 371
    if-nez p2, :cond_0

    .line 373
    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 414
    const v0, 0x7f0b003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 415
    if-eqz v0, :cond_0

    .line 417
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 420
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 357
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->k:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Ljava/lang/String;)V

    .line 361
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->k:Z

    .line 362
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onWindowFocusChanged(Z)V

    .line 363
    return-void
.end method
