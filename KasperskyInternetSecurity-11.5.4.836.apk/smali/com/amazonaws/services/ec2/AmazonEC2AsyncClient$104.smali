.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$describeInstancesRequest:Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 4417
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->val$describeInstancesRequest:Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;

    iput-object p3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4421
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->val$describeInstancesRequest:Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeInstances(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4426
    .local v1, "result":Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    iget-object v2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->val$describeInstancesRequest:Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 4427
    return-object v1

    .line 4422
    .end local v1    # "result":Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    :catch_0
    move-exception v0

    .line 4423
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 4424
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
    .line 4417
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;->call()Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    move-result-object v0

    return-object v0
.end method
