.class public Lcom/amazonaws/services/s3/transfer/TransferManager;
.super Ljava/lang/Object;
.source "TransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;,
        Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;,
        Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELIMITER:Ljava/lang/String; = "/"

.field private static final USER_AGENT:Ljava/lang/String;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    const-class v0, Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->log:Lorg/apache/commons/logging/Log;

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 148
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;)V
    .locals 1
    .param p1, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;

    .prologue
    .line 168
    invoke-static {}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->createDefaultExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .param p1, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p2, "threadPool"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 190
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 191
    new-instance v0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    .line 192
    return-void
.end method

.method static synthetic access$200(Lcom/amazonaws/services/s3/transfer/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/TransferManager;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method private download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Download;
    .locals 21
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "stateListener"    # Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;

    .prologue
    .line 469
    sget-object v6, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "description":Ljava/lang/String;
    new-instance v4, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    .line 475
    .local v4, "transferProgress":Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
    new-instance v5, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/amazonaws/services/s3/model/ProgressListener;

    const/4 v7, 0x0

    new-instance v9, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    invoke-direct {v9, v4}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-direct {v5, v6}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;-><init>([Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 477
    .local v5, "listenerChain":Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Lcom/amazonaws/services/s3/AmazonS3;->getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v17

    .line 480
    .local v17, "objectMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    new-instance v8, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;

    const/4 v6, 0x0

    invoke-direct {v8, v6}, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V

    .line 481
    .local v8, "startDownloadLock":Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;
    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    const/4 v6, 0x0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    .line 482
    .local v2, "download":Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;
    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v12

    .line 483
    .local v12, "contentLength":J
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v18, v6, v7

    .line 485
    .local v18, "startingByte":J
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v15, v6, v7

    .line 486
    .local v15, "lastByte":J
    sub-long v12, v15, v18

    .line 489
    .end local v15    # "lastByte":J
    .end local v18    # "startingByte":J
    :cond_0
    invoke-virtual {v4, v12, v13}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v20, v0

    new-instance v6, Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    move-object/from16 v7, p0

    move-object v9, v2

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/amazonaws/services/s3/transfer/TransferManager$1;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    .line 534
    .local v14, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v6, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;

    invoke-direct {v6, v2, v14}, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;Ljava/util/concurrent/Future;)V

    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    .line 535
    monitor-enter v8

    .line 536
    const/4 v6, 0x1

    :try_start_0
    # setter for: Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->downloadReady:Z
    invoke-static {v8, v6}, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->access$102(Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;Z)Z

    .line 537
    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 538
    monitor-exit v8

    .line 539
    return-object v2

    .line 538
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private listFiles(Ljava/io/File;Ljava/util/List;Z)V
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p3, "includeSubDirectories"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 808
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 809
    .local v2, "found":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 810
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 811
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 812
    if-eqz p3, :cond_0

    .line 813
    invoke-direct {p0, v1, p2, p3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    .line 810
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 816
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 820
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method private upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 19
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "stateListener"    # Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v3, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    if-nez v3, :cond_0

    .line 367
    new-instance v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 368
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v17

    .line 370
    .local v17, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 371
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v16

    .line 374
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 377
    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 378
    invoke-static {}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/internal/Mimetypes;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 382
    .end local v16    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uploading to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 383
    .local v15, "description":Ljava/lang/String;
    new-instance v18, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct/range {v18 .. v18}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    .line 384
    .local v18, "transferProgress":Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    .line 386
    new-instance v7, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazonaws/services/s3/model/ProgressListener;

    const/4 v4, 0x0

    new-instance v6, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-direct {v7, v3}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;-><init>([Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 388
    .local v7, "listenerChain":Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 390
    new-instance v5, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v5, v15, v0, v7, v1}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    .line 392
    .local v5, "upload":Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;
    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V

    .line 393
    .local v2, "uploadCallable":Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;
    new-instance v8, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v9, p0

    move-object v10, v5

    move-object v12, v2

    move-object/from16 v13, p1

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager;Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/services/s3/transfer/internal/UploadCallable;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V

    .line 394
    .local v8, "watcher":Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v8, v3}, Lcom/amazonaws/services/s3/transfer/internal/UploadMonitor;->setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 395
    invoke-virtual {v5, v8}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    .line 397
    return-object v5
.end method


# virtual methods
.method public abortMultipartUploads(Ljava/lang/String;Ljava/util/Date;)V
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v4, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v4, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v5, v4}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v3

    .line 844
    .local v3, "uploadListing":Lcom/amazonaws/services/s3/model/MultipartUploadListing;
    :cond_0
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getMultipartUploads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/MultipartUpload;

    .line 845
    .local v2, "upload":Lcom/amazonaws/services/s3/model/MultipartUpload;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getInitiated()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gez v4, :cond_1

    .line 846
    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v4, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p1, v6, v7}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    invoke-interface {v5, v4}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    goto :goto_0

    .line 851
    .end local v2    # "upload":Lcom/amazonaws/services/s3/model/MultipartUpload;
    :cond_2
    new-instance v4, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v4, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextUploadIdMarker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withUploadIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v1

    .line 854
    .local v1, "request":Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    iget-object v5, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    sget-object v4, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/amazonaws/services/s3/transfer/TransferManager;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v5, v4}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v3

    .line 855
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 856
    return-void
