.class Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;
.super Ljava/lang/Object;
.source "AmazonDynamoDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->batchWriteItemAsync(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$batchWriteItemRequest:Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->val$batchWriteItemRequest:Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;

    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->val$batchWriteItemRequest:Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->batchWriteItem(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 487
    .local v1, "result":Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->val$batchWriteItemRequest:Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 488
    return-object v1

    .line 483
    .end local v1    # "result":Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 485
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
    .line 478
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$6;->call()Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;

    move-result-object v0

    return-object v0
.end method
