.class public Lcom/amazonaws/services/ec2/model/DiskImage;
.super Ljava/lang/Object;
.source "DiskImage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

.field private volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;


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

    .line 163
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 175
    :cond_0
    :goto_0
    return v3

    .line 164
    :cond_1
    if-eqz p1, :cond_0

    .line 166
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DiskImage;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 167
    check-cast v0, Lcom/amazonaws/services/ec2/model/DiskImage;

    .line 169
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DiskImage;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 175
    goto :goto_0

    :cond_5
    move v1, v3

    .line 169
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 171
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 173
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    return-object v0
.end method

.method public getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 152
    const/16 v1, 0x1f

    .line 153
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 155
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 156
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 157
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 158
    return v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->hashCode()I

    move-result v2

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->description:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setImage(Lcom/amazonaws/services/ec2/model/DiskImageDetail;)V
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .line 45
    return-void
.end method

.method public setVolume(Lcom/amazonaws/services/ec2/model/VolumeDetail;)V
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DiskImage;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->description:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public withImage(Lcom/amazonaws/services/ec2/model/DiskImageDetail;)Lcom/amazonaws/services/ec2/model/DiskImage;
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .line 59
    return-object p0
.end method

.method public withVolume(Lcom/amazonaws/services/ec2/model/VolumeDetail;)Lcom/amazonaws/services/ec2/model/DiskImage;
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImage;->volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .line 127
    return-object p0
.end method
