.class public Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
.super Ljava/lang/Object;
.source "AssumedRoleUser.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private arn:Ljava/lang/String;

.field private assumedRoleId:Ljava/lang/String;


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

    .line 203
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 213
    :cond_0
    :goto_0
    return v3

    .line 204
    :cond_1
    if-eqz p1, :cond_0

    .line 206
    instance-of v1, p1, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 207
    check-cast v0, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    .line 209
    .local v0, "other":Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 213
    goto :goto_0

    :cond_4
    move v1, v3

    .line 209
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 211
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->arn:Ljava/lang/String;

    return-object v0
.end method

.method public getAssumedRoleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->assumedRoleId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 193
    const/16 v1, 0x1f

    .line 194
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 196
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 197
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 198
    return v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "arn"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->arn:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setAssumedRoleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "assumedRoleId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->assumedRoleId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssumedRoleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getAssumedRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->getArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withArn(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    .locals 0
    .param p1, "arn"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->arn:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public withAssumedRoleId(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    .locals 0
    .param p1, "assumedRoleId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->assumedRoleId:Ljava/lang/String;

    .line 102
    return-object p0
.end method
