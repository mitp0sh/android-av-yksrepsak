.class Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;
.super Ljava/lang/Object;
.source "AmazonCloudWatchAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->setAlarmStateAsync(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

.field final synthetic val$setAlarmStateRequest:Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;->val$setAlarmStateRequest:Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;

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
    .line 1251
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;->val$setAlarmStateRequest:Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->setAlarmState(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)V

    .line 1254
    const/4 v0, 0x0

    return-object v0
.end method
