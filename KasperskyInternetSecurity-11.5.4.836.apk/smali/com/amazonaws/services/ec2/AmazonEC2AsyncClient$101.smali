.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describePlacementGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$describePlacementGroupsRequest:Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)V
    .locals 0

    .prologue
    .line 4283
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;->val$describePlacementGroupsRequest:Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4285
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;->val$describePlacementGroupsRequest:Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describePlacementGroups(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;

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
    .line 4283
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;->call()Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;

    move-result-object v0

    return-object v0
.end method
