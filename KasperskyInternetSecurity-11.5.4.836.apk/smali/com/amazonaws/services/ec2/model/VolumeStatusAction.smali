.class public Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
.super Ljava/lang/Object;
.source "VolumeStatusAction.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private eventType:Ljava/lang/String;


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

    .line 201
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 215
    :cond_0
    :goto_0
    return v3

    .line 202
    :cond_1
    if-eqz p1, :cond_0

    .line 204
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 205
    check-cast v0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;

    .line 207
    .local v0, "other":Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 215
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 207
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 209
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 211
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 213
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 189
    const/16 v1, 0x1f

    .line 190
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 192
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 193
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 194
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 195
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 196
    return v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->code:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->description:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->eventId:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->eventType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCode(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->code:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->description:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public withEventId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->eventId:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withEventType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusAction;->eventType:Ljava/lang/String;

    .line 129
    return-object p0
.end method
