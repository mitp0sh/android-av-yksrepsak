.class Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;
.super Ljava/lang/Object;
.source "AmazonCloudWatchAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarmHistoryAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Ljava/util/concurrent/Future;
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

.field final synthetic val$describeAlarmHistoryRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;->val$describeAlarmHistoryRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;->val$describeAlarmHistoryRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarmHistory(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;->call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;

    move-result-object v0

    return-object v0
.end method
