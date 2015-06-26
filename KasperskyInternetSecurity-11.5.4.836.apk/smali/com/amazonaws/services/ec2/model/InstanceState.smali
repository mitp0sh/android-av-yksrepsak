.class public Lcom/amazonaws/services/ec2/model/InstanceState;
.super Ljava/lang/Object;
.source "InstanceState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/Integer;

.field private name:Ljava/lang/String;


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

    .line 199
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 209
    :cond_0
    :goto_0
    return v3

    .line 200
    :cond_1
    if-eqz p1, :cond_0

    .line 202
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 203
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 205
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceState;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 209
    goto :goto_0

    :cond_4
    move v1, v3

    .line 205
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 207
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->name:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 194
    return v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->code:Ljava/lang/Integer;

    .line 64
    return-void
.end method

.method public setName(Lcom/amazonaws/services/ec2/model/InstanceStateName;)V
    .locals 1
    .param p1, "name"    # Lcom/amazonaws/services/ec2/model/InstanceStateName;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceStateName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->name:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->name:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceState;->getName()Ljava/lang/String;

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
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCode(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 0
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->code:Ljava/lang/Integer;

    .line 82
    return-object p0
.end method

.method public withName(Lcom/amazonaws/services/ec2/model/InstanceStateName;)Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 1
    .param p1, "name"    # Lcom/amazonaws/services/ec2/model/InstanceStateName;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceStateName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->name:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceState;->name:Ljava/lang/String;

    .line 131
    return-object p0
.end method
