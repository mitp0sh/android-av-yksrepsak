.class public LiK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LiH;


# static fields
.field private static volatile a:LiK;


# instance fields
.field private final b:Ljm;

.field private final c:LiL;

.field private volatile d:Z

.field private volatile e:J

.field private volatile f:J

.field private volatile g:J

.field private volatile h:J

.field private volatile i:Ljava/lang/String;

.field private volatile j:Ljava/lang/String;

.field private volatile k:J

.field private volatile l:J

.field private volatile m:[B

.field private volatile n:Z

.field private volatile o:J

.field private final p:LiI;

.field private q:Z


# direct methods
.method private constructor <init>(Ljm;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, LiL;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LiL;-><init>(LiK;B)V

    iput-object v0, p0, LiK;->c:LiL;

    .line 33
    iput-wide v2, p0, LiK;->g:J

    .line 34
    iput-wide v2, p0, LiK;->h:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LiK;->o:J

    .line 68
    iput-object p1, p0, LiK;->b:Ljm;

    .line 69
    new-instance v0, LiI;

    invoke-direct {v0}, LiI;-><init>()V

    iput-object v0, p0, LiK;->p:LiI;

    .line 72
    :try_start_0
    iget-object v0, p0, LiK;->b:Ljm;

    iget-object v1, p0, LiK;->c:LiL;

    invoke-interface {v0, v1}, Ljm;->a(Ljl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    iget-boolean v1, p0, LiK;->q:Z

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "KAVSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read service state for file created with SDK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LiK;->p:LiI;

    invoke-virtual {v3}, LiI;->a()LiJ;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and BCver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LiK;->p:LiI;

    invoke-virtual {v3}, LiI;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(LiK;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, LiK;->e:J

    return-wide p1
.end method

.method static synthetic a(LiK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, LiK;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljm;)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, LiK;->a:LiK;

    if-nez v0, :cond_1

    .line 48
    const-class v1, LiK;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, LiK;->a:LiK;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, LiK;

    invoke-direct {v0, p0}, LiK;-><init>(Ljm;)V

    sput-object v0, LiK;->a:LiK;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LiK;Z)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, LiK;->q:Z

    return v0
.end method

.method static synthetic a(LiK;)[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, LiK;->m:[B

    return-object v0
.end method

.method static synthetic a(LiK;[B)[B
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, LiK;->m:[B

    return-object p1
.end method

.method static synthetic b(LiK;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, LiK;->f:J

    return-wide p1
.end method

.method static synthetic b(LiK;)LiI;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, LiK;->p:LiI;

    return-object v0
.end method

.method static synthetic b(LiK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, LiK;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(LiK;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, LiK;->d:Z

    return p1
.end method

.method static synthetic c(LiK;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, LiK;->g:J

    return-wide p1
.end method

.method static synthetic c(LiK;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, LiK;->d:Z

    return v0
.end method

.method static synthetic c(LiK;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, LiK;->n:Z

    return p1
.end method

.method static synthetic d(LiK;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, LiK;->e:J

    return-wide v0
.end method

.method static synthetic d(LiK;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, LiK;->h:J

    return-wide p1
.end method

.method static synthetic e(LiK;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, LiK;->f:J

    return-wide v0
.end method

.method static synthetic e(LiK;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, LiK;->k:J

    return-wide p1
.end method

.method static synthetic f(LiK;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, LiK;->g:J

    return-wide v0
.end method

.method static synthetic f(LiK;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, LiK;->l:J

    return-wide p1
.end method

.method public static f()LiK;
    .locals 2

    .prologue
    .line 57
    sget-object v0, LiK;->a:LiK;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init should be called before getSettings()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    sget-object v0, LiK;->a:LiK;

    return-object v0
.end method

.method static synthetic g(LiK;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, LiK;->h:J

    return-wide v0
.end method

.method static synthetic g(LiK;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, LiK;->o:J

    return-wide p1
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, LiK;->a:LiK;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(LiK;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, LiK;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(LiK;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, LiK;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(LiK;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, LiK;->k:J

    return-wide v0
.end method

.method static synthetic k(LiK;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, LiK;->l:J

    return-wide v0
.end method

.method static synthetic l(LiK;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, LiK;->n:Z

    return v0
.end method

.method static synthetic m(LiK;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, LiK;->o:J

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, LiK;->k:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 156
    iput-wide p1, p0, LiK;->k:J

    .line 157
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, LiK;->m:[B

    .line 178
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, LiK;->l:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 167
    iput-wide p1, p0, LiK;->l:J

    .line 168
    return-void
.end method

.method public final c(J)V
    .locals 0

    .prologue
    .line 198
    iput-wide p1, p0, LiK;->o:J

    .line 199
    return-void
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, LiK;->m:[B

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, LiK;->o:J

    return-wide v0
.end method

.method public final declared-synchronized e()V
    .locals 3

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LiK;->b:Ljm;

    iget-object v1, p0, LiK;->c:LiL;

    invoke-interface {v0, v1}, Ljm;->b(Ljl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    const-string v1, "KAVSDK"

    const-string v2, "Failed to save settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
