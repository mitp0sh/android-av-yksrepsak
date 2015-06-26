.class public Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;
.super Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;
.source "AWSSecurityTokenServiceAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 113
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 179
    iput-object p3, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 153
    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 198
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 245
    iput-object p3, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 246
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 219
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 220
    return-void
.end method


# virtual methods
.method public assumeRoleAsync(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "assumeRoleRequest"    # Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
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
    .line 546
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$5;-><init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public assumeRoleAsync(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "assumeRoleRequest"    # Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
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
    .line 616
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;-><init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getFederationTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getFederationTokenRequest"    # Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;",
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
    .line 417
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$3;-><init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getFederationTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getFederationTokenRequest"    # Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;",
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
    .line 475
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$4;-><init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSessionTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getSessionTokenRequest"    # Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
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
    .line 308
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$1;-><init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSessionTokenAsync(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getSessionTokenRequest"    # Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
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
    .line 358
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$2;-><init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->shutdown()V

    .line 269
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 270
    return-void
.end method
