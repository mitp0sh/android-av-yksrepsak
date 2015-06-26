.class public Lcom/amazonaws/services/ec2/model/InstanceStateChange;
.super Ljava/lang/Object;
.source "InstanceStateChange.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private currentState:Lcom/amazonaws/services/ec2/model/InstanceState;

.field private instanceId:Ljava/lang/String;

.field private previousState:Lcom/amazonaws/services/ec2/model/InstanceState;


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

    .line 174
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 186
    :cond_0
    :goto_0
    return v3

    .line 175
    :cond_1
    if-eqz p1, :cond_0

    .line 177
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceStateChange;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 178
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;

    .line 180
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceStateChange;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 186
    goto :goto_0

    :cond_5
    move v1, v3

    .line 180
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 182
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 184
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->currentState:Lcom/amazonaws/services/ec2/model/InstanceState;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->previousState:Lcom/amazonaws/services/ec2/model/InstanceState;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 163
    const/16 v1, 0x1f

    .line 164
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 166
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 167
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 169
    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceState;->hashCode()I

    move-result v2

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/InstanceState;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setCurrentState(Lcom/amazonaws/services/ec2/model/InstanceState;)V
    .locals 0
    .param p1, "currentState"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->currentState:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 90
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->instanceId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPreviousState(Lcom/amazonaws/services/ec2/model/InstanceState;)V
    .locals 0
    .param p1, "previousState"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->previousState:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getCurrentState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreviousState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->getPreviousState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCurrentState(Lcom/amazonaws/services/ec2/model/InstanceState;)Lcom/amazonaws/services/ec2/model/InstanceStateChange;
    .locals 0
    .param p1, "currentState"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->currentState:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 104
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceStateChange;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->instanceId:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public withPreviousState(Lcom/amazonaws/services/ec2/model/InstanceState;)Lcom/amazonaws/services/ec2/model/InstanceStateChange;
    .locals 0
    .param p1, "previousState"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStateChange;->previousState:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 138
    return-object p0
.end method
