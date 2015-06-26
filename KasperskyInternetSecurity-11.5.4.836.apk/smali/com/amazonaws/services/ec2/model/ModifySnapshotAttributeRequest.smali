.class public Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ModifySnapshotAttributeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attribute:Ljava/lang/String;

.field private createVolumePermission:Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

.field private groupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private operationType:Ljava/lang/String;

.field private snapshotId:Ljava/lang/String;

.field private userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;Ljava/lang/String;)V
    .locals 1
    .param p1, "snapshotId"    # Ljava/lang/String;
    .param p2, "attribute"    # Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;
    .param p3, "operationType"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->operationType:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "operationType"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->operationType:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 555
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 573
    :cond_0
    :goto_0
    return v3

    .line 556
    :cond_1
    if-eqz p1, :cond_0

    .line 558
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 559
    check-cast v0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;

    .line 561
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 573
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 561
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 563
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 565
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 567
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 569
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 571
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->createVolumePermission:Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    return-object v0
.end method

.method public getGroupNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->groupNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->groupNames:Ljava/util/List;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->groupNames:Ljava/util/List;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->userIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->userIds:Ljava/util/List;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->userIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 541
    const/16 v1, 0x1f

    .line 542
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 544
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 545
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 546
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 547
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 548
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 549
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 550
    return v0

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 546
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 547
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 548
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAttribute(Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;)V
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCreateVolumePermission(Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;)V
    .locals 0
    .param p1, "createVolumePermission"    # Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->createVolumePermission:Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    .line 499
    return-void
.end method

.method public setGroupNames(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 417
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->groupNames:Ljava/util/List;

    .line 424
    :goto_0
    return-void

    .line 421
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 422
    .local v0, "groupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->groupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->operationType:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUserIds(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->userIds:Ljava/util/List;

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v0, "userIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->userIds:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

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
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OperationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

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
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

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
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

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
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateVolumePermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttribute(Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public withAttribute(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public withCreateVolumePermission(Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 0
    .param p1, "createVolumePermission"    # Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->createVolumePermission:Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    .line 513
    return-object p0
.end method

.method public withGroupNames(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->groupNames:Ljava/util/List;

    .line 479
    :goto_0
    return-object p0

    .line 474
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    .local v0, "groupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 476
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->groupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroupNames([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 6
    .param p1, "groupNames"    # [Ljava/lang/String;

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->setGroupNames(Ljava/util/Collection;)V

    .line 446
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 447
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withOperationType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->operationType:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public withSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public withUserIds(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->userIds:Ljava/util/List;

    .line 378
    :goto_0
    return-object p0

    .line 373
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .local v0, "userIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->userIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withUserIds([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .locals 6
    .param p1, "userIds"    # [Ljava/lang/String;

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->setUserIds(Ljava/util/Collection;)V

    .line 345
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 346
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
