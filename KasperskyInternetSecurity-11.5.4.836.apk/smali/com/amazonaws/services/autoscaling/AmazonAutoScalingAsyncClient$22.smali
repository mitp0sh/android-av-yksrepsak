.class Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;
.super Ljava/lang/Object;
.source "AmazonAutoScalingAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->describeTagsAsync(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$describeTagsRequest:Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->val$describeTagsRequest:Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;

    iput-object p3, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1190
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->val$describeTagsRequest:Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->describeTags(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1195
    .local v1, "result":Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    iget-object v2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->val$describeTagsRequest:Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1196
    return-object v1

    .line 1191
    .end local v1    # "result":Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1193
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
    .line 1186
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$22;->call()Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;

    move-result-object v0

    return-object v0
.end method
