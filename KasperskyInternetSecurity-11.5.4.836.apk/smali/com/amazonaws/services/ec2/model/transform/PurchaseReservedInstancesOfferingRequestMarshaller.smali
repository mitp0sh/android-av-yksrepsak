.class public Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;
.super Ljava/lang/Object;
.source "PurchaseReservedInstancesOfferingRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/Request;
    .locals 4
    .param p1, "purchaseReservedInstancesOfferingRequest"    # Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Invalid argument passed to marshall(...)"

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v2, "AmazonEC2"

    invoke-direct {v0, p1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;>;"
    const-string v2, "Action"

    const-string v3, "PurchaseReservedInstancesOffering"

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "Version"

    const-string v3, "2013-02-01"

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "ReservedInstancesOfferingId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 47
    const-string v2, "InstanceCount"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v1

    .line 50
    .local v1, "reservedInstanceLimitPriceLimitPrice":Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;
    if-eqz v1, :cond_4

    .line 51
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;->getAmount()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 52
    const-string v2, "LimitPrice.Amount"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;->getAmount()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 55
    const-string v2, "LimitPrice.CurrencyCode"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_4
    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
