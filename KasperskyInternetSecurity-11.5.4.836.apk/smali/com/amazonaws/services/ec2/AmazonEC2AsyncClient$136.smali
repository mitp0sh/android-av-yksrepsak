.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->purchaseReservedInstancesOfferingAsync(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$purchaseReservedInstancesOfferingRequest:Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 5819
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->val$purchaseReservedInstancesOfferingRequest:Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;

    iput-object p3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5823
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->val$purchaseReservedInstancesOfferingRequest:Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->purchaseReservedInstancesOffering(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5828
    .local v1, "result":Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;
    iget-object v2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->val$purchaseReservedInstancesOfferingRequest:Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 5829
    return-object v1

    .line 5824
    .end local v1    # "result":Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;
    :catch_0
    move-exception v0

    .line 5825
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 5826
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
    .line 5819
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;->call()Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;

    move-result-object v0

    return-object v0
.end method
