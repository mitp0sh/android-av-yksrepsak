.class Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;
.super Ljava/lang/Object;
.source "AmazonSQSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->getQueueUrlAsync(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$getQueueUrlRequest:Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->val$getQueueUrlRequest:Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 611
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->val$getQueueUrlRequest:Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->getQueueUrl(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 616
    .local v1, "result":Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->val$getQueueUrlRequest:Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 617
    return-object v1

    .line 612
    .end local v1    # "result":Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;
    :catch_0
    move-exception v0

    .line 613
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 614
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
    .line 607
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;->call()Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;

    move-result-object v0

    return-object v0
.end method
