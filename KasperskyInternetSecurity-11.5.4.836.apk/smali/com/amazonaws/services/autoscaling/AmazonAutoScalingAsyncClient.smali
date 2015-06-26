.class public Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;
.super Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;
.source "AmazonAutoScalingAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 111
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 129
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 177
    iput-object p3, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 151
    iput-object p2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 196
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 243
    iput-object p3, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 244
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 217
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 218
    return-void
.end method


# virtual methods
.method public createAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;",
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
    .line 796
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$13;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;",
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
    .line 841
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$14;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createLaunchConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createLaunchConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
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
    .line 2190
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$47;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$47;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createLaunchConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createLaunchConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
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
    .line 2242
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$48;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$48;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createOrUpdateTagsAsync(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createOrUpdateTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;",
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
    .line 1908
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$41;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$41;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createOrUpdateTagsAsync(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createOrUpdateTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;",
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
    .line 1951
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$42;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;",
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
    .line 2285
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$49;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$49;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;",
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
    .line 2329
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$50;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$50;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteLaunchConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteLaunchConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;",
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
    .line 555
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$7;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteLaunchConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteLaunchConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;",
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
    .line 598
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$8;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteNotificationConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteNotificationConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;",
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
    .line 1603
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$33;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$33;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteNotificationConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteNotificationConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;",
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
    .line 1641
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$34;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deletePolicyAsync(Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deletePolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;",
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
    .line 1530
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$31;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$31;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deletePolicyAsync(Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deletePolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;",
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
    .line 1566
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$32;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteScheduledActionAsync(Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteScheduledActionRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;",
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
    .line 1679
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$35;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$35;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteScheduledActionAsync(Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteScheduledActionRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;",
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
    .line 1718
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$36;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$36;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTagsAsync(Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;",
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
    .line 1295
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$25;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTagsAsync(Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;",
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
    .line 1331
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$26;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAdjustmentTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAdjustmentTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;",
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
    .line 2656
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$57;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$57;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAdjustmentTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAdjustmentTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;",
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
    .line 2694
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$58;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$58;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingGroupsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAutoScalingGroupsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;",
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
    .line 301
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$1;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingGroupsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAutoScalingGroupsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;",
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
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$2;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingInstancesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAutoScalingInstancesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;",
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
    .line 2093
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$45;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$45;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingInstancesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAutoScalingInstancesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;",
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
    .line 2138
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$46;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$46;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingNotificationTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAutoScalingNotificationTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;",
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
    .line 1827
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$39;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$39;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingNotificationTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAutoScalingNotificationTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;",
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
    .line 1865
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$40;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$40;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeLaunchConfigurationsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeLaunchConfigurationsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;",
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
    .line 2575
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$55;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$55;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeLaunchConfigurationsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeLaunchConfigurationsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;",
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
    .line 2617
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$56;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$56;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeMetricCollectionTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeMetricCollectionTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;",
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
    .line 2891
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$63;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$63;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeMetricCollectionTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeMetricCollectionTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;",
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
    .line 2929
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$64;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$64;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeNotificationConfigurationsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeNotificationConfigurationsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;",
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
    .line 978
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$17;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeNotificationConfigurationsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeNotificationConfigurationsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;",
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
    .line 1016
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$18;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describePoliciesAsync(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describePoliciesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;",
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
    .line 636
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$9;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describePoliciesAsync(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describePoliciesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;",
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
    .line 674
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$10;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingActivitiesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeScalingActivitiesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;",
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
    .line 890
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$15;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingActivitiesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeScalingActivitiesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;",
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
    .line 939
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$16;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingProcessTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeScalingProcessTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;",
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
    .line 713
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$11;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingProcessTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeScalingProcessTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;",
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
    .line 751
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$12;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeScheduledActionsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeScheduledActionsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;",
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
    .line 2734
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$59;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$59;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeScheduledActionsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeScheduledActionsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;",
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
    .line 2773
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$60;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$60;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTagsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;",
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
    .line 1139
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$21;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTagsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;",
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
    .line 1186
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTerminationPolicyTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeTerminationPolicyTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;",
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
    .line 1054
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTerminationPolicyTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeTerminationPolicyTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;",
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
    .line 1091
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$20;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disableMetricsCollectionAsync(Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "disableMetricsCollectionRequest"    # Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;",
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
    .line 2369
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$51;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$51;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disableMetricsCollectionAsync(Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "disableMetricsCollectionRequest"    # Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;",
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
    .line 2410
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$52;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$52;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableMetricsCollectionAsync(Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "enableMetricsCollectionRequest"    # Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;",
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
    .line 393
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$3;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableMetricsCollectionAsync(Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "enableMetricsCollectionRequest"    # Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;",
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
    .line 440
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$4;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public executePolicyAsync(Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "executePolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;",
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
    .line 1223
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$23;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public executePolicyAsync(Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "executePolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;",
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
    .line 1260
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$24;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public putNotificationConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putNotificationConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;",
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
    .line 1451
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$29;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$29;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putNotificationConfigurationAsync(Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putNotificationConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;",
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
    .line 1495
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$30;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putScalingPolicyAsync(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putScalingPolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;",
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
    .line 1369
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putScalingPolicyAsync(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putScalingPolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;",
            "Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;",
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
    .line 1407
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$28;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putScheduledUpdateGroupActionAsync(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putScheduledUpdateGroupActionRequest"    # Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;",
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
    .line 2813
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$61;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$61;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putScheduledUpdateGroupActionAsync(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putScheduledUpdateGroupActionRequest"    # Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;",
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
    .line 2853
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$62;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resumeProcessesAsync(Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "resumeProcessesRequest"    # Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;",
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
    .line 476
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$5;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resumeProcessesAsync(Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "resumeProcessesRequest"    # Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;",
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
    .line 513
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$6;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setDesiredCapacityAsync(Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setDesiredCapacityRequest"    # Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;",
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
    .line 2996
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$65;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$65;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setDesiredCapacityAsync(Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setDesiredCapacityRequest"    # Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;",
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
    .line 3063
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$66;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$66;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setInstanceHealthAsync(Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setInstanceHealthRequest"    # Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;",
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
    .line 1753
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$37;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$37;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setInstanceHealthAsync(Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setInstanceHealthRequest"    # Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;",
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
    .line 1789
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$38;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->shutdown()V

    .line 267
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 268
    return-void
.end method

.method public suspendProcessesAsync(Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "suspendProcessesRequest"    # Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;",
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
    .line 1999
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$43;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$43;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public suspendProcessesAsync(Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "suspendProcessesRequest"    # Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;",
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
    .line 2048
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$44;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$44;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public terminateInstanceInAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "terminateInstanceInAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;",
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
    .line 3105
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public terminateInstanceInAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "terminateInstanceInAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;",
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
    .line 3147
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$68;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$68;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "updateAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;",
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
    .line 2471
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$53;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$53;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "updateAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;",
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
    .line 2533
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$54;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$54;-><init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
