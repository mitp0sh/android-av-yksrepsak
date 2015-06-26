.class public Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetDesiredCapacityRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private desiredCapacity:Ljava/lang/Integer;

.field private honorCooldown:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
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

    .line 240
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 252
    :cond_0
    :goto_0
    return v3

    .line 241
    :cond_1
    if-eqz p1, :cond_0

    .line 243
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 244
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;

    .line 246
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 252
    goto :goto_0

    :cond_5
    move v1, v3

    .line 246
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 248
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 250
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesiredCapacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->desiredCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHonorCooldown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->honorCooldown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 229
    const/16 v1, 0x1f

    .line 230
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 232
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 233
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 234
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 235
    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isHonorCooldown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->honorCooldown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDesiredCapacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->desiredCapacity:Ljava/lang/Integer;

    .line 131
    return-void
.end method

.method public setHonorCooldown(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "honorCooldown"    # Ljava/lang/Boolean;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->honorCooldown:Ljava/lang/Boolean;

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesiredCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->getDesiredCapacity()Ljava/lang/Integer;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HonorCooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->isHonorCooldown()Ljava/lang/Boolean;

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
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withDesiredCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
    .locals 0
    .param p1, "desiredCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->desiredCapacity:Ljava/lang/Integer;

    .line 145
    return-object p0
.end method

.method public withHonorCooldown(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
    .locals 0
    .param p1, "honorCooldown"    # Ljava/lang/Boolean;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;->honorCooldown:Ljava/lang/Boolean;

    .line 191
    return-object p0
.end method
