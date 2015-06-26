.class Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;
.super Ljava/lang/Object;
.source "AmazonSQSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->getQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$getQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->val$getQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->val$getQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 834
    .local v1, "result":Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->val$getQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 835
    return-object v1

    .line 830
    .end local v1    # "result":Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;
    :catch_0
    move-exception v0

    .line 831
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 832
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
    .line 825
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;->call()Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    move-result-object v0

    return-object v0
.end method
