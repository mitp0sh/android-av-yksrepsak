.class public Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetSessionTokenRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private durationSeconds:Ljava/lang/Integer;

.field private serialNumber:Ljava/lang/String;

.field private tokenCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
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

    .line 432
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 444
    :cond_0
    :goto_0
    return v3

    .line 433
    :cond_1
    if-eqz p1, :cond_0

    .line 435
    instance-of v1, p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 436
    check-cast v0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    .line 438
    .local v0, "other":Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 444
    goto :goto_0

    :cond_5
    move v1, v3

    .line 438
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 440
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 442
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDurationSeconds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 421
    const/16 v1, 0x1f

    .line 422
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 424
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 425
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 426
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 427
    return v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDurationSeconds(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "durationSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    .line 139
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setTokenCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenCode"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DurationSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SerialNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TokenCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDurationSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0
    .param p1, "durationSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    .line 166
    return-object p0
.end method

.method public withSerialNumber(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public withTokenCode(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0
    .param p1, "tokenCode"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    .line 396
    return-object p0
.end method
