.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->setSubscriptionAttributesAsync(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$setSubscriptionAttributesRequest:Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->val$setSubscriptionAttributesRequest:Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

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
    .line 861
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->call()Ljava/lang/Void;

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

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->val$setSubscriptionAttributesRequest:Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->setSubscriptionAttributes(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->val$setSubscriptionAttributesRequest:Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 870
    return-object v3

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 867
    throw v0
.end method
