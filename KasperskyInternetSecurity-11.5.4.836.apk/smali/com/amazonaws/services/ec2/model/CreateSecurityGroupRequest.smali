.class public Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateSecurityGroupRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private vpcId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->groupName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->description:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 218
    :cond_0
    :goto_0
    return v3

    .line 207
    :cond_1
    if-eqz p1, :cond_0

    .line 209
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;

    .line 212
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 218
    goto :goto_0

    :cond_5
    move v1, v3

    .line 212
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 214
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 216
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getVpcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->vpcId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 195
    const/16 v1, 0x1f

    .line 196
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 198
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 199
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 201
    return v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->description:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->groupName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setVpcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->vpcId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpcId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->getVpcId()Ljava/lang/String;

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
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->description:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public withGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->groupName:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public withVpcId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;
    .locals 0
    .param p1, "vpcId"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;->vpcId:Ljava/lang/String;

    .line 170
    return-object p0
.end method
