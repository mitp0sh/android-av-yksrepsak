.class public Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
.super Ljava/lang/Object;
.source "DescribeAutoScalingGroupsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private nextToken:Ljava/lang/String;


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

    .line 180
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 190
    :cond_0
    :goto_0
    return v3

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    .line 183
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 184
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;

    .line 186
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 190
    goto :goto_0

    :cond_4
    move v1, v3

    .line 186
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 188
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAutoScalingGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->autoScalingGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->autoScalingGroups:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->autoScalingGroups:Ljava/util/List;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 170
    const/16 v1, 0x1f

    .line 171
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 173
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 174
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 175
    return v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAutoScalingGroups(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "autoScalingGroups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;>;"
    if-nez p1, :cond_0

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->autoScalingGroups:Ljava/util/List;

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v0, "autoScalingGroupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->autoScalingGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->nextToken:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroups(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "autoScalingGroups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;>;"
    if-nez p1, :cond_0

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->autoScalingGroups:Ljava/util/List;

    .line 104
    :goto_0
    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v0, "autoScalingGroupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->autoScalingGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAutoScalingGroups([Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .locals 6
    .param p1, "autoScalingGroups"    # [Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->setAutoScalingGroups(Ljava/util/Collection;)V

    .line 79
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 80
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->getAutoScalingGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/AutoScalingGroup;
    :cond_1
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;->nextToken:Ljava/lang/String;

    .line 146
    return-object p0
.end method
