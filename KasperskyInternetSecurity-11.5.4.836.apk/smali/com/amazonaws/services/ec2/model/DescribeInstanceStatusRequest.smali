.class public Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeInstanceStatusRequest.java"

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

.field private includeAllInstances:Ljava/lang/Boolean;

.field private instanceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxResults:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
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

    .line 390
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 406
    :cond_0
    :goto_0
    return v3

    .line 391
    :cond_1
    if-eqz p1, :cond_0

    .line 393
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 394
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;

    .line 396
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 406
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 396
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 398
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 400
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 402
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 404
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
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
    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->filters:Ljava/util/List;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getIncludeAllInstances()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->includeAllInstances:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstanceIds()Ljava/util/List;
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
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->instanceIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->instanceIds:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->instanceIds:Ljava/util/List;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->maxResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 377
    const/16 v1, 0x1f

    .line 378
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 380
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 381
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 382
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 383
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 384
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 385
    return v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    .line 384
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isIncludeAllInstances()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->includeAllInstances:Ljava/lang/Boolean;

    return-object v0
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
    .line 193
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->filters:Ljava/util/List;

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public setIncludeAllInstances(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "includeAllInstances"    # Ljava/lang/Boolean;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->includeAllInstances:Ljava/lang/Boolean;

    .line 327
    return-void
.end method

.method public setInstanceIds(Ljava/util/Collection;)V
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
    .line 120
    .local p1, "instanceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->instanceIds:Ljava/util/List;

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v0, "instanceIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->instanceIds:Ljava/util/List;

    goto :goto_0
.end method

.method public setMaxResults(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->maxResults:Ljava/lang/Integer;

    .line 293
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->nextToken:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IncludeAllInstances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->isIncludeAllInstances()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withFilters(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->filters:Ljava/util/List;

    .line 240
    :goto_0
    return-object p0

    .line 235
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withFilters([Lcom/amazonaws/services/ec2/model/Filter;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .locals 6
    .param p1, "filters"    # [Lcom/amazonaws/services/ec2/model/Filter;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->setFilters(Ljava/util/Collection;)V

    .line 215
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

    .line 216
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Filter;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_1
    return-object p0
.end method

.method public withIncludeAllInstances(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .locals 0
    .param p1, "includeAllInstances"    # Ljava/lang/Boolean;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->includeAllInstances:Ljava/lang/Boolean;

    .line 341
    return-object p0
.end method

.method public withInstanceIds(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "instanceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->instanceIds:Ljava/util/List;

    .line 171
    :goto_0
    return-object p0

    .line 166
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v0, "instanceIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->instanceIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstanceIds([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .locals 6
    .param p1, "instanceIds"    # [Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->setInstanceIds(Ljava/util/Collection;)V

    .line 144
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

    .line 145
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->maxResults:Ljava/lang/Integer;

    .line 307
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;->nextToken:Ljava/lang/String;

    .line 273
    return-object p0
.end method
