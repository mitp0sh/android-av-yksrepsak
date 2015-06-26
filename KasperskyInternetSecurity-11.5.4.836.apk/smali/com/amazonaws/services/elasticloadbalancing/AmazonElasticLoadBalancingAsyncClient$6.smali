.class Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;
.super Ljava/lang/Object;
.source "AmazonElasticLoadBalancingAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->detachLoadBalancerFromSubnetsAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$detachLoadBalancerFromSubnetsRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->val$detachLoadBalancerFromSubnetsRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;

    iput-object p3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->val$detachLoadBalancerFromSubnetsRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->detachLoadBalancerFromSubnets(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 518
    .local v1, "result":Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;
    iget-object v2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->val$detachLoadBalancerFromSubnetsRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 519
    return-object v1

    .line 514
    .end local v1    # "result":Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 516
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
    .line 509
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$6;->call()Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;

    move-result-object v0

    return-object v0
.end method
