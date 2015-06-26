.class public Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
.super Ljava/lang/Object;
.source "ImportVolumeTaskDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private bytesConverted:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

.field private volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;


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

    .line 239
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 255
    :cond_0
    :goto_0
    return v3

    .line 240
    :cond_1
    if-eqz p1, :cond_0

    .line 242
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    .line 245
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/DiskImageDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 255
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 245
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 247
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 249
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 251
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 253
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesConverted()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->bytesConverted:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    return-object v0
.end method

.method public getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 226
    const/16 v1, 0x1f

    .line 227
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 229
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 230
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 231
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 232
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 233
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 234
    return v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/DiskImageDescription;->hashCode()I

    move-result v2

    goto :goto_3

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->availabilityZone:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setBytesConverted(Ljava/lang/Long;)V
    .locals 0
    .param p1, "bytesConverted"    # Ljava/lang/Long;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->bytesConverted:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->description:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setImage(Lcom/amazonaws/services/ec2/model/DiskImageDescription;)V
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .line 151
    return-void
.end method

.method public setVolume(Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;)V
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BytesConverted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

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
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

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
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->availabilityZone:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public withBytesConverted(Ljava/lang/Long;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0
    .param p1, "bytesConverted"    # Ljava/lang/Long;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->bytesConverted:Ljava/lang/Long;

    .line 63
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->description:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public withImage(Lcom/amazonaws/services/ec2/model/DiskImageDescription;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .line 165
    return-object p0
.end method

.method public withVolume(Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .line 199
    return-object p0
.end method
