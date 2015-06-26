.class public Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetLoadBalancerListenerSSLCertificateRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private loadBalancerName:Ljava/lang/String;

.field private loadBalancerPort:Ljava/lang/Integer;

.field private sSLCertificateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;
    .param p2, "loadBalancerPort"    # Ljava/lang/Integer;
    .param p3, "sSLCertificateId"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerPort:Ljava/lang/Integer;

    .line 72
    iput-object p3, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->sSLCertificateId:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 247
    :cond_0
    :goto_0
    return v3

    .line 236
    :cond_1
    if-eqz p1, :cond_0

    .line 238
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 239
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;

    .line 241
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 247
    goto :goto_0

    :cond_5
    move v1, v3

    .line 241
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 243
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 245
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadBalancerPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSSLCertificateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->sSLCertificateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 224
    const/16 v1, 0x1f

    .line 225
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 227
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 228
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 229
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 230
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setLoadBalancerPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "loadBalancerPort"    # Ljava/lang/Integer;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerPort:Ljava/lang/Integer;

    .line 127
    return-void
.end method

.method public setSSLCertificateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sSLCertificateId"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->sSLCertificateId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLCertificateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerName:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public withLoadBalancerPort(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;
    .locals 0
    .param p1, "loadBalancerPort"    # Ljava/lang/Integer;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->loadBalancerPort:Ljava/lang/Integer;

    .line 141
    return-object p0
.end method

.method public withSSLCertificateId(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;
    .locals 0
    .param p1, "sSLCertificateId"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;->sSLCertificateId:Ljava/lang/String;

    .line 199
    return-object p0
.end method
