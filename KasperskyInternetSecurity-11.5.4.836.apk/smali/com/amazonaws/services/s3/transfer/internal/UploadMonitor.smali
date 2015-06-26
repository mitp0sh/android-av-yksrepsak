.class public Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;
.super Ljava/lang/Object;
.source "UploadMonitor.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/s3/transfer/model/UploadResult;",
        ">;",
        "Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

.field private final futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation
.end field

.field private isUploadDone:Z

.field private final multipartUploadCallable:Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

.field private nextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/transfer/model/UploadResult;",
            ">;"
        }
    .end annotation
.end field

.field private pollInterval:I

.field private final progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

.field private final putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private final transfer:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

.field private uploadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V
    .locals 1
    .param p1, "manager"    # Lcom/amazonaws/services/s3/transfer/TransferManager;
    .param p2, "transfer"    # Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;
    .param p3, "threadPool"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "multipartUploadCallable"    # Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;
    .param p5, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p6, "progressListenerChain"    # Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->futures:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->isUploadDone:Z

    .line 92
    const/16 v0, 0x1388

    iput v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->pollInterval:I

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 118
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->getConfiguration()Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    .line 120
    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    .line 121
    iput-object p3, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 122
    iput-object p5, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 123
    iput-object p6, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    .line 124
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->transfer:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    .line 126
    invoke-interface {p3, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private collectPartETags()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v3, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartETag;>;"
    iget-object v4, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 241
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/s3/model/PartETag;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to upload part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/s3/model/PartETag;>;"
    :cond_0
    return-object v3
.end method

.method private completeMultipartUpload()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 8

    .prologue
    .line 223
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v3, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v4, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->uploadId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->collectPartETags()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v3}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 227
    .local v0, "completeMultipartUploadResult":Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->uploadComplete()V

    .line 229
    new-instance v1, Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;-><init>()V

    .line 230
    .local v1, "uploadResult":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    .line 234
    return-object v1
.end method

.method private fireProgressEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    .line 215
    .local v0, "event":Lcom/amazonaws/services/s3/model/ProgressEvent;
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setEventCode(I)V

    .line 216
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    goto :goto_0
.end method

.method private declared-synchronized markAllDone()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->isUploadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private poll()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 158
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/s3/model/PartETag;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->reschedule()V

    .line 160
    const/4 v2, 0x0

    .line 170
    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/s3/model/PartETag;>;"
    :goto_0
    return-object v2

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 165
    .restart local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/s3/model/PartETag;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 170
    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/s3/model/PartETag;>;"
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->completeMultipartUpload()Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    move-result-object v2

    goto :goto_0
.end method

.method private reschedule()V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor$1;-><init>(Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;)V

    iget v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->pollInterval:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    .line 210
    return-void
.end method

.method private declared-synchronized setNextFuture(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/transfer/model/UploadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "nextFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/s3/transfer/model/UploadResult;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->nextFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private upload()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->call()Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    move-result-object v0

    .line 181
    .local v0, "result":Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->uploadComplete()V

    .line 189
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->getMultipartUploadId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->uploadId:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->futures:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->getFutures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->reschedule()V

    goto :goto_0
.end method

.method private uploadComplete()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->markAllDone()V

    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->transfer:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;->isMultipartUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->fireProgressEvent(I)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->uploadId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->upload()Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->poll()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->transfer:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    sget-object v2, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 143
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->fireProgressEvent(I)V

    .line 144
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Upload canceled"

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->transfer:Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    sget-object v2, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 147
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->fireProgressEvent(I)V

    .line 148
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->call()Lcom/amazonaws/services/s3/transfer/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/transfer/model/UploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->nextFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->isUploadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "timedThreadPool"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 131
    return-void
.end method
