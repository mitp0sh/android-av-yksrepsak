.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->deleteSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$deleteSpotDatafeedSubscriptionRequest:Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V
    .locals 0

    .prologue
    .line 6019
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;->val$deleteSpotDatafeedSubscriptionRequest:Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;

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
    .line 6019
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;->call()Ljava/lang/Void;

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
    .line 6021
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;->val$deleteSpotDatafeedSubscriptionRequest:Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->deleteSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V

    .line 6022
    const/4 v0, 0x0

    return-object v0
.end method
