.class public Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
.super Ljava/lang/Object;
.source "PrivateIpAddressSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private primary:Ljava/lang/Boolean;

.field private privateIpAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 134
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 144
    :cond_0
    :goto_0
    return v3

    .line 135
    :cond_1
    if-eqz p1, :cond_0

    .line 137
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;

    .line 140
    .local v0, "other":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 144
    goto :goto_0

    :cond_4
    move v1, v3

    .line 140
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 142
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 124
    const/16 v1, 0x1f

    .line 125
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 127
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 129
    return v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->primary:Ljava/lang/Boolean;

    .line 77
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->privateIpAddress:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withPrimary(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->primary:Ljava/lang/Boolean;

    .line 91
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->privateIpAddress:Ljava/lang/String;

    .line 57
    return-object p0
.end method