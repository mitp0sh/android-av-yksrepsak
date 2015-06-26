.class public Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
.super Ljava/lang/Object;
.source "ImportInstanceTaskDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private volumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 236
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 250
    :cond_0
    :goto_0
    return v3

    .line 237
    :cond_1
    if-eqz p1, :cond_0

    .line 239
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 240
    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    .line 242
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 250
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 242
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 244
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 246
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 248
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->volumes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->volumes:Ljava/util/List;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->volumes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 224
    const/16 v1, 0x1f

    .line 225
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 227
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 228
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 229
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 230
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 231
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->description:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->instanceId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->platform:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setVolumes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "volumes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;>;"
    if-nez p1, :cond_0

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->volumes:Ljava/util/List;

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v0, "volumesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->volumes:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volumes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->description:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->instanceId:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->platform:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public withVolumes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "volumes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;>;"
    if-nez p1, :cond_0

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->volumes:Ljava/util/List;

    .line 97
    :goto_0
    return-object p0

    .line 92
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v0, "volumesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->volumes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withVolumes([Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;)Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    .locals 6
    .param p1, "volumes"    # [Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->setVolumes(Ljava/util/Collection;)V

    .line 72
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 73
    .local v3, "value":Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->getVolumes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    :cond_1
    return-object p0
.end method
