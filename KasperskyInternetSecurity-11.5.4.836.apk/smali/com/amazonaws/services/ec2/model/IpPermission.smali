.class public Lcom/amazonaws/services/ec2/model/IpPermission;
.super Ljava/lang/Object;
.source "IpPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private fromPort:Ljava/lang/Integer;

.field private ipProtocol:Ljava/lang/String;

.field private ipRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private toPort:Ljava/lang/Integer;

.field private userIdGroupPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/UserIdGroupPair;",
            ">;"
        }
    .end annotation
.end field


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

    .line 361
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 377
    :cond_0
    :goto_0
    return v3

    .line 362
    :cond_1
    if-eqz p1, :cond_0

    .line 364
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/IpPermission;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 365
    check-cast v0, Lcom/amazonaws/services/ec2/model/IpPermission;

    .line 367
    .local v0, "other":Lcom/amazonaws/services/ec2/model/IpPermission;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 377
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 367
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 369
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 371
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 373
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 375
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getFromPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->fromPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIpProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getIpRanges()Ljava/util/List;
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
    .line 263
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipRanges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipRanges:Ljava/util/List;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipRanges:Ljava/util/List;

    return-object v0
.end method

.method public getToPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->toPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserIdGroupPairs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/UserIdGroupPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->userIdGroupPairs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->userIdGroupPairs:Ljava/util/List;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->userIdGroupPairs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 348
    const/16 v1, 0x1f

    .line 349
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 351
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 352
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 353
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 354
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 355
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 356
    return v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 355
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setFromPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "fromPort"    # Ljava/lang/Integer;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->fromPort:Ljava/lang/Integer;

    .line 119
    return-void
.end method

.method public setIpProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipProtocol"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipProtocol:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setIpRanges(Ljava/util/Collection;)V
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
    .line 275
    .local p1, "ipRanges":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipRanges:Ljava/util/List;

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v0, "ipRangesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipRanges:Ljava/util/List;

    goto :goto_0
.end method

.method public setToPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "toPort"    # Ljava/lang/Integer;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->toPort:Ljava/lang/Integer;

    .line 165
    return-void
.end method

.method public setUserIdGroupPairs(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/UserIdGroupPair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "userIdGroupPairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/UserIdGroupPair;>;"
    if-nez p1, :cond_0

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->userIdGroupPairs:Ljava/util/List;

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v0, "userIdGroupPairsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/UserIdGroupPair;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->userIdGroupPairs:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserIdGroupPairs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withFromPort(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/IpPermission;
    .locals 0
    .param p1, "fromPort"    # Ljava/lang/Integer;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->fromPort:Ljava/lang/Integer;

    .line 137
    return-object p0
.end method

.method public withIpProtocol(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/IpPermission;
    .locals 0
    .param p1, "ipProtocol"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipProtocol:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public withIpRanges(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/IpPermission;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/IpPermission;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "ipRanges":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipRanges:Ljava/util/List;

    .line 322
    :goto_0
    return-object p0

    .line 317
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    .local v0, "ipRangesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->ipRanges:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withIpRanges([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/IpPermission;
    .locals 6
    .param p1, "ipRanges"    # [Ljava/lang/String;

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/IpPermission;->setIpRanges(Ljava/util/Collection;)V

    .line 297
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

    .line 298
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withToPort(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/IpPermission;
    .locals 0
    .param p1, "toPort"    # Ljava/lang/Integer;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->toPort:Ljava/lang/Integer;

    .line 183
    return-object p0
.end method

.method public withUserIdGroupPairs(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/IpPermission;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/UserIdGroupPair;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/IpPermission;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "userIdGroupPairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/UserIdGroupPair;>;"
    if-nez p1, :cond_0

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->userIdGroupPairs:Ljava/util/List;

    .line 253
    :goto_0
    return-object p0

    .line 248
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .local v0, "userIdGroupPairsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/UserIdGroupPair;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/IpPermission;->userIdGroupPairs:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withUserIdGroupPairs([Lcom/amazonaws/services/ec2/model/UserIdGroupPair;)Lcom/amazonaws/services/ec2/model/IpPermission;
    .locals 6
    .param p1, "userIdGroupPairs"    # [Lcom/amazonaws/services/ec2/model/UserIdGroupPair;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/IpPermission;->setUserIdGroupPairs(Ljava/util/Collection;)V

    .line 228
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/UserIdGroupPair;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 229
    .local v3, "value":Lcom/amazonaws/services/ec2/model/UserIdGroupPair;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/UserIdGroupPair;
    :cond_1
    return-object p0
.end method
