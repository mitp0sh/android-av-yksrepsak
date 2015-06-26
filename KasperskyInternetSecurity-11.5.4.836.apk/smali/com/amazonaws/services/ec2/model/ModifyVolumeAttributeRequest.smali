.class public Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ModifyVolumeAttributeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoEnableIO:Ljava/lang/Boolean;

.field private volumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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

    .line 138
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 148
    :cond_0
    :goto_0
    return v3

    .line 139
    :cond_1
    if-eqz p1, :cond_0

    .line 141
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;

    .line 144
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 148
    goto :goto_0

    :cond_4
    move v1, v3

    .line 144
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 146
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAutoEnableIO()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->autoEnableIO:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 128
    const/16 v1, 0x1f

    .line 129
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 131
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 133
    return v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isAutoEnableIO()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->autoEnableIO:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAutoEnableIO(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "autoEnableIO"    # Ljava/lang/Boolean;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->autoEnableIO:Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->volumeId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoEnableIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoEnableIO(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;
    .locals 0
    .param p1, "autoEnableIO"    # Ljava/lang/Boolean;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->autoEnableIO:Ljava/lang/Boolean;

    .line 95
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;->volumeId:Ljava/lang/String;

    .line 61
    return-object p0
.end method
