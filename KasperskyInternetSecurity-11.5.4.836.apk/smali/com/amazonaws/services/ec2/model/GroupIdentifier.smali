.class public Lcom/amazonaws/services/ec2/model/GroupIdentifier;
.super Ljava/lang/Object;
.source "GroupIdentifier.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupId:Ljava/lang/String;

.field private groupName:Ljava/lang/String;


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

    .line 130
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 140
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    if-eqz p1, :cond_0

    .line 133
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 134
    check-cast v0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .line 136
    .local v0, "other":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 140
    goto :goto_0

    :cond_4
    move v1, v3

    .line 136
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 138
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 120
    const/16 v1, 0x1f

    .line 121
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 123
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 124
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 125
    return v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->groupId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->groupName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withGroupId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->groupId:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public withGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->groupName:Ljava/lang/String;

    .line 62
    return-object p0
.end method
