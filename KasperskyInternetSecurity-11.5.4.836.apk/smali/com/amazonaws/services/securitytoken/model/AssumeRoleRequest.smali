.class public Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AssumeRoleRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private durationSeconds:Ljava/lang/Integer;

.field private externalId:Ljava/lang/String;

.field private policy:Ljava/lang/String;

.field private roleArn:Ljava/lang/String;

.field private roleSessionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
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

    .line 513
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 529
    :cond_0
    :goto_0
    return v3

    .line 514
    :cond_1
    if-eqz p1, :cond_0

    .line 516
    instance-of v1, p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 517
    check-cast v0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    .line 519
    .local v0, "other":Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 524
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 526
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 528
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 529
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 519
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 521
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 523
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 525
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 527
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getDurationSeconds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->durationSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleArn:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleSessionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleSessionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 500
    const/16 v1, 0x1f

    .line 501
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 503
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 504
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 505
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 506
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 507
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 508
    return v0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 506
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    .line 507
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setDurationSeconds(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "durationSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->durationSeconds:Ljava/lang/Integer;

    .line 346
    return-void
.end method

.method public setExternalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "externalId"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->externalId:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policy:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setRoleArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleArn"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleArn:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setRoleSessionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleSessionName"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleSessionName:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoleArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoleSessionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DurationSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExternalId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDurationSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .param p1, "durationSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->durationSeconds:Ljava/lang/Integer;

    .line 367
    return-object p0
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .param p1, "externalId"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->externalId:Ljava/lang/String;

    .line 473
    return-object p0
.end method

.method public withPolicy(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policy:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public withRoleArn(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .param p1, "roleArn"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleArn:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public withRoleSessionName(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .param p1, "roleSessionName"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleSessionName:Ljava/lang/String;

    .line 218
    return-object p0
.end method
