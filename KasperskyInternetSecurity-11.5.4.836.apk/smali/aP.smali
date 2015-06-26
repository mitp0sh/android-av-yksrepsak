.class public final LaP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LaP;


# instance fields
.field private b:Ljava/lang/Process;

.field private final c:Ljava/util/HashSet;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LaP;->c:Ljava/util/HashSet;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LaP;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    return-void
.end method

.method private static declared-synchronized a()LaP;
    .locals 2

    .prologue
    .line 28
    const-class v1, LaP;

    monitor-enter v1

    :try_start_0
    sget-object v0, LaP;->a:LaP;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, LaP;

    invoke-direct {v0}, LaP;-><init>()V

    sput-object v0, LaP;->a:LaP;

    .line 32
    :cond_0
    sget-object v0, LaP;->a:LaP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LaP;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, LaP;->b:Ljava/lang/Process;

    return-object p1
.end method

.method static synthetic a(LaP;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {p1}, LaP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 38
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 39
    if-gez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    if-ltz v2, :cond_0

    if-lt v2, v1, :cond_0

    .line 49
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(LaP;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LaP;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(LaO;)V
    .locals 4

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, LaP;->a()LaP;

    move-result-object v0

    .line 160
    iget-object v1, v0, LaP;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, v0, LaP;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, v0, LaP;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 165
    invoke-direct {v0}, LaP;->b()V

    .line 167
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(LaP;)Ljava/lang/Process;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LaP;->b:Ljava/lang/Process;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, LaQ;

    invoke-direct {v0, p0}, LaQ;-><init>(LaP;)V

    invoke-virtual {v0}, LaQ;->start()V

    .line 142
    return-void
.end method

.method public static b(LaO;)V
    .locals 3

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {}, LaP;->a()LaP;

    move-result-object v0

    .line 177
    iget-object v1, v0, LaP;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v2, v0, LaP;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 180
    iget-object v2, v0, LaP;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 182
    invoke-direct {v0}, LaP;->c()V

    .line 184
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(LaP;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LaP;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, LaP;->b:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, LaP;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    iget-object v0, p0, LaP;->b:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 151
    :cond_0
    return-void
.end method
