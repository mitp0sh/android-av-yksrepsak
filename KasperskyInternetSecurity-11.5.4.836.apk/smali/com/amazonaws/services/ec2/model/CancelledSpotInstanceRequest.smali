.class public Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;
.super Ljava/lang/Object;
.source "CancelledSpotInstanceRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private spotInstanceRequestId:Ljava/lang/String;

.field private state:Ljava/lang/String;


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

    .line 126
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    if-eqz p1, :cond_0

    .line 129
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 130
    check-cast v0, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;

    .line 132
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 136
    goto :goto_0

    :cond_4
    move v1, v3

    .line 132
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 134
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getSpotInstanceRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->spotInstanceRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->state:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 116
    const/16 v1, 0x1f

    .line 117
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 119
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 120
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 121
    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setSpotInstanceRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotInstanceRequestId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->spotInstanceRequestId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->state:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotInstanceRequestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withSpotInstanceRequestId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;
    .locals 0
    .param p1, "spotInstanceRequestId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->spotInstanceRequestId:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelledSpotInstanceRequest;->state:Ljava/lang/String;

    .line 92
    return-object p0
.end method