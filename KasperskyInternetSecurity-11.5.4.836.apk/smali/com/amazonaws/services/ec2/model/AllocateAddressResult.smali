.class public Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
.super Ljava/lang/Object;
.source "AllocateAddressResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allocationId:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private publicIp:Ljava/lang/String;


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

    .line 217
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 229
    :cond_0
    :goto_0
    return v3

    .line 218
    :cond_1
    if-eqz p1, :cond_0

    .line 220
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 221
    check-cast v0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;

    .line 223
    .local v0, "other":Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 229
    goto :goto_0

    :cond_5
    move v1, v3

    .line 223
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 225
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 227
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAllocationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->allocationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->publicIp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 206
    const/16 v1, 0x1f

    .line 207
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 209
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 210
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 211
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 212
    return v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAllocationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "allocationId"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->allocationId:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setDomain(Lcom/amazonaws/services/ec2/model/DomainType;)V
    .locals 1
    .param p1, "domain"    # Lcom/amazonaws/services/ec2/model/DomainType;

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DomainType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->domain:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->domain:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPublicIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicIp"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->publicIp:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getPublicIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllocationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->getAllocationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAllocationId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 0
    .param p1, "allocationId"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->allocationId:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public withDomain(Lcom/amazonaws/services/ec2/model/DomainType;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 1
    .param p1, "domain"    # Lcom/amazonaws/services/ec2/model/DomainType;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DomainType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->domain:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public withDomain(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->domain:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public withPublicIp(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 0
    .param p1, "publicIp"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;->publicIp:Ljava/lang/String;

    .line 64
    return-object p0
.end method
