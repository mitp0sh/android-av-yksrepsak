.class public Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListMetricsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private metricName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
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

    .line 313
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 327
    :cond_0
    :goto_0
    return v3

    .line 314
    :cond_1
    if-eqz p1, :cond_0

    .line 316
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 317
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;

    .line 319
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 327
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 319
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 321
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 323
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 325
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->dimensions:Ljava/util/List;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 301
    const/16 v1, 0x1f

    .line 302
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 304
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 305
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 306
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 307
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 308
    return v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setDimensions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;>;"
    if-nez p1, :cond_0

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->dimensions:Ljava/util/List;

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->metricName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->namespace:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->nextToken:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNamespace()Ljava/lang/String;

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
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;>;"
    if-nez p1, :cond_0

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->dimensions:Ljava/util/List;

    .line 236
    :goto_0
    return-object p0

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .locals 6
    .param p1, "dimensions"    # [Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->setDimensions(Ljava/util/Collection;)V

    .line 208
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 209
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/DimensionFilter;
    :cond_1
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->metricName:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->namespace:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;->nextToken:Ljava/lang/String;

    .line 275
    return-object p0
.end method
