.class public Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RevokeSecurityGroupIngressRequest.java"

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
    .line 95
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
    .line 111
    .local p2, "ipPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 114
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 559
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 583
    :cond_0
    :goto_0
    return v3

    .line 560
    :cond_1
    if-eqz p1, :cond_0

    .line 562
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 563
    check-cast v0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;

    .line 565
    .local v0, "other":Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 582
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    move v3, v2

    .line 583
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 565
    goto/16 :goto_1

    :cond_c
    move v4, v3

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 567
    goto/16 :goto_3

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 569
    goto/16 :goto_5

    :cond_10
    move v4, v3

    goto/16 :goto_6

    :cond_11
    move v1, v3

    .line 571
    goto/16 :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_8

    :cond_13
    move v1, v3

    .line 573
    goto/16 :goto_9

    :cond_14
    move v4, v3

    goto/16 :goto_a

    :cond_15
    move v1, v3

    .line 575
    goto/16 :goto_b

    :cond_16
    move v4, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 577
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v1, v3

    .line 579
    goto :goto_f

    :cond_1a
    move v4, v3

    goto :goto_10

    :cond_1b
    move v1, v3

    .line 581
    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12
.end method

.method public getCidrIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->cidrIp:Ljava/lang/String;

    return-object v0
.end method

.method public getFromPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->fromPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

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
    .line 429
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getIpProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSecurityGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->sourceSecurityGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSecurityGroupOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->sourceSecurityGroupOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getToPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->toPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 542
    const/16 v1, 0x1f

    .line 543
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 545
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 546
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 547
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 548
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 549
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 550
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 551
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 552
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 553
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_8
    add-int v0, v2, v3

    .line 554
    return v0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 547
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 549
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 550
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    .line 551
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_6

    .line 552
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 553
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public setCidrIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "cidrIp"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->cidrIp:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setFromPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "fromPort"    # Ljava/lang/Integer;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->fromPort:Ljava/lang/Integer;

    .line 328
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->groupId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

    .line 142
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
    .line 449
    .local p1, "ipPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 457
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 455
    .local v0, "ipPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 456
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public setIpProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipProtocol"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipProtocol:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setSourceSecurityGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceSecurityGroupName"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->sourceSecurityGroupName:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setSourceSecurityGroupOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceSecurityGroupOwnerId"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->sourceSecurityGroupOwnerId:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setToPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "toPort"    # Ljava/lang/Integer;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->toPort:Ljava/lang/Integer;

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceSecurityGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceSecurityGroupOwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CidrIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpPermissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCidrIp(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "cidrIp"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->cidrIp:Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public withFromPort(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "fromPort"    # Ljava/lang/Integer;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->fromPort:Ljava/lang/Integer;

    .line 342
    return-object p0
.end method

.method public withGroupId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->groupId:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public withGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->groupName:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public withIpPermissions(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/IpPermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "ipPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    if-nez p1, :cond_0

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    .line 512
    :goto_0
    return-object p0

    .line 507
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .local v0, "ipPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 509
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withIpPermissions([Lcom/amazonaws/services/ec2/model/IpPermission;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 6
    .param p1, "ipPermissions"    # [Lcom/amazonaws/services/ec2/model/IpPermission;

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->setIpPermissions(Ljava/util/Collection;)V

    .line 479
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

    .line 480
    .local v3, "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/IpPermission;
    :cond_1
    return-object p0
.end method

.method public withIpProtocol(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "ipProtocol"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->ipProtocol:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public withSourceSecurityGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "sourceSecurityGroupName"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->sourceSecurityGroupName:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public withSourceSecurityGroupOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "sourceSecurityGroupOwnerId"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->sourceSecurityGroupOwnerId:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public withToPort(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .locals 0
    .param p1, "toPort"    # Ljava/lang/Integer;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;->toPort:Ljava/lang/Integer;

    .line 376
    return-object p0
.end method
