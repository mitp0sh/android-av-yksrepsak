.class public Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribePlacementGroupsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private groupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
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

    .line 243
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 253
    :cond_0
    :goto_0
    return v3

    .line 244
    :cond_1
    if-eqz p1, :cond_0

    .line 246
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;

    .line 249
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 253
    goto :goto_0

    :cond_4
    move v1, v3

    .line 249
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 251
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->filters:Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getGroupNames()Ljava/util/List;
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
    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->groupNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->groupNames:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->groupNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 233
    const/16 v1, 0x1f

    .line 234
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 236
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 237
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 238
    return v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setFilters(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->filters:Ljava/util/List;

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public setGroupNames(Ljava/util/Collection;)V
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
    .line 62
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->groupNames:Ljava/util/List;

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v0, "groupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->groupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withFilters(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->filters:Ljava/util/List;

    .line 210
    :goto_0
    return-object p0

    .line 205
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withFilters([Lcom/amazonaws/services/ec2/model/Filter;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;
    .locals 6
    .param p1, "filters"    # [Lcom/amazonaws/services/ec2/model/Filter;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->setFilters(Ljava/util/Collection;)V

    .line 177
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Filter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 178
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Filter;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_1
    return-object p0
.end method

.method public withGroupNames(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->groupNames:Ljava/util/List;

    .line 109
    :goto_0
    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v0, "groupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->groupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroupNames([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;
    .locals 6
    .param p1, "groupNames"    # [Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->setGroupNames(Ljava/util/Collection;)V

    .line 84
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

    .line 85
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;->getGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
