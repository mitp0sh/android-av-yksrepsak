.class Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;
.super Ljava/lang/Object;
.source "AmazonDynamoDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->batchGetItemAsync(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

.field final synthetic val$batchGetItemRequest:Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)V
    .locals 0

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;->val$batchGetItemRequest:Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;->val$batchGetItemRequest:Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->batchGetItem(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$25;->call()Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;

    move-result-object v0

    return-object v0
.end method
