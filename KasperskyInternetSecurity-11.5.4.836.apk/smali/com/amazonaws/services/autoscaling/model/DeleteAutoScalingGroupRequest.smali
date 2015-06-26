.class public Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteAutoScalingGroupRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private forceDelete:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
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

    .line 184
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 194
    :cond_0
    :goto_0
    return v3

    .line 185
    :cond_1
    if-eqz p1, :cond_0

    .line 187
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 188
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;

    .line 190
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 194
    goto :goto_0

    :cond_4
    move v1, v3

    .line 190
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 192
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getForceDelete()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->forceDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 174
    const/16 v1, 0x1f

    .line 175
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 177
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 178
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 179
    return v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isForceDelete()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->forceDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setForceDelete(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "forceDelete"    # Ljava/lang/Boolean;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->forceDelete:Ljava/lang/Boolean;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForceDelete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->isForceDelete()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public withForceDelete(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;
    .locals 0
    .param p1, "forceDelete"    # Ljava/lang/Boolean;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;->forceDelete:Ljava/lang/Boolean;

    .line 137
    return-object p0
.end method
