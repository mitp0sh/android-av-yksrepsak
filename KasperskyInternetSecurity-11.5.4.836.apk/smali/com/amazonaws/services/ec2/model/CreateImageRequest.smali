.class public Lcom/amazonaws/services/ec2/model/CreateImageRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateImageRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noReboot:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->instanceId:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->name:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 369
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 385
    :cond_0
    :goto_0
    return v3

    .line 370
    :cond_1
    if-eqz p1, :cond_0

    .line 372
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CreateImageRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 373
    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;

    .line 375
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 385
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 375
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 377
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 379
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 381
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 383
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->blockDeviceMappings:Ljava/util/List;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoReboot()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->noReboot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 356
    const/16 v1, 0x1f

    .line 357
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 359
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 360
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 361
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 362
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 363
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 364
    return v0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_3

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isNoReboot()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->noReboot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->blockDeviceMappings:Ljava/util/List;

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->description:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->instanceId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->name:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setNoReboot(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "noReboot"    # Ljava/lang/Boolean;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->noReboot:Ljava/lang/Boolean;

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoReboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->blockDeviceMappings:Ljava/util/List;

    .line 330
    :goto_0
    return-object p0

    .line 325
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 305
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 306
    .local v3, "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->description:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->instanceId:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->name:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public withNoReboot(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .locals 0
    .param p1, "noReboot"    # Ljava/lang/Boolean;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->noReboot:Ljava/lang/Boolean;

    .line 241
    return-object p0
.end method
