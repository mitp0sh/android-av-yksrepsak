.class public Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;
.super Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;
.source "AmazonSimpleDBAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 103
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 169
    iput-object p3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 143
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 188
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 235
    iput-object p3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 209
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 210
    return-void
.end method


# virtual methods
.method public batchDeleteAttributesAsync(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchDeleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$5;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public batchDeleteAttributesAsync(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchDeleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 645
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$6;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public batchPutAttributesAsync(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchPutAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$17;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public batchPutAttributesAsync(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchPutAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1335
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$18;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createDomainAsync(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createDomainRequest"    # Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$9;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createDomainAsync(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createDomainRequest"    # Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 835
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteAttributesAsync(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteAttributesAsync(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 942
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$12;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteDomainAsync(Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteDomainRequest"    # Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$7;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteDomainAsync(Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteDomainRequest"    # Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 732
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$8;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public domainMetadataAsync(Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "domainMetadataRequest"    # Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$19;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public domainMetadataAsync(Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "domainMetadataRequest"    # Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;",
            "Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1409
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$20;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getAttributesAsync(Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/GetAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$15;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getAttributesAsync(Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;",
            "Lcom/amazonaws/services/simpledb/model/GetAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/GetAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1121
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;Lcom/amazonaws/services/simpledb/model/GetAttributesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$16;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public listDomainsAsync(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listDomainsRequest"    # Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ListDomainsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$13;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listDomainsAsync(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listDomainsRequest"    # Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;",
            "Lcom/amazonaws/services/simpledb/model/ListDomainsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ListDomainsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1026
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;Lcom/amazonaws/services/simpledb/model/ListDomainsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putAttributesAsync(Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$3;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putAttributesAsync(Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 520
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$4;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public selectAsync(Lcom/amazonaws/services/simpledb/model/SelectRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "selectRequest"    # Lcom/amazonaws/services/simpledb/model/SelectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/SelectRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/SelectResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$1;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/SelectRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public selectAsync(Lcom/amazonaws/services/simpledb/model/SelectRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "selectRequest"    # Lcom/amazonaws/services/simpledb/model/SelectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/SelectRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpledb/model/SelectRequest;",
            "Lcom/amazonaws/services/simpledb/model/SelectResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpledb/model/SelectResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 346
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/simpledb/model/SelectRequest;Lcom/amazonaws/services/simpledb/model/SelectResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$2;-><init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/SelectRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->shutdown()V

    .line 259
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 260
    return-void
.end method
