.class public Lcom/amazonaws/services/ec2/model/LicenseCapacity;
.super Ljava/lang/Object;
.source "LicenseCapacity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private capacity:Ljava/lang/Integer;

.field private earliestAllowedDeactivationTime:Ljava/util/Date;

.field private instanceCapacity:Ljava/lang/Integer;

.field private state:Ljava/lang/String;


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

    .line 243
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 257
    :cond_0
    :goto_0
    return v3

    .line 244
    :cond_1
    if-eqz p1, :cond_0

    .line 246
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/LicenseCapacity;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;

    .line 249
    .local v0, "other":Lcom/amazonaws/services/ec2/model/LicenseCapacity;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 257
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 249
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 251
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 253
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 255
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getCapacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->capacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEarliestAllowedDeactivationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->earliestAllowedDeactivationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getInstanceCapacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->instanceCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->state:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 231
    const/16 v1, 0x1f

    .line 232
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 234
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 235
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 236
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 237
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 238
    return v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setCapacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "capacity"    # Ljava/lang/Integer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->capacity:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method public setEarliestAllowedDeactivationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "earliestAllowedDeactivationTime"    # Ljava/util/Date;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->earliestAllowedDeactivationTime:Ljava/util/Date;

    .line 187
    return-void
.end method

.method public setInstanceCapacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "instanceCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->instanceCapacity:Ljava/lang/Integer;

    .line 103
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->state:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getCapacity()Ljava/lang/Integer;

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
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getInstanceCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EarliestAllowedDeactivationTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->getEarliestAllowedDeactivationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/LicenseCapacity;
    .locals 0
    .param p1, "capacity"    # Ljava/lang/Integer;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->capacity:Ljava/lang/Integer;

    .line 79
    return-object p0
.end method

.method public withEarliestAllowedDeactivationTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/LicenseCapacity;
    .locals 0
    .param p1, "earliestAllowedDeactivationTime"    # Ljava/util/Date;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->earliestAllowedDeactivationTime:Ljava/util/Date;

    .line 205
    return-object p0
.end method

.method public withInstanceCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/LicenseCapacity;
    .locals 0
    .param p1, "instanceCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->instanceCapacity:Ljava/lang/Integer;

    .line 119
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/LicenseCapacity;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/LicenseCapacity;->state:Ljava/lang/String;

    .line 159
    return-object p0
.end method
