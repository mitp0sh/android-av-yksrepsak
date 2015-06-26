.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->listTopicsAsync(Lcom/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/sns/model/ListTopicsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$listTopicsRequest:Lcom/amazonaws/services/sns/model/ListTopicsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->val$listTopicsRequest:Lcom/amazonaws/services/sns/model/ListTopicsRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1174
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->val$listTopicsRequest:Lcom/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->listTopics(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/services/sns/model/ListTopicsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1179
    .local v1, "result":Lcom/amazonaws/services/sns/model/ListTopicsResult;
    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->val$listTopicsRequest:Lcom/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1180
    return-object v1

    .line 1175
    .end local v1    # "result":Lcom/amazonaws/services/sns/model/ListTopicsResult;
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1177
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
    .line 1170
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;->call()Lcom/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object v0

    return-object v0
.end method
