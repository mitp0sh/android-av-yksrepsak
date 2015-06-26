.class public Lcom/amazonaws/services/ec2/model/TagDescription;
.super Ljava/lang/Object;
.source "TagDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private key:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private resourceType:Ljava/lang/String;

.field private value:Ljava/lang/String;


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

    .line 278
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 292
    :cond_0
    :goto_0
    return v3

    .line 279
    :cond_1
    if-eqz p1, :cond_0

    .line 281
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/TagDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 282
    check-cast v0, Lcom/amazonaws/services/ec2/model/TagDescription;

    .line 284
    .local v0, "other":Lcom/amazonaws/services/ec2/model/TagDescription;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 292
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 284
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 286
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 288
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 290
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 266
    const/16 v1, 0x1f

    .line 267
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 269
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 270
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 271
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 272
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 273
    return v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->key:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setResourceType(Lcom/amazonaws/services/ec2/model/ResourceType;)V
    .locals 1
    .param p1, "resourceType"    # Lcom/amazonaws/services/ec2/model/ResourceType;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceType:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceType:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->value:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getResourceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/TagDescription;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/TagDescription;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->key:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public withResourceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/TagDescription;
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceId:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public withResourceType(Lcom/amazonaws/services/ec2/model/ResourceType;)Lcom/amazonaws/services/ec2/model/TagDescription;
    .locals 1
    .param p1, "resourceType"    # Lcom/amazonaws/services/ec2/model/ResourceType;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceType:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public withResourceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/TagDescription;
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->resourceType:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/TagDescription;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/TagDescription;->value:Ljava/lang/String;

    .line 240
    return-object p0
.end method
