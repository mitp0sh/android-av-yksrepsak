.class public Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeAutoScalingGroupsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxRecords:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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

    .line 242
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 254
    :cond_0
    :goto_0
    return v3

    .line 243
    :cond_1
    if-eqz p1, :cond_0

    .line 245
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;

    .line 248
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 254
    goto :goto_0

    :cond_5
    move v1, v3

    .line 248
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 250
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 252
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAutoScalingGroupNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->autoScalingGroupNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->autoScalingGroupNames:Ljava/util/List;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->autoScalingGroupNames:Ljava/util/List;

    return-object v0
.end method

.method public getMaxRecords()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->maxRecords:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 231
    const/16 v1, 0x1f

    .line 232
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 234
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 235
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 236
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 237
    return v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAutoScalingGroupNames(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "autoScalingGroupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->autoScalingGroupNames:Ljava/util/List;

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v0, "autoScalingGroupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->autoScalingGroupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setMaxRecords(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->maxRecords:Ljava/lang/Integer;

    .line 189
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->nextToken:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxRecords: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupNames(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "autoScalingGroupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->autoScalingGroupNames:Ljava/util/List;

    .line 121
    :goto_0
    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v0, "autoScalingGroupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->autoScalingGroupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAutoScalingGroupNames([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    .locals 6
    .param p1, "autoScalingGroupNames"    # [Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->setAutoScalingGroupNames(Ljava/util/Collection;)V

    .line 96
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 97
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->getAutoScalingGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMaxRecords(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->maxRecords:Ljava/lang/Integer;

    .line 206
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;->nextToken:Ljava/lang/String;

    .line 163
    return-object p0
.end method
