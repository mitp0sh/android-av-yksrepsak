.class Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;
.super Ljava/lang/Object;
.source "AmazonSQSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->setQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$setQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->val$setQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->val$setQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->setQueueAttributes(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->val$setQueueAttributesRequest:Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 332
    return-object v3

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 329
    throw v0
.end method
