.class public final LiY;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:LiY;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljb;

.field private final e:Ljc;

.field private final f:Lja;

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/util/Vector;

.field private final i:Ljava/util/Vector;

.field private final j:LiZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, LiY;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LiY;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljb;

    invoke-direct {v0, p0}, Ljb;-><init>(LiY;)V

    iput-object v0, p0, LiY;->d:Ljb;

    .line 38
    new-instance v0, Ljc;

    invoke-direct {v0, p0}, Ljc;-><init>(LiY;)V

    iput-object v0, p0, LiY;->e:Ljc;

    .line 39
    new-instance v0, Lja;

    invoke-direct {v0, p0}, Lja;-><init>(LiY;)V

    iput-object v0, p0, LiY;->f:Lja;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LiY;->g:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LiY;->h:Ljava/util/Vector;

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LiY;->i:Ljava/util/Vector;

    .line 43
    new-instance v0, LiZ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LiZ;-><init>(LiY;B)V

    iput-object v0, p0, LiY;->j:LiZ;

    .line 62
    iput-object p1, p0, LiY;->c:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic a(LiY;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LiY;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)LiY;
    .locals 2

    .prologue
    .line 50
    sget-object v0, LiY;->b:LiY;

    if-nez v0, :cond_1

    .line 51
    const-class v1, LiY;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, LiY;->b:LiY;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, LiY;

    invoke-direct {v0, p0}, LiY;-><init>(Landroid/content/Context;)V

    sput-object v0, LiY;->b:LiY;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, LiY;->b:LiY;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LiY;Ljd;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, LiY;->a(Ljd;)V

    return-void
.end method

.method private declared-synchronized a(Ljd;)V
    .locals 3

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Ljk;

    if-eqz v1, :cond_0

    .line 562
    move-object v0, p1

    check-cast v0, Ljk;

    move-object v1, v0

    .line 563
    iget v2, v1, Ljk;->c:I

    if-nez v2, :cond_0

    .line 564
    iget-object v2, p0, LiY;->h:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_0
    instance-of v1, p1, Ljh;

    if-eqz v1, :cond_1

    .line 568
    check-cast p1, Ljh;

    .line 569
    iget v1, p1, Ljh;->c:I

    if-nez v1, :cond_1

    .line 570
    iget-object v1, p0, LiY;->i:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, LiY;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 575
    iget-object v1, p0, LiY;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LiX;

    .line 576
    invoke-interface {v1}, LiX;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 577
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 579
    :cond_2
    monitor-exit p0

    return-void

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 270
    new-instance v1, Ljh;

    iget-object v2, p0, LiY;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljh;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Ljh;->f:J

    .line 272
    iput-object p1, v1, Ljh;->b:Ljava/lang/String;

    .line 273
    iput v0, v1, Ljh;->c:I

    .line 274
    iput-object p2, v1, Ljh;->d:Ljava/lang/String;

    .line 279
    invoke-direct {p0, v1}, LiY;->a(Ljd;)V

    .line 281
    invoke-virtual {v1}, Ljh;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 290
    :cond_0
    return v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, LiY;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 95
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
