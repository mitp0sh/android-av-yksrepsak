.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->subscribeAsync(Lcom/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sns/model/SubscribeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$subscribeRequest:Lcom/amazonaws/services/sns/model/SubscribeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->val$subscribeRequest:Lcom/amazonaws/services/sns/model/SubscribeRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sns/model/SubscribeResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 483
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->val$subscribeRequest:Lcom/amazonaws/services/sns/model/SubscribeRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->subscribe(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/services/sns/model/SubscribeResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 488
    .local v1, "result":Lcom/amazonaws/services/sns/model/SubscribeResult;
    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->val$subscribeRequest:Lcom/amazonaws/services/sns/model/SubscribeRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 489
    return-object v1

    .line 484
    .end local v1    # "result":Lcom/amazonaws/services/sns/model/SubscribeResult;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 486
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
    .line 479
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;->call()Lcom/amazonaws/services/sns/model/SubscribeResult;

    move-result-object v0

    return-object v0
.end method
