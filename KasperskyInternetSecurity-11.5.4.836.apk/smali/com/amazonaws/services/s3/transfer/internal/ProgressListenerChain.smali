.class public Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;
.super Ljava/lang/Object;
.source "ProgressListenerChain.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/ProgressListener;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/ProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public varargs constructor <init>([Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 5
    .param p1, "listeners"    # [Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->listeners:Ljava/util/List;

    .line 32
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/s3/model/ProgressListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 36
    monitor-enter p0

    if-nez p1, :cond_0

    .line 38
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V
    .locals 5
    .param p1, "progressEvent"    # Lcom/amazonaws/services/s3/model/ProgressEvent;

    .prologue
    .line 46
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/ProgressListener;

    .line 48
    .local v1, "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Couldn\'t update progress listener"

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v1    # "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public declared-synchronized removeProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 41
    monitor-enter p0

    if-nez p1, :cond_0

    .line 43
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
