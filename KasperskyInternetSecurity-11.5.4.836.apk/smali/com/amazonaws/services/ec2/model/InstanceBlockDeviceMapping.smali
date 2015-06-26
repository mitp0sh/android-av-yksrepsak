.class public Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
.super Ljava/lang/Object;
.source "InstanceBlockDeviceMapping.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceName:Ljava/lang/String;

.field private ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;


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

    .line 140
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 150
    :cond_0
    :goto_0
    return v3

    .line 141
    :cond_1
    if-eqz p1, :cond_0

    .line 143
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 144
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;

    .line 146
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 150
    goto :goto_0

    :cond_4
    move v1, v3

    .line 146
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 148
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 130
    const/16 v1, 0x1f

    .line 131
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 133
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 134
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 135
    return v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->deviceName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setEbs(Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;)V
    .locals 0
    .param p1, "ebs"    # Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ebs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->deviceName:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public withEbs(Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;)Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    .locals 0
    .param p1, "ebs"    # Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;->ebs:Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDevice;

    .line 106
    return-object p0
.end method
