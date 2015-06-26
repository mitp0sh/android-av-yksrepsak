.class Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;
.super Ljava/lang/Object;
.source "AmazonCloudWatchAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$describeAlarmsRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->val$describeAlarmsRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 907
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->val$describeAlarmsRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarms(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 912
    .local v1, "result":Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->val$describeAlarmsRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 913
    return-object v1

    .line 908
    .end local v1    # "result":Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    :catch_0
    move-exception v0

    .line 909
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 910
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
    .line 903
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;->call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;

    move-result-object v0

    return-object v0
.end method
