.class Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;
.super Ljava/lang/Object;
.source "AmazonDynamoDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->describeTableAsync(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$describeTableRequest:Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->val$describeTableRequest:Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;

    iput-object p3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 731
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->this$0:Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->val$describeTableRequest:Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient;->describeTable(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 736
    .local v1, "result":Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->val$describeTableRequest:Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 737
    return-object v1

    .line 732
    .end local v1    # "result":Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;
    :catch_0
    move-exception v0

    .line 733
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 734
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
    .line 727
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBAsyncClient$12;->call()Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;

    move-result-object v0

    return-object v0
.end method
