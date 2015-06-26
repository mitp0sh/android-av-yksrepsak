.class Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;
.super Ljava/lang/Object;
.source "AmazonElasticLoadBalancingAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->applySecurityGroupsToLoadBalancerAsync(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

.field final synthetic val$applySecurityGroupsToLoadBalancerRequest:Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 2274
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->val$applySecurityGroupsToLoadBalancerRequest:Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;

    iput-object p3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2278
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->val$applySecurityGroupsToLoadBalancerRequest:Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->applySecurityGroupsToLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2283
    .local v1, "result":Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;
    iget-object v2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->val$applySecurityGroupsToLoadBalancerRequest:Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 2284
    return-object v1

    .line 2279
    .end local v1    # "result":Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;
    :catch_0
    move-exception v0

    .line 2280
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 2281
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
    .line 2274
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$44;->call()Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;

    move-result-object v0

    return-object v0
.end method
