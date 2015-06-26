.class public Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreatePlacementGroupRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupName:Ljava/lang/String;

.field private strategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/ec2/model/PlacementStrategy;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "strategy"    # Lcom/amazonaws/services/ec2/model/PlacementStrategy;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->groupName:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/PlacementStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->strategy:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "strategy"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->groupName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->strategy:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 234
    :cond_0
    :goto_0
    return v3

    .line 225
    :cond_1
    if-eqz p1, :cond_0

    .line 227
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;

    .line 230
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 234
    goto :goto_0

    :cond_4
    move v1, v3

    .line 230
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 232
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->strategy:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 214
    const/16 v1, 0x1f

    .line 215
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 217
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 218
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 219
    return v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->groupName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setStrategy(Lcom/amazonaws/services/ec2/model/PlacementStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/amazonaws/services/ec2/model/PlacementStrategy;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PlacementStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->strategy:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->strategy:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->getStrategy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->groupName:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public withStrategy(Lcom/amazonaws/services/ec2/model/PlacementStrategy;)Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;
    .locals 1
    .param p1, "strategy"    # Lcom/amazonaws/services/ec2/model/PlacementStrategy;

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PlacementStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->strategy:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public withStrategy(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;
    .locals 0
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;->strategy:Ljava/lang/String;

    .line 156
    return-object p0
.end method
