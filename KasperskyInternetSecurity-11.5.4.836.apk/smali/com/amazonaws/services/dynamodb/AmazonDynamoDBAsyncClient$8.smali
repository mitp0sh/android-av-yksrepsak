.class Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;
.super Ljava/lang/Object;
.source "AmazonDynamoDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->updateItemAsync(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$updateItemRequest:Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->val$updateItemRequest:Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;

    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 563
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->val$updateItemRequest:Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->updateItem(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 568
    .local v1, "result":Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->val$updateItemRequest:Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 569
    return-object v1

    .line 564
    .end local v1    # "result":Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 566
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
    .line 559
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$8;->call()Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;

    move-result-object v0

    return-object v0
.end method
