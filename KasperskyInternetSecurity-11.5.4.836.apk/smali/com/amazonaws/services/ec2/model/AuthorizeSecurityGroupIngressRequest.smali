.class public Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AuthorizeSecurityGroupIngressRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cidrIp:Ljava/lang/String;

.field private fromPort:Ljava/lang/Integer;

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

.field private ipProtocol:Ljava/lang/String;

.field private sourceSecurityGroupName:Ljava/lang/String;

.field private sourceSecurityGroupOwnerId:Ljava/lang/String;

.field private toPort:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "ipPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 111
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 540
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 564
    :cond_0
    :goto_0
    return v3

    .line 541
    :cond_1
    if-eqz p1, :cond_0

    .line 543
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 544
    check-cast v0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;

    .line 546
    .local v0, "other":Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 563
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    move v3, v2

    .line 564
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 546
    goto/16 :goto_1

    :cond_c
    move v4, v3

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 548
    goto/16 :goto_3

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 550
    goto/16 :goto_5

    :cond_10
    move v4, v3

    goto/16 :goto_6

    :cond_11
    move v1, v3

    .line 552
    goto/16 :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_8

    :cond_13
    move v1, v3

    .line 554
    goto/16 :goto_9

    :cond_14
    move v4, v3

    goto/16 :goto_a

    :cond_15
    move v1, v3

    .line 556
    goto/16 :goto_b

    :cond_16
    move v4, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 558
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v1, v3

    .line 560
    goto :goto_f

    :cond_1a
    move v4, v3

    goto :goto_10

    :cond_1b
    move v1, v3

    .line 562
    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12
.end method

.method public getCidrIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->cidrIp:Ljava/lang/String;

    return-object v0
.end method

.method public getFromPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->fromPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

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
    .line 422
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getIpProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSecurityGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->sourceSecurityGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSecurityGroupOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->sourceSecurityGroupOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getToPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->toPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 523
    const/16 v1, 0x1f

    .line 524
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 526
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 527
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 528
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 529
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 530
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 531
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 532
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 533
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 534
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_8
    add-int v0, v2, v3

    .line 535
    return v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 528
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 529
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 530
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 531
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    .line 532
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_6

    .line 533
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 534
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public setCidrIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "cidrIp"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->cidrIp:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setFromPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "fromPort"    # Ljava/lang/Integer;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->fromPort:Ljava/lang/Integer;

    .line 325
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->groupId:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

    .line 139
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
    .line 438
    .local p1, "ipPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 439
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    .local v0, "ipPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 445
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public setIpProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipProtocol"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipProtocol:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setSourceSecurityGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceSecurityGroupName"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->sourceSecurityGroupName:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setSourceSecurityGroupOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceSecurityGroupOwnerId"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->sourceSecurityGroupOwnerId:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setToPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "toPort"    # Ljava/lang/Integer;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->toPort:Ljava/lang/Integer;

    .line 359
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceSecurityGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceSecurityGroupOwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CidrIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpPermissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCidrIp(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "cidrIp"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->cidrIp:Ljava/lang/String;

    .line 407
    return-object p0
.end method

.method public withFromPort(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "fromPort"    # Ljava/lang/Integer;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->fromPort:Ljava/lang/Integer;

    .line 339
    return-object p0
.end method

.method public withGroupId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->groupId:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public withGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public withIpPermissions(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "ipPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 486
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 493
    :goto_0
    return-object p0

    .line 488
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 489
    .local v0, "ipPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withIpPermissions([Lcom/amazonaws/services/ec2/model/IpPermission;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 6
    .param p1, "ipPermissions"    # [Lcom/amazonaws/services/ec2/model/IpPermission;

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->setIpPermissions(Ljava/util/Collection;)V

    .line 464
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

    .line 465
    .local v3, "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    :cond_1
    return-object p0
.end method

.method public withIpProtocol(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "ipProtocol"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->ipProtocol:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public withSourceSecurityGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "sourceSecurityGroupName"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->sourceSecurityGroupName:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public withSourceSecurityGroupOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "sourceSecurityGroupOwnerId"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->sourceSecurityGroupOwnerId:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public withToPort(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "toPort"    # Ljava/lang/Integer;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->toPort:Ljava/lang/Integer;

    .line 373
    return-object p0
.end method
