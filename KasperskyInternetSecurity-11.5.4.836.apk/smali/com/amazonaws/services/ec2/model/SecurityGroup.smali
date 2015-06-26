.class public Lcom/amazonaws/services/ec2/model/SecurityGroup;
.super Ljava/lang/Object;
.source "SecurityGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private ipPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;"
        }
    .end annotation
.end field

.field private ipPermissionsEgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;"
        }
    .end annotation
.end field

.field private ownerId:Ljava/lang/String;

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

    .line 472
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 494
    :cond_0
    :goto_0
    return v3

    .line 473
    :cond_1
    if-eqz p1, :cond_0

    .line 475
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/SecurityGroup;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 476
    check-cast v0, Lcom/amazonaws/services/ec2/model/SecurityGroup;

    .line 478
    .local v0, "other":Lcom/amazonaws/services/ec2/model/SecurityGroup;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 494
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 478
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 480
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 482
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 484
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 486
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 488
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 490
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 492
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissions:Ljava/util/List;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getIpPermissionsEgress()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissionsEgress:Ljava/util/List;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissionsEgress:Ljava/util/List;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissionsEgress:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ownerId:Ljava/lang/String;

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
    .line 368
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->tags:Ljava/util/List;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVpcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->vpcId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 456
    const/16 v1, 0x1f

    .line 457
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 459
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 460
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 461
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 462
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 463
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 464
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 465
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 466
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 467
    return v0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 463
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 464
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    .line 465
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 466
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->description:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->groupId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->groupName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setIpPermissions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "ipPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissions:Ljava/util/List;

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v0, "ipPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public setIpPermissionsEgress(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "ipPermissionsEgress":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissionsEgress:Ljava/util/List;

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v0, "ipPermissionsEgressCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissionsEgress:Ljava/util/List;

    goto :goto_0
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ownerId:Ljava/lang/String;

    .line 69
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
    .line 380
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 381
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->tags:Ljava/util/List;

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVpcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->vpcId:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpPermissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpPermissionsEgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpcId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getVpcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->description:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public withGroupId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->groupId:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public withGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->groupName:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public withIpPermissions(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/SecurityGroup;"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "ipPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissions:Ljava/util/List;

    .line 255
    :goto_0
    return-object p0

    .line 250
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v0, "ipPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withIpPermissions([Lcom/amazonaws/services/ec2/model/IpPermission;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 6
    .param p1, "ipPermissions"    # [Lcom/amazonaws/services/ec2/model/IpPermission;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setIpPermissions(Ljava/util/Collection;)V

    .line 230
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/IpPermission;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 231
    .local v3, "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    :cond_1
    return-object p0
.end method

.method public withIpPermissionsEgress(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/SecurityGroup;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "ipPermissionsEgress":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissionsEgress:Ljava/util/List;

    .line 324
    :goto_0
    return-object p0

    .line 319
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v0, "ipPermissionsEgressCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ipPermissionsEgress:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withIpPermissionsEgress([Lcom/amazonaws/services/ec2/model/IpPermission;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 6
    .param p1, "ipPermissionsEgress"    # [Lcom/amazonaws/services/ec2/model/IpPermission;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setIpPermissionsEgress(Ljava/util/Collection;)V

    .line 299
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/IpPermission;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 300
    .local v3, "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    :cond_1
    return-object p0
.end method

.method public withOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->ownerId:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/SecurityGroup;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->tags:Ljava/util/List;

    .line 427
    :goto_0
    return-object p0

    .line 422
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setTags(Ljava/util/Collection;)V

    .line 402
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

    .line 403
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withVpcId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SecurityGroup;->vpcId:Ljava/lang/String;

    .line 357
    return-object p0
.end method
