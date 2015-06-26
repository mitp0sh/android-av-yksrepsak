.class Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;
.super Ljava/lang/Object;
.source "AmazonDynamoDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->deleteItemAsync(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$deleteItemRequest:Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->val$deleteItemRequest:Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1148
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->val$deleteItemRequest:Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->deleteItem(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1153
    .local v1, "result":Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->val$deleteItemRequest:Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1154
    return-object v1

    .line 1149
    .end local v1    # "result":Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1151
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
    .line 1144
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$22;->call()Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;

    move-result-object v0

    return-object v0
.end method
