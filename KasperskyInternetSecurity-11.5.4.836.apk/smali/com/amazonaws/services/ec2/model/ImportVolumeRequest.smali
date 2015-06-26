.class public Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ImportVolumeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

.field private volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;


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

    .line 205
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 219
    :cond_0
    :goto_0
    return v3

    .line 206
    :cond_1
    if-eqz p1, :cond_0

    .line 208
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;

    .line 211
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 219
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 211
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 213
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 215
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 217
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    return-object v0
.end method

.method public getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 193
    const/16 v1, 0x1f

    .line 194
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 196
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 197
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 198
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 199
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 200
    return v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->hashCode()I

    move-result v2

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->availabilityZone:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->description:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setImage(Lcom/amazonaws/services/ec2/model/DiskImageDetail;)V
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .line 85
    return-void
.end method

.method public setVolume(Lcom/amazonaws/services/ec2/model/VolumeDetail;)V
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->availabilityZone:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->description:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public withImage(Lcom/amazonaws/services/ec2/model/DiskImageDetail;)Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->image:Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    .line 99
    return-object p0
.end method

.method public withVolume(Lcom/amazonaws/services/ec2/model/VolumeDetail;)Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->volume:Lcom/amazonaws/services/ec2/model/VolumeDetail;

    .line 167
    return-object p0
.end method
