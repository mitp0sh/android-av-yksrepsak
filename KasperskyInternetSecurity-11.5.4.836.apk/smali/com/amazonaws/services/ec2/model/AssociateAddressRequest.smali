.class public Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AssociateAddressRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allocationId:Ljava/lang/String;

.field private allowReassociation:Ljava/lang/Boolean;

.field private instanceId:Ljava/lang/String;

.field private networkInterfaceId:Ljava/lang/String;

.field private privateIpAddress:Ljava/lang/String;

.field private publicIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "publicIp"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->instanceId:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->publicIp:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 333
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 351
    :cond_0
    :goto_0
    return v3

    .line 334
    :cond_1
    if-eqz p1, :cond_0

    .line 336
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 337
    check-cast v0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;

    .line 339
    .local v0, "other":Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 351
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 339
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 341
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 343
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 345
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 347
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 349
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAllocationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->allocationId:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowReassociation()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->allowReassociation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterfaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->networkInterfaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->publicIp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 319
    const/16 v1, 0x1f

    .line 320
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 322
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 323
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 324
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 325
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 326
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 327
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 328
    return v0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 326
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 327
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public isAllowReassociation()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->allowReassociation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllocationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "allocationId"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->allocationId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setAllowReassociation(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowReassociation"    # Ljava/lang/Boolean;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->allowReassociation:Ljava/lang/Boolean;

    .line 268
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->instanceId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setNetworkInterfaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->networkInterfaceId:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->privateIpAddress:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setPublicIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicIp"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->publicIp:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllocationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getAllocationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowReassociation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->isAllowReassociation()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAllocationId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    .locals 0
    .param p1, "allocationId"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->allocationId:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public withAllowReassociation(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    .locals 0
    .param p1, "allowReassociation"    # Ljava/lang/Boolean;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->allowReassociation:Ljava/lang/Boolean;

    .line 282
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->instanceId:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public withNetworkInterfaceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->networkInterfaceId:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->privateIpAddress:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public withPublicIp(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    .locals 0
    .param p1, "publicIp"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;->publicIp:Ljava/lang/String;

    .line 140
    return-object p0
.end method
