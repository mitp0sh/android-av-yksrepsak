.class public Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
.super Ljava/lang/Object;
.source "GetFederationTokenResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

.field private federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

.field private packedPolicySize:Ljava/lang/Integer;


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

    .line 207
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 219
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    if-eqz p1, :cond_0

    .line 210
    instance-of v1, p1, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 211
    check-cast v0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

    .line 213
    .local v0, "other":Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/securitytoken/model/Credentials;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 219
    goto :goto_0

    :cond_5
    move v1, v3

    .line 213
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 215
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 217
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object v0
.end method

.method public getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    return-object v0
.end method

.method public getPackedPolicySize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 196
    const/16 v1, 0x1f

    .line 197
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 199
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 200
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 201
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 202
    return v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/securitytoken/model/Credentials;->hashCode()I

    move-result v2

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->hashCode()I

    move-result v2

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/services/securitytoken/model/Credentials;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    .line 62
    return-void
.end method

.method public setFederatedUser(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)V
    .locals 0
    .param p1, "federatedUser"    # Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .line 100
    return-void
.end method

.method public setPackedPolicySize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "packedPolicySize"    # Ljava/lang/Integer;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FederatedUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackedPolicySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/services/securitytoken/model/Credentials;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    .line 76
    return-object p0
.end method

.method public withFederatedUser(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0
    .param p1, "federatedUser"    # Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .line 116
    return-object p0
.end method

.method public withPackedPolicySize(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0
    .param p1, "packedPolicySize"    # Ljava/lang/Integer;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    .line 171
    return-object p0
.end method
