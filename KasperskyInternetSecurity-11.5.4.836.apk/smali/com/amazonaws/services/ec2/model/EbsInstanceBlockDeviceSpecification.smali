.class public Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;
.super Ljava/lang/Object;
.source "EbsInstanceBlockDeviceSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deleteOnTermination:Ljava/lang/Boolean;

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

    .line 158
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 168
    :cond_0
    :goto_0
    return v3

    .line 159
    :cond_1
    if-eqz p1, :cond_0

    .line 161
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 162
    check-cast v0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    .line 164
    .local v0, "other":Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 168
    goto :goto_0

    :cond_4
    move v1, v3

    .line 164
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 166
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 148
    const/16 v1, 0x1f

    .line 149
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 151
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 152
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 153
    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    .line 97
    return-void
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->volumeId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    .line 113
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->volumeId:Ljava/lang/String;

    .line 73
    return-object p0
.end method
