.class public Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private instancePort:Ljava/lang/Integer;

.field private instanceProtocol:Ljava/lang/String;

.field private loadBalancerPort:Ljava/lang/Integer;

.field private protocol:Ljava/lang/String;

.field private sSLCertificateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "loadBalancerPort"    # Ljava/lang/Integer;
    .param p3, "instancePort"    # Ljava/lang/Integer;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->protocol:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->loadBalancerPort:Ljava/lang/Integer;

    .line 96
    iput-object p3, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->instancePort:Ljava/lang/Integer;

    .line 97
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 430
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 446
    :cond_0
    :goto_0
    return v3

    .line 431
    :cond_1
    if-eqz p1, :cond_0

    .line 433
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 434
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;

    .line 436
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 446
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 436
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 438
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 440
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 442
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 444
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getInstancePort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->instancePort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInstanceProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->instanceProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadBalancerPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->loadBalancerPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLCertificateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->sSLCertificateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 417
    const/16 v1, 0x1f

    .line 418
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 420
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 421
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 422
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 423
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 424
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 425
    return v0

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 423
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    .line 424
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setInstancePort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "instancePort"    # Ljava/lang/Integer;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->instancePort:Ljava/lang/Integer;

    .line 319
    return-void
.end method

.method public setInstanceProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceProtocol"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->instanceProtocol:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setLoadBalancerPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "loadBalancerPort"    # Ljava/lang/Integer;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->loadBalancerPort:Ljava/lang/Integer;

    .line 167
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->protocol:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSSLCertificateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sSLCertificateId"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->sSLCertificateId:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstancePort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLCertificateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withInstancePort(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    .locals 0
    .param p1, "instancePort"    # Ljava/lang/Integer;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->instancePort:Ljava/lang/Integer;

    .line 338
    return-object p0
.end method

.method public withInstanceProtocol(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    .locals 0
    .param p1, "instanceProtocol"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->instanceProtocol:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public withLoadBalancerPort(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    .locals 0
    .param p1, "loadBalancerPort"    # Ljava/lang/Integer;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->loadBalancerPort:Ljava/lang/Integer;

    .line 183
    return-object p0
.end method

.method public withProtocol(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->protocol:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public withSSLCertificateId(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    .locals 0
    .param p1, "sSLCertificateId"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->sSLCertificateId:Ljava/lang/String;

    .line 390
    return-object p0
.end method
