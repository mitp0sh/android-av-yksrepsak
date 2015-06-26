.class public Lcom/amazonaws/services/ec2/model/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allocationId:Ljava/lang/String;

.field private associationId:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private networkInterfaceId:Ljava/lang/String;

.field private networkInterfaceOwnerId:Ljava/lang/String;

.field private privateIpAddress:Ljava/lang/String;

.field private publicIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 437
    :cond_0
    :goto_0
    return v3

    .line 416
    :cond_1
    if-eqz p1, :cond_0

    .line 418
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Address;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 419
    check-cast v0, Lcom/amazonaws/services/ec2/model/Address;

    .line 421
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Address;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 437
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 421
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 423
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 425
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 427
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 429
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 431
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 433
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 435
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
.end method

.method public getAllocationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->allocationId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->associationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterfaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->networkInterfaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterfaceOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->networkInterfaceOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->publicIp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 399
    const/16 v1, 0x1f

    .line 400
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 402
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 403
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 404
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 405
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 406
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 407
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 408
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 409
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 410
    return v0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 405
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 407
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 408
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 409
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setAllocationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "allocationId"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->allocationId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setAssociationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "associationId"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->associationId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setDomain(Lcom/amazonaws/services/ec2/model/DomainType;)V
    .locals 1
    .param p1, "domain"    # Lcom/amazonaws/services/ec2/model/DomainType;

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DomainType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->domain:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->domain:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->instanceId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setNetworkInterfaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->networkInterfaceId:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setNetworkInterfaceOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInterfaceOwnerId"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->networkInterfaceOwnerId:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->privateIpAddress:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setPublicIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicIp"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->publicIp:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllocationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAllocationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssociationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getAssociationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaceOwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getNetworkInterfaceOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Address;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAllocationId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "allocationId"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->allocationId:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public withAssociationId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "associationId"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->associationId:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public withDomain(Lcom/amazonaws/services/ec2/model/DomainType;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 1
    .param p1, "domain"    # Lcom/amazonaws/services/ec2/model/DomainType;

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DomainType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Address;->domain:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public withDomain(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->domain:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->instanceId:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public withNetworkInterfaceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "networkInterfaceId"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->networkInterfaceId:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public withNetworkInterfaceOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "networkInterfaceOwnerId"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->networkInterfaceOwnerId:Ljava/lang/String;

    .line 335
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->privateIpAddress:Ljava/lang/String;

    .line 369
    return-object p0
.end method

.method public withPublicIp(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Address;
    .locals 0
    .param p1, "publicIp"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Address;->publicIp:Ljava/lang/String;

    .line 111
    return-object p0
.end method
