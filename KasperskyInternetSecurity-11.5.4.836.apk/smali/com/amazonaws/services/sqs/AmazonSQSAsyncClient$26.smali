.class Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;
.super Ljava/lang/Object;
.source "AmazonSQSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sqs/model/CreateQueueResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$createQueueRequest:Lcom/amazonaws/services/sqs/model/CreateQueueRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->val$createQueueRequest:Lcom/amazonaws/services/sqs/model/CreateQueueRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1422
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->val$createQueueRequest:Lcom/amazonaws/services/sqs/model/CreateQueueRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->createQueue(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1427
    .local v1, "result":Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->val$createQueueRequest:Lcom/amazonaws/services/sqs/model/CreateQueueRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1428
    return-object v1

    .line 1423
    .end local v1    # "result":Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1425
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
    .line 1418
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;->call()Lcom/amazonaws/services/sqs/model/CreateQueueResult;

    move-result-object v0

    return-object v0
.end method
