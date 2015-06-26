.class public LbO;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field private static synthetic j:Z


# instance fields
.field private a:Ljava/util/List;

.field private final b:Ljava/lang/Object;

.field private c:I

.field private d:I

.field private final e:I

.field private f:Z

.field private final g:Landroid/content/Context;

.field private final h:Landroid/view/LayoutInflater;

.field private final i:LbP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, LbO;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LbO;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LbO;->b:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, LbO;->f:Z

    .line 149
    iput-object p1, p0, LbO;->g:Landroid/content/Context;

    .line 150
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, LbO;->h:Landroid/view/LayoutInflater;

    .line 151
    iput v1, p0, LbO;->d:I

    iput v1, p0, LbO;->c:I

    .line 152
    iput-object p4, p0, LbO;->a:Ljava/util/List;

    .line 153
    iput v1, p0, LbO;->e:I

    .line 154
    new-instance v0, LbP;

    invoke-direct {v0, p0}, LbP;-><init>(LbO;)V

    iput-object v0, p0, LbO;->i:LbP;

    .line 155
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    .prologue
    .line 479
    if-nez p2, :cond_0

    .line 480
    iget-object v1, p0, LbO;->h:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 486
    :goto_0
    :try_start_0
    iget v1, p0, LbO;->e:I

    if-nez v1, :cond_1

    .line 488
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 499
    :goto_1
    invoke-virtual {p0, p1}, LbO;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 500
    instance-of v4, v1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 501
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :goto_2
    return-object v2

    :cond_0
    move-object v2, p2

    .line 482
    goto :goto_0

    .line 491
    :cond_1
    :try_start_1
    iget v1, p0, LbO;->e:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    .line 497
    goto :goto_1

    .line 493
    :catch_0
    move-exception v1

    .line 494
    const-string v2, "ListAdapter"

    const-string v3, "You must supply a resource ID for a TextView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ListAdapter requires the resource ID to be a TextView"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 503
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private a(Ljava/util/Comparator;Z)V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, LbO;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    if-eqz p2, :cond_0

    iget-boolean v0, p0, LbO;->f:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, LbO;->notifyDataSetChanged()V

    .line 357
    :cond_0
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LbO;->b(Z)V

    .line 223
    iget-boolean v0, p0, LbO;->f:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, LbO;->notifyDataSetChanged()V

    .line 227
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, LbO;->c()Ljava/util/Comparator;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, v0, p1}, LbO;->a(Ljava/util/Comparator;Z)V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, LbO;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, LbO;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 294
    iget-object v2, p0, LbO;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 302
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-direct {p0, v0}, LbO;->a(Z)V

    .line 305
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, LbO;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-direct {p0, v0}, LbO;->a(Z)V

    .line 179
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LbO;->b(Z)V

    .line 231
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, LbO;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 284
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-direct {p0, v0}, LbO;->a(Z)V

    .line 287
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected c()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, LbO;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 3

    .prologue
    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v2, p0, LbO;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    return-object v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final f()Ljava/util/List;
    .locals 2

    .prologue
    .line 564
    sget-boolean v0, LbO;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LbO;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called from synchronized block!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 565
    :cond_0
    iget-object v0, p0, LbO;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 401
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, LbO;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 524
    iget v0, p0, LbO;->d:I

    invoke-direct {p0, p1, p2, p3, v0}, LbO;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, LbO;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 451
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 458
    iget v0, p0, LbO;->c:I

    invoke-direct {p0, p1, p2, p3, v0}, LbO;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 580
    iget-object v1, p0, LbO;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, LbO;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, LbO;->f:Z

    .line 366
    return-void
.end method
