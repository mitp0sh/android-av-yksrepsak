.class Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;
.super Ljava/lang/Object;
.source "AmazonAutoScalingAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->terminateInstanceInAutoScalingGroupAsync(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

.field final synthetic val$terminateInstanceInAutoScalingGroupRequest:Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)V
    .locals 0

    .prologue
    .line 3105
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;->val$terminateInstanceInAutoScalingGroupRequest:Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;->val$terminateInstanceInAutoScalingGroupRequest:Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->terminateInstanceInAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;

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
    .line 3105
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$67;->call()Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;

    move-result-object v0

    return-object v0
.end method
