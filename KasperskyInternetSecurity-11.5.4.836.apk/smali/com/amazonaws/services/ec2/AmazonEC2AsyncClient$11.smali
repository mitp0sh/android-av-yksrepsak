.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->unmonitorInstancesAsync(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$unmonitorInstancesRequest:Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;->val$unmonitorInstancesRequest:Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;->val$unmonitorInstancesRequest:Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->unmonitorInstances(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;

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
    .line 666
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;->call()Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;

    move-result-object v0

    return-object v0
.end method
