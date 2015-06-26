.class final LhG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lic;

.field private b:LhT;

.field private synthetic c:LhF;


# direct methods
.method public constructor <init>(LhF;Lic;LhT;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, LhG;->c:LhF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, LhG;->a:Lic;

    .line 92
    iput-object p3, p0, LhG;->b:LhT;

    .line 93
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 99
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    iget-object v0, p0, LhG;->a:Lic;

    invoke-interface {v0}, Lic;->a()[B

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 108
    :cond_0
    monitor-exit p0

    .line 123
    :goto_1
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, LhG;->b:LhT;

    invoke-virtual {v1, v0}, LhT;->a([B)V

    .line 114
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_1
.end method
