.class Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;
.super Ljava/lang/Object;
.source "AmazonCloudWatchAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarmHistoryAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$describeAlarmHistoryRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->val$describeAlarmHistoryRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1069
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->val$describeAlarmHistoryRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarmHistory(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1074
    .local v1, "result":Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->val$describeAlarmHistoryRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1075
    return-object v1

    .line 1070
    .end local v1    # "result":Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1072
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
    .line 1065
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;->call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;

    move-result-object v0

    return-object v0
.end method
