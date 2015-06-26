.class public Lcom/amazonaws/http/IdleConnectionReaper;
.super Ljava/lang/Thread;
.source "IdleConnectionReaper.java"


# static fields
.field private static final PERIOD_MILLISECONDS:I = 0xea60

.field private static connectionManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/conn/ClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/amazonaws/http/IdleConnectionReaper;

.field static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    .line 58
    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "java-sdk-http-connection-reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazonaws/http/IdleConnectionReaper;->setDaemon(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/amazonaws/http/IdleConnectionReaper;->start()V

    .line 65
    return-void
.end method

.method public static declared-synchronized registerConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 2
    .param p0, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    .line 68
    const-class v1, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-direct {v0}, Lcom/amazonaws/http/IdleConnectionReaper;-><init>()V

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    .line 69
    :cond_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 2
    .param p0, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    .line 73
    const-class v1, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v1

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 118
    const-class v1, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-virtual {v0}, Lcom/amazonaws/http/IdleConnectionReaper;->interrupt()V

    .line 120
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit v1

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 81
    :cond_0
    const-wide/32 v6, 0xea60

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "connectionManagers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/conn/ClientConnectionManager;>;"
    const-class v7, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    sget-object v6, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 90
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    .local v1, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    const-wide/16 v6, 0x3c

    :try_start_3
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, v7, v8}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v5

    .line 98
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_4
    sget-object v6, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Unable to close idle connections"

    invoke-interface {v6, v7, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 101
    .end local v1    # "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "connectionManagers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/conn/ClientConnectionManager;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 103
    return-void

    .line 90
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "connectionManagers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/conn/ClientConnectionManager;>;"
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
.end method
