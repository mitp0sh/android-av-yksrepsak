.class public Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeSpotInstanceRequestsRequest.java"

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

.field private spotInstanceRequestIds:Ljava/util/List;
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
    .line 48
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

    .line 264
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 274
    :cond_0
    :goto_0
    return v3

    .line 265
    :cond_1
    if-eqz p1, :cond_0

    .line 267
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 268
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;

    .line 270
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 274
    goto :goto_0

    :cond_4
    move v1, v3

    .line 270
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 272
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
    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->filters:Ljava/util/List;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getSpotInstanceRequestIds()Ljava/util/List;
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
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->spotInstanceRequestIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->spotInstanceRequestIds:Ljava/util/List;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->spotInstanceRequestIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 254
    const/16 v1, 0x1f

    .line 255
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 257
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 258
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 259
    return v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

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
    .line 168
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->filters:Ljava/util/List;

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public setSpotInstanceRequestIds(Ljava/util/Collection;)V
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
    .line 83
    .local p1, "spotInstanceRequestIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->spotInstanceRequestIds:Ljava/util/List;

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "spotInstanceRequestIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->spotInstanceRequestIds:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotInstanceRequestIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withFilters(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->filters:Ljava/util/List;

    .line 231
    :goto_0
    return-object p0

    .line 226
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withFilters([Lcom/amazonaws/services/ec2/model/Filter;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;
    .locals 6
    .param p1, "filters"    # [Lcom/amazonaws/services/ec2/model/Filter;

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->setFilters(Ljava/util/Collection;)V

    .line 198
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

    .line 199
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Filter;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_1
    return-object p0
.end method

.method public withSpotInstanceRequestIds(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "spotInstanceRequestIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->spotInstanceRequestIds:Ljava/util/List;

    .line 130
    :goto_0
    return-object p0

    .line 125
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v0, "spotInstanceRequestIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->spotInstanceRequestIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSpotInstanceRequestIds([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;
    .locals 6
    .param p1, "spotInstanceRequestIds"    # [Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->setSpotInstanceRequestIds(Ljava/util/Collection;)V

    .line 105
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

    .line 106
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;->getSpotInstanceRequestIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
