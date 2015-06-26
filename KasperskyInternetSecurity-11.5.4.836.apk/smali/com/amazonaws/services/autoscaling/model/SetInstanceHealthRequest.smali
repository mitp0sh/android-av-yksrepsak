.class public Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetInstanceHealthRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private healthStatus:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private shouldRespectGracePeriod:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 242
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 254
    :cond_0
    :goto_0
    return v3

    .line 243
    :cond_1
    if-eqz p1, :cond_0

    .line 245
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;

    .line 248
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 254
    goto :goto_0

    :cond_5
    move v1, v3

    .line 248
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 250
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 252
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getHealthStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->healthStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldRespectGracePeriod()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->shouldRespectGracePeriod:Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 235
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 236
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 237
    return v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isShouldRespectGracePeriod()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->shouldRespectGracePeriod:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHealthStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "healthStatus"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->healthStatus:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->instanceId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setShouldRespectGracePeriod(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "shouldRespectGracePeriod"    # Ljava/lang/Boolean;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->shouldRespectGracePeriod:Ljava/lang/Boolean;

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->getHealthStatus()Ljava/lang/String;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShouldRespectGracePeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->isShouldRespectGracePeriod()Ljava/lang/Boolean;

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
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withHealthStatus(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
    .locals 0
    .param p1, "healthStatus"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->healthStatus:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->instanceId:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public withShouldRespectGracePeriod(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
    .locals 0
    .param p1, "shouldRespectGracePeriod"    # Ljava/lang/Boolean;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;->shouldRespectGracePeriod:Ljava/lang/Boolean;

    .line 195
    return-object p0
.end method
