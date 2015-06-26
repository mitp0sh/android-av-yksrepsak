.class public Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;
.super Ljava/lang/Object;
.source "EbsInstanceBlockDevice.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attachTime:Ljava/util/Date;

.field private deleteOnTermination:Ljava/lang/Boolean;

.field private status:Ljava/lang/String;

.field private volumeId:Ljava/lang/String;


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
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 244
    check-cast v0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    .line 246
    .local v0, "other":Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

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

.method public getAttachTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->attachTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->volumeId:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 232
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 233
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 234
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 235
    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttachTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "attachTime"    # Ljava/util/Date;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->attachTime:Ljava/util/Date;

    .line 135
    return-void
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    .line 175
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->status:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->volumeId:Ljava/lang/String;

    .line 63
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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getVolumeId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->getAttachTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

.method public withAttachTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;
    .locals 0
    .param p1, "attachTime"    # Ljava/util/Date;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->attachTime:Ljava/util/Date;

    .line 151
    return-object p0
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    .line 191
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->status:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->volumeId:Ljava/lang/String;

    .line 77
    return-object p0
.end method
