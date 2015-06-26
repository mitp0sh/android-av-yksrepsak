.class final LmQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LmM;

.field private final b:I

.field private c:I

.field private d:Ljava/util/List;


# direct methods
.method private constructor <init>(LmM;)V
    .locals 1

    .prologue
    .line 290
    iput-object p1, p0, LmQ;->a:LmM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/16 v0, 0x64

    iput v0, p0, LmQ;->b:I

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, LmQ;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(LmM;B)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, LmQ;-><init>(LmM;)V

    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v1, p0, LmQ;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, LmQ;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, LmQ;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    :cond_0
    iget-object v1, p0, LmQ;->a:LmM;

    invoke-static {v1}, LmM;->g(LmM;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, LmR;

    invoke-direct {v2, p0, p1, v0}, LmR;-><init>(LmQ;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 297
    iput p1, p0, LmQ;->c:I

    .line 298
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, LmQ;->a:LmM;

    invoke-static {v0}, LmM;->e(LmM;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget v0, p0, LmQ;->c:I

    .line 313
    :try_start_0
    iget-object v1, p0, LmQ;->a:LmM;

    invoke-static {v1}, LmM;->a(LmM;)Lgz;

    move-result-object v1

    invoke-interface {v1}, Lgz;->e()J

    move-result-wide v1

    long-to-int v1, v1

    .line 314
    if-lez v1, :cond_2

    .line 315
    iget-object v2, p0, LmQ;->a:LmM;

    invoke-static {v2}, LmM;->a(LmM;)Lgz;

    move-result-object v2

    const/16 v3, 0x64

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v0, v1}, Lgz;->a(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LmQ;->d:Ljava/util/List;
    :try_end_0
    .catch Lcom/kavsdk/antivirus/QuarantineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, LmQ;->b(I)V

    .line 320
    iget-object v0, p0, LmQ;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, LmQ;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
