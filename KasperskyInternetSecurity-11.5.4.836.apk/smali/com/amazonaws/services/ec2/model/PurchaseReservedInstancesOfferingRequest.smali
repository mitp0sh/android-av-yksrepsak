.class public Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PurchaseReservedInstancesOfferingRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private instanceCount:Ljava/lang/Integer;

.field private limitPrice:Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

.field private reservedInstancesOfferingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "reservedInstancesOfferingId"    # Ljava/lang/String;
    .param p2, "instanceCount"    # Ljava/lang/Integer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->reservedInstancesOfferingId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->instanceCount:Ljava/lang/Integer;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 211
    :cond_0
    :goto_0
    return v3

    .line 200
    :cond_1
    if-eqz p1, :cond_0

    .line 202
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 203
    check-cast v0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;

    .line 205
    .local v0, "other":Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 211
    goto :goto_0

    :cond_5
    move v1, v3

    .line 205
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 207
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 209
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getInstanceCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->instanceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->limitPrice:Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    return-object v0
.end method

.method public getReservedInstancesOfferingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->reservedInstancesOfferingId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 188
    const/16 v1, 0x1f

    .line 189
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 191
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 192
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 194
    return v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setInstanceCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "instanceCount"    # Ljava/lang/Integer;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->instanceCount:Ljava/lang/Integer;

    .line 115
    return-void
.end method

.method public setLimitPrice(Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;)V
    .locals 0
    .param p1, "limitPrice"    # Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->limitPrice:Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    .line 149
    return-void
.end method

.method public setReservedInstancesOfferingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedInstancesOfferingId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->reservedInstancesOfferingId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservedInstancesOfferingId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LimitPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->getLimitPrice()Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withInstanceCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;
    .locals 0
    .param p1, "instanceCount"    # Ljava/lang/Integer;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->instanceCount:Ljava/lang/Integer;

    .line 129
    return-object p0
.end method

.method public withLimitPrice(Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;)Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;
    .locals 0
    .param p1, "limitPrice"    # Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->limitPrice:Lcom/amazonaws/services/ec2/model/ReservedInstanceLimitPrice;

    .line 163
    return-object p0
.end method

.method public withReservedInstancesOfferingId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;
    .locals 0
    .param p1, "reservedInstancesOfferingId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;->reservedInstancesOfferingId:Ljava/lang/String;

    .line 95
    return-object p0
.end method
