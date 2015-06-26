.class public Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
.super Ljava/lang/Object;
.source "DescribeVolumeStatusResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nextToken:Ljava/lang/String;

.field private volumeStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusItem;",
            ">;"
        }
    .end annotation
.end field


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

    .line 160
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 170
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    if-eqz p1, :cond_0

    .line 163
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 164
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;

    .line 166
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 170
    goto :goto_0

    :cond_4
    move v1, v3

    .line 166
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 168
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeStatuses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->volumeStatuses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->volumeStatuses:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->volumeStatuses:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 150
    const/16 v1, 0x1f

    .line 151
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 153
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 155
    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->nextToken:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setVolumeStatuses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "volumeStatuses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusItem;>;"
    if-nez p1, :cond_0

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->volumeStatuses:Ljava/util/List;

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v0, "volumeStatusesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->volumeStatuses:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeStatuses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->nextToken:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public withVolumeStatuses(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusItem;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "volumeStatuses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusItem;>;"
    if-nez p1, :cond_0

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->volumeStatuses:Ljava/util/List;

    .line 93
    :goto_0
    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "volumeStatusesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->volumeStatuses:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withVolumeStatuses([Lcom/amazonaws/services/ec2/model/VolumeStatusItem;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .locals 6
    .param p1, "volumeStatuses"    # [Lcom/amazonaws/services/ec2/model/VolumeStatusItem;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->setVolumeStatuses(Ljava/util/Collection;)V

    .line 68
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 69
    .local v3, "value":Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;->getVolumeStatuses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    :cond_1
    return-object p0
.end method
