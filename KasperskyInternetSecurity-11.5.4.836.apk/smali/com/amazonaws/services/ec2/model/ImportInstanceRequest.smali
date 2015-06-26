.class public Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ImportInstanceRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private diskImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/DiskImage;",
            ">;"
        }
    .end annotation
.end field

.field private launchSpecification:Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

.field private platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 240
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 254
    :cond_0
    :goto_0
    return v3

    .line 241
    :cond_1
    if-eqz p1, :cond_0

    .line 243
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 244
    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;

    .line 246
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 254
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 246
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 248
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 250
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 252
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/DiskImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->diskImages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->diskImages:Ljava/util/List;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->diskImages:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 228
    const/16 v1, 0x1f

    .line 229
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 231
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 232
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 233
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 234
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 235
    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->hashCode()I

    move-result v2

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->description:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDiskImages(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/DiskImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "diskImages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/DiskImage;>;"
    if-nez p1, :cond_0

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->diskImages:Ljava/util/List;

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v0, "diskImagesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/DiskImage;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->diskImages:Ljava/util/List;

    goto :goto_0
.end method

.method public setLaunchSpecification(Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;)V
    .locals 0
    .param p1, "launchSpecification"    # Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    .line 85
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->platform:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchSpecification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskImages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->description:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public withDiskImages(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/DiskImage;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "diskImages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/DiskImage;>;"
    if-nez p1, :cond_0

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->diskImages:Ljava/util/List;

    .line 169
    :goto_0
    return-object p0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v0, "diskImagesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/DiskImage;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->diskImages:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDiskImages([Lcom/amazonaws/services/ec2/model/DiskImage;)Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    .locals 6
    .param p1, "diskImages"    # [Lcom/amazonaws/services/ec2/model/DiskImage;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->setDiskImages(Ljava/util/Collection;)V

    .line 144
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/DiskImage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 145
    .local v3, "value":Lcom/amazonaws/services/ec2/model/DiskImage;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/DiskImage;
    :cond_1
    return-object p0
.end method

.method public withLaunchSpecification(Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;)Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    .locals 0
    .param p1, "launchSpecification"    # Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    .line 99
    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->platform:Ljava/lang/String;

    .line 202
    return-object p0
.end method
