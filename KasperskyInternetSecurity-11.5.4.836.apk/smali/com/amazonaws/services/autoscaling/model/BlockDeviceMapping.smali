.class public Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
.super Ljava/lang/Object;
.source "BlockDeviceMapping.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceName:Ljava/lang/String;

.field private ebs:Lcom/amazonaws/services/autoscaling/model/Ebs;

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

    .line 206
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 218
    :cond_0
    :goto_0
    return v3

    .line 207
    :cond_1
    if-eqz p1, :cond_0

    .line 209
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;

    .line 212
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/autoscaling/model/Ebs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 218
    goto :goto_0

    :cond_5
    move v1, v3

    .line 212
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 214
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 216
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->ebs:Lcom/amazonaws/services/autoscaling/model/Ebs;

    return-object v0
.end method

.method public getVirtualName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->virtualName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 195
    const/16 v1, 0x1f

    .line 196
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 198
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 199
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 201
    return v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/autoscaling/model/Ebs;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->deviceName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setEbs(Lcom/amazonaws/services/autoscaling/model/Ebs;)V
    .locals 0
    .param p1, "ebs"    # Lcom/amazonaws/services/autoscaling/model/Ebs;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->ebs:Lcom/amazonaws/services/autoscaling/model/Ebs;

    .line 156
    return-void
.end method

.method public setVirtualName(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtualName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->virtualName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ebs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->deviceName:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public withEbs(Lcom/amazonaws/services/autoscaling/model/Ebs;)Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    .locals 0
    .param p1, "ebs"    # Lcom/amazonaws/services/autoscaling/model/Ebs;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->ebs:Lcom/amazonaws/services/autoscaling/model/Ebs;

    .line 170
    return-object p0
.end method

.method public withVirtualName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    .locals 0
    .param p1, "virtualName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->virtualName:Ljava/lang/String;

    .line 90
    return-object p0
.end method
