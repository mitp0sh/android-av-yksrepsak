.class public Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ExecutePolicyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private honorCooldown:Ljava/lang/Boolean;

.field private policyName:Ljava/lang/String;


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

    .line 228
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 240
    :cond_0
    :goto_0
    return v3

    .line 229
    :cond_1
    if-eqz p1, :cond_0

    .line 231
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 232
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;

    .line 234
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 240
    goto :goto_0

    :cond_5
    move v1, v3

    .line 234
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 236
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 238
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHonorCooldown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->honorCooldown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 217
    const/16 v1, 0x1f

    .line 218
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 220
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 221
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 222
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 223
    return v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isHonorCooldown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->honorCooldown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setHonorCooldown(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "honorCooldown"    # Ljava/lang/Boolean;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->honorCooldown:Ljava/lang/Boolean;

    .line 165
    return-void
.end method

.method public setPolicyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->policyName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HonorCooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->isHonorCooldown()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public withHonorCooldown(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
    .locals 0
    .param p1, "honorCooldown"    # Ljava/lang/Boolean;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->honorCooldown:Ljava/lang/Boolean;

    .line 181
    return-object p0
.end method

.method public withPolicyName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;->policyName:Ljava/lang/String;

    .line 141
    return-object p0
.end method
