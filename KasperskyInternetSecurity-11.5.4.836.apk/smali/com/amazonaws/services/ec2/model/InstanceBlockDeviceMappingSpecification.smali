.class public Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
.super Ljava/lang/Object;
.source "InstanceBlockDeviceMappingSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceName:Ljava/lang/String;

.field private ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

.field private noDevice:Ljava/lang/String;

.field private virtualName:Ljava/lang/String;


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
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 240
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;

    .line 242
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

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

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    return-object v0
.end method

.method public getNoDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->noDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->virtualName:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 228
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 229
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 230
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 231
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->hashCode()I

    move-result v2

    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->deviceName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setEbs(Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;)V
    .locals 0
    .param p1, "ebs"    # Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    .line 108
    return-void
.end method

.method public setNoDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "noDevice"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->noDevice:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setVirtualName(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtualName"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->virtualName:Ljava/lang/String;

    .line 144
    return-void
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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ebs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

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

.method public withDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->deviceName:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public withEbs(Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;)Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    .locals 0
    .param p1, "ebs"    # Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    .line 124
    return-object p0
.end method

.method public withNoDevice(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    .locals 0
    .param p1, "noDevice"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->noDevice:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public withVirtualName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    .locals 0
    .param p1, "virtualName"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->virtualName:Ljava/lang/String;

    .line 158
    return-object p0
.end method
