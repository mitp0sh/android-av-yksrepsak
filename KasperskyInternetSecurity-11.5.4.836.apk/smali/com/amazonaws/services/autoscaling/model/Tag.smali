.class public Lcom/amazonaws/services/autoscaling/model/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private key:Ljava/lang/String;

.field private propagateAtLaunch:Ljava/lang/Boolean;

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

    .line 355
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 371
    :cond_0
    :goto_0
    return v3

    .line 356
    :cond_1
    if-eqz p1, :cond_0

    .line 358
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/Tag;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 359
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/Tag;

    .line 361
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/Tag;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 371
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 361
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 363
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 365
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 367
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 369
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPropagateAtLaunch()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->propagateAtLaunch:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 342
    const/16 v1, 0x1f

    .line 343
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 345
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 346
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 347
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 348
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 349
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 350
    return v0

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isPropagateAtLaunch()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->propagateAtLaunch:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->key:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setPropagateAtLaunch(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "propagateAtLaunch"    # Ljava/lang/Boolean;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->propagateAtLaunch:Ljava/lang/Boolean;

    .line 280
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->resourceId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->resourceType:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->value:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PropagateAtLaunch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Tag;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->key:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public withPropagateAtLaunch(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/Tag;
    .locals 0
    .param p1, "propagateAtLaunch"    # Ljava/lang/Boolean;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->propagateAtLaunch:Ljava/lang/Boolean;

    .line 300
    return-object p0
.end method

.method public withResourceId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Tag;
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->resourceId:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public withResourceType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Tag;
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->resourceType:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Tag;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Tag;->value:Ljava/lang/String;

    .line 248
    return-object p0
.end method
