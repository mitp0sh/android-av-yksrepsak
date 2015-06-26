.class public Lcom/amazonaws/services/ec2/model/Vpc;
.super Ljava/lang/Object;
.source "Vpc.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cidrBlock:Ljava/lang/String;

.field private dhcpOptionsId:Ljava/lang/String;

.field private instanceTenancy:Ljava/lang/String;

.field private isDefault:Ljava/lang/Boolean;

.field private state:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private vpcId:Ljava/lang/String;


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

    .line 403
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 423
    :cond_0
    :goto_0
    return v3

    .line 404
    :cond_1
    if-eqz p1, :cond_0

    .line 406
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Vpc;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 407
    check-cast v0, Lcom/amazonaws/services/ec2/model/Vpc;

    .line 409
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Vpc;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v3, v2

    .line 423
    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 409
    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 411
    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 413
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 415
    goto/16 :goto_7

    :cond_10
    move v4, v3

    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 417
    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto :goto_a

    :cond_13
    move v1, v3

    .line 419
    goto :goto_b

    :cond_14
    move v4, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 421
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e
.end method

.method public getCidrBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->cidrBlock:Ljava/lang/String;

    return-object v0
.end method

.method public getDhcpOptionsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->dhcpOptionsId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceTenancy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->instanceTenancy:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefault()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->tags:Ljava/util/List;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVpcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->vpcId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 388
    const/16 v1, 0x1f

    .line 389
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 391
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 392
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 393
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 394
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 395
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 396
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 397
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_6
    add-int v0, v2, v3

    .line 398
    return v0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 393
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 395
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 396
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 397
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public isDefault()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCidrBlock(Ljava/lang/String;)V
    .locals 0
    .param p1, "cidrBlock"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->cidrBlock:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setDhcpOptionsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dhcpOptionsId"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->dhcpOptionsId:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setInstanceTenancy(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->instanceTenancy:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setIsDefault(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isDefault"    # Ljava/lang/Boolean;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault:Ljava/lang/Boolean;

    .line 336
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->state:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->tags:Ljava/util/List;

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVpcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->vpcId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpcId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CidrBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getCidrBlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DhcpOptionsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getDhcpOptionsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceTenancy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsDefault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCidrBlock(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 0
    .param p1, "cidrBlock"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->cidrBlock:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public withDhcpOptionsId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 0
    .param p1, "dhcpOptionsId"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->dhcpOptionsId:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public withInstanceTenancy(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->instanceTenancy:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public withIsDefault(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 0
    .param p1, "isDefault"    # Ljava/lang/Boolean;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->isDefault:Ljava/lang/Boolean;

    .line 350
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->state:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Vpc;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->tags:Ljava/util/List;

    .line 283
    :goto_0
    return-object p0

    .line 278
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Vpc;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Vpc;->setTags(Ljava/util/Collection;)V

    .line 258
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Tag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 259
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Vpc;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withVpcId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Vpc;
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Vpc;->vpcId:Ljava/lang/String;

    .line 93
    return-object p0
.end method
