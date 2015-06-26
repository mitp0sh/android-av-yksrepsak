.class public Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
.super Ljava/lang/Object;
.source "InstancePrivateIpAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

.field private primary:Ljava/lang/Boolean;

.field private privateDnsName:Ljava/lang/String;

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

    .line 210
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 224
    :cond_0
    :goto_0
    return v3

    .line 211
    :cond_1
    if-eqz p1, :cond_0

    .line 213
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;

    .line 216
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 224
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 216
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 218
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 220
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 222
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrivateDnsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->privateDnsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 198
    const/16 v1, 0x1f

    .line 199
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 201
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 202
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 203
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 204
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 205
    return v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAssociation(Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;)V
    .locals 0
    .param p1, "association"    # Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .line 158
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->primary:Ljava/lang/Boolean;

    .line 115
    return-void
.end method

.method public setPrivateDnsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateDnsName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->privateDnsName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->privateIpAddress:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateDnsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->isPrimary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Association: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->getAssociation()Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAssociation(Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;)Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    .locals 0
    .param p1, "association"    # Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->association:Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAssociation;

    .line 172
    return-object p0
.end method

.method public withPrimary(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->primary:Ljava/lang/Boolean;

    .line 129
    return-object p0
.end method

.method public withPrivateDnsName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    .locals 0
    .param p1, "privateDnsName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->privateDnsName:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;
    .locals 0
    .param p1, "privateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstancePrivateIpAddress;->privateIpAddress:Ljava/lang/String;

    .line 61
    return-object p0
.end method