.end method

.method public appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 884
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TX;"
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/transfer/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->addClientMarker(Ljava/lang/String;)V

    .line 885
    return-object p1
.end method

.method public download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Download;
    .locals 1
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Download;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Download;
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 428
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/amazonaws/services/s3/transfer/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Download;

    move-result-object v0

    return-object v0
.end method

.method public downloadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/MultipleFileDownload;
    .locals 24
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "keyPrefix"    # Ljava/lang/String;
    .param p3, "destinationDirectory"    # Ljava/io/File;

    .prologue
    .line 559
    if-nez p2, :cond_0

    .line 560
    const-string p2, ""

    .line 562
    :cond_0
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 563
    .local v16, "objectSummaries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/S3ObjectSummary;>;"
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 564
    .local v10, "commonPrefixes":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 565
    const-wide/16 v22, 0x0

    .line 570
    .local v22, "totalSize":J
    :cond_1
    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 571
    .local v18, "prefix":Ljava/lang/String;
    const/4 v14, 0x0

    .line 574
    .local v14, "listObjectsResponse":Lcom/amazonaws/services/s3/model/ObjectListing;
    :cond_2
    if-nez v14, :cond_3

    .line 575
    new-instance v5, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v13

    .line 577
    .local v13, "listObjectsRequest":Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v5, v13}, Lcom/amazonaws/services/s3/AmazonS3;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v14

    .line 582
    .end local v13    # "listObjectsRequest":Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    :goto_0
    invoke-virtual {v14}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 586
    .local v19, "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v14}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 588
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getSize()J

    move-result-wide v5

    add-long v22, v22, v5

    goto :goto_1

    .line 579
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v5, v14}, Lcom/amazonaws/services/s3/AmazonS3;->listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v14

    goto :goto_0

    .line 591
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v19    # "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_4
    sget-object v5, Lcom/amazonaws/services/s3/transfer/TransferManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping download for object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " since it is also a virtual directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 596
    .end local v19    # "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_5
    invoke-virtual {v14}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 597
    invoke-virtual {v14}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 598
    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 600
    new-instance v4, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    .line 601
    .local v4, "transferProgress":Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    .line 602
    new-instance v15, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    invoke-direct {v15, v4}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    .line 604
    .local v15, "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v8, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "description":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;

    new-instance v5, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/amazonaws/services/s3/model/ProgressListener;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-direct {v5, v6}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;-><init>([Lcom/amazonaws/services/s3/model/ProgressListener;)V

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 609
    .local v2, "multipleFileDownload":Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;
    new-instance v5, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    invoke-direct {v5, v2, v8}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    .line 611
    new-instance v9, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    const/4 v5, 0x0

    invoke-direct {v9, v5}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V

    .line 612
    .local v9, "allTransfersQueuedLock":Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    new-instance v20, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;

    move-object/from16 v0, v20

    invoke-direct {v0, v9, v2}, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;)V

    .line 615
    .local v20, "stateChangeListener":Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 617
    .local v21, "summary":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-direct {v11, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 618
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    .line 619
    .local v17, "parentFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_6

    .line 620
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create parent directories for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 623
    :cond_6
    new-instance v5, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v11, v1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Download;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 628
    .end local v11    # "f":Ljava/io/File;
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v21    # "summary":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 629
    sget-object v5, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 640
    :goto_3
    return-object v2

    .line 635
    :cond_8
    monitor-enter v9

    .line 636
    const/4 v5, 0x1

    :try_start_0
    # setter for: Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z
    invoke-static {v9, v5}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->access$402(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Z)Z

    .line 637
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 638
    monitor-exit v9

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    return-object v0
.end method

.method public setConfiguration(Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->configuration:Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;

    .line 206
    return-void
.end method

.method public shutdownNow()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 876
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 878
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    instance-of v0, v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    check-cast v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->shutdown()V

    .line 881
    :cond_0
    return-void
.end method

.method public upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 1
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/transfer/Upload;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "objectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v0

    return-object v0
.end method

.method public uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "virtualDirectoryKeyPrefix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "includeSubdirectories"    # Z

    .prologue
    .line 720
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 721
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide a directory to upload"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 724
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 725
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, p3, v0, p4}, Lcom/amazonaws/services/s3/transfer/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    .line 726
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;

    move-result-object v1

    return-object v1
.end method

.method public uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;
    .locals 16
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "virtualDirectoryKeyPrefix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;"
        }
    .end annotation

    .prologue
    .line 753
    .local p4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 754
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must provide a common base directory for uploaded files"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 757
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 758
    :cond_2
    const-string p2, ""

    .line 763
    :cond_3
    :goto_0
    new-instance v3, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;-><init>()V

    .line 764
    .local v3, "transferProgress":Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
    new-instance v12, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;

    invoke-direct {v12, v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V

    .line 766
    .local v12, "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 767
    .local v7, "uploads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;>;"
    new-instance v1, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;

    const-string v2, "Uploading etc"

    const/4 v4, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 768
    .local v1, "multipleFileUpload":Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;
    new-instance v2, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    invoke-direct {v2, v1, v7}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V

    .line 770
    new-instance v8, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V

    .line 771
    .local v8, "allTransfersQueuedLock":Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    new-instance v13, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;

    invoke-direct {v13, v8, v1}, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;-><init>(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;)V

    .line 774
    .local v13, "stateChangeListener":Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;
    if-eqz p4, :cond_4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 775
    :cond_4
    sget-object v2, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 778
    :cond_5
    const-wide/16 v14, 0x0

    .line 779
    .local v14, "totalSize":J
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 781
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 782
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v14, v4

    .line 783
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\\\"

    const-string v5, "/"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 785
    .local v11, "key":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4, v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v12}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 759
    .end local v1    # "multipleFileUpload":Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;
    .end local v3    # "transferProgress":Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
    .end local v7    # "uploads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;>;"
    .end local v8    # "allTransfersQueuedLock":Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    .end local v13    # "stateChangeListener":Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;
    .end local v14    # "totalSize":J
    :cond_7
    const-string v2, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 791
    .restart local v1    # "multipleFileUpload":Lcom/amazonaws/services/s3/transfer/internal/MultipleFileUploadImpl;
    .restart local v3    # "transferProgress":Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
    .restart local v7    # "uploads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;>;"
    .restart local v8    # "allTransfersQueuedLock":Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "listener":Lcom/amazonaws/services/s3/model/ProgressListener;
    .restart local v13    # "stateChangeListener":Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;
    .restart local v14    # "totalSize":J
    :cond_8
    invoke-virtual {v3, v14, v15}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->setTotalBytesToTransfer(J)V

    .line 795
    monitor-enter v8

    .line 796
    const/4 v2, 0x1

    :try_start_0
    # setter for: Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z
    invoke-static {v8, v2}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->access$402(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Z)Z

    .line 797
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 798
    monitor-exit v8

    .line 800
    return-object v1

    .line 798
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
