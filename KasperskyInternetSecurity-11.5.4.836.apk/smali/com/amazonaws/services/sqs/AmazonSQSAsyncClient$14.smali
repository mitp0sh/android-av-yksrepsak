.class Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;
.super Ljava/lang/Object;
.source "AmazonSQSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->sendMessageBatchAsync(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$sendMessageBatchRequest:Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->val$sendMessageBatchRequest:Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 904
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->val$sendMessageBatchRequest:Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->sendMessageBatch(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 909
    .local v1, "result":Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->val$sendMessageBatchRequest:Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 910
    return-object v1

    .line 905
    .end local v1    # "result":Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    :catch_0
    move-exception v0

    .line 906
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 907
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
    .line 900
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;->call()Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    move-result-object v0

    return-object v0
.end method
