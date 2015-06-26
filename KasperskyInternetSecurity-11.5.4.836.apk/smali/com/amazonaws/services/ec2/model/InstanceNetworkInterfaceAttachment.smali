.class public Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
.super Ljava/lang/Object;
.source "InstanceNetworkInterfaceAttachment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attachTime:Ljava/util/Date;

.field private attachmentId:Ljava/lang/String;

.field private deleteOnTermination:Ljava/lang/Boolean;

.field private deviceIndex:Ljava/lang/Integer;

.field private status:Ljava/lang/String;


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

    .line 248
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 264
    :cond_0
    :goto_0
    return v3

    .line 249
    :cond_1
    if-eqz p1, :cond_0

    .line 251
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 252
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    .line 254
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 264
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 254
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 256
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 258
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 260
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 262
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAttachTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachTime:Ljava/util/Date;

    return-object v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeviceIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deviceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 235
    const/16 v1, 0x1f

    .line 236
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 238
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 239
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 240
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 241
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 242
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 243
    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttachTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "attachTime"    # Ljava/util/Date;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachTime:Ljava/util/Date;

    .line 151
    return-void
.end method

.method public setAttachmentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachmentId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    .line 185
    return-void
.end method

.method public setDeviceIndex(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "deviceIndex"    # Ljava/lang/Integer;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deviceIndex:Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->status:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachmentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttachTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0
    .param p1, "attachTime"    # Ljava/util/Date;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachTime:Ljava/util/Date;

    .line 165
    return-object p0
.end method

.method public withAttachmentId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachmentId:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    .line 199
    return-object p0
.end method

.method public withDeviceIndex(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0
    .param p1, "deviceIndex"    # Ljava/lang/Integer;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deviceIndex:Ljava/lang/Integer;

    .line 97
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->status:Ljava/lang/String;

    .line 131
    return-object p0
.end method
