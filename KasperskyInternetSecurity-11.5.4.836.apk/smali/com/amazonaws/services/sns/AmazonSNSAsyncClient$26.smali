.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->unsubscribeAsync(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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

.field final synthetic val$unsubscribeRequest:Lcom/amazonaws/services/sns/model/UnsubscribeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/UnsubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->val$unsubscribeRequest:Lcom/amazonaws/services/sns/model/UnsubscribeRequest;

    iput-object p3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

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
    .line 1256
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->call()Ljava/lang/Void;

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

    .line 1259
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->val$unsubscribeRequest:Lcom/amazonaws/services/sns/model/UnsubscribeRequest;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->unsubscribe(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->val$unsubscribeRequest:Lcom/amazonaws/services/sns/model/UnsubscribeRequest;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1265
    return-object v3

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1262
    throw v0
.end method
