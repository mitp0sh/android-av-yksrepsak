.class public Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;
.super Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;
.source "AmazonDynamoDBAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 95
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 113
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 161
    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 135
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 180
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 227
    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 201
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 202
    return-void
.end method


# virtual methods
.method public batchGetItemAsync(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchGetItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;",
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
    .line 1284
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public batchGetItemAsync(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchGetItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;",
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
    .line 1336
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$26;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public batchWriteItemAsync(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchWriteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;",
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
    .line 438
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$5;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public batchWriteItemAsync(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "batchWriteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;",
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
    .line 478
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createTableAsync(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createTableRequest"    # Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableResult;",
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
    .line 854
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$15;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createTableAsync(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createTableRequest"    # Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableResult;",
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
    .line 901
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;Lcom/amazonaws/services/dynamodb/model/CreateTableResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$16;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteItemAsync(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;",
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
    .line 1105
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$21;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteItemAsync(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;",
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
    .line 1144
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTableAsync(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteTableRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;",
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
    .line 1023
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$19;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTableAsync(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteTableRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;",
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
    .line 1065
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$20;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTableAsync(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeTableRequest"    # Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;",
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
    .line 687
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$11;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTableAsync(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeTableRequest"    # Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;",
            "Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;",
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
    .line 727
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getItemAsync(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getItemRequest"    # Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/GetItemResult;",
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
    .line 1188
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$23;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getItemAsync(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getItemRequest"    # Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;",
            "Lcom/amazonaws/services/dynamodb/model/GetItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/GetItemResult;",
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
    .line 1231
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/GetItemRequest;Lcom/amazonaws/services/dynamodb/model/GetItemResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$24;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/GetItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listTablesAsync(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listTablesRequest"    # Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesResult;",
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
    .line 276
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$1;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listTablesAsync(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listTablesRequest"    # Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesResult;",
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
    .line 312
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;Lcom/amazonaws/services/dynamodb/model/ListTablesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$2;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putItemAsync(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putItemRequest"    # Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/PutItemResult;",
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
    .line 603
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$9;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putItemAsync(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putItemRequest"    # Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;",
            "Lcom/amazonaws/services/dynamodb/model/PutItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/PutItemResult;",
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
    .line 646
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/PutItemRequest;Lcom/amazonaws/services/dynamodb/model/PutItemResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$10;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/PutItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public queryAsync(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "queryRequest"    # Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/QueryRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/QueryResult;",
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
    .line 355
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$3;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/QueryRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public queryAsync(Lcom/amazonaws/services/dynamodb/model/QueryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "queryRequest"    # Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/QueryRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/QueryRequest;",
            "Lcom/amazonaws/services/dynamodb/model/QueryResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/QueryResult;",
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
    .line 397
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/QueryRequest;Lcom/amazonaws/services/dynamodb/model/QueryResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$4;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/QueryRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public scanAsync(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "scanRequest"    # Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ScanResult;",
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
    .line 767
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$13;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/ScanRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public scanAsync(Lcom/amazonaws/services/dynamodb/model/ScanRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "scanRequest"    # Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
            "Lcom/amazonaws/services/dynamodb/model/ScanResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ScanResult;",
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
    .line 806
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/ScanRequest;Lcom/amazonaws/services/dynamodb/model/ScanResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$14;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/ScanRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->shutdown()V

    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 252
    return-void
.end method

.method public updateItemAsync(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "updateItemRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;",
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
    .line 519
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$7;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateItemAsync(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "updateItemRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;",
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
    .line 559
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateTableAsync(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "updateTableRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;",
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
    .line 941
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$17;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateTableAsync(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "updateTableRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;",
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
    .line 980
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$18;-><init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
