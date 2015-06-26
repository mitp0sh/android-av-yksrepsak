.class public Lcom/amazonaws/services/ec2/model/PlacementGroup;
.super Ljava/lang/Object;
.source "PlacementGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupName:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private strategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->groupName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 321
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    if-eqz p1, :cond_0

    .line 312
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/PlacementGroup;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 313
    check-cast v0, Lcom/amazonaws/services/ec2/model/PlacementGroup;

    .line 315
    .local v0, "other":Lcom/amazonaws/services/ec2/model/PlacementGroup;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 321
    goto :goto_0

    :cond_5
    move v1, v3

    .line 315
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 317
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 319
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->strategy:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 298
    const/16 v1, 0x1f

    .line 299
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 301
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 302
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 303
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 304
    return v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->groupName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/PlacementGroupState;)V
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/PlacementGroupState;

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PlacementGroupState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->state:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->state:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setStrategy(Lcom/amazonaws/services/ec2/model/PlacementStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/amazonaws/services/ec2/model/PlacementStrategy;

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PlacementStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->strategy:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->strategy:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getStrategy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PlacementGroup;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withGroupName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/PlacementGroup;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->groupName:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/PlacementGroupState;)Lcom/amazonaws/services/ec2/model/PlacementGroup;
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/PlacementGroupState;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PlacementGroupState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->state:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/PlacementGroup;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->state:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public withStrategy(Lcom/amazonaws/services/ec2/model/PlacementStrategy;)Lcom/amazonaws/services/ec2/model/PlacementGroup;
    .locals 1
    .param p1, "strategy"    # Lcom/amazonaws/services/ec2/model/PlacementStrategy;

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/PlacementStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->strategy:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public withStrategy(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/PlacementGroup;
    .locals 0
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PlacementGroup;->strategy:Ljava/lang/String;

    .line 152
    return-object p0
.end method
