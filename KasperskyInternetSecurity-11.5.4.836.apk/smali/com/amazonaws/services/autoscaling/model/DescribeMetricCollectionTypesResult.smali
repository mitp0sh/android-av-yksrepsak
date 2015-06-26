.class public Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
.super Ljava/lang/Object;
.source "DescribeMetricCollectionTypesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private granularities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;",
            ">;"
        }
    .end annotation
.end field

.field private metrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;",
            ">;"
        }
    .end annotation
.end field


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

    .line 248
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 258
    :cond_0
    :goto_0
    return v3

    .line 249
    :cond_1
    if-eqz p1, :cond_0

    .line 251
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 252
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;

    .line 254
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 258
    goto :goto_0

    :cond_4
    move v1, v3

    .line 254
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 256
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getGranularities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->granularities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->granularities:Ljava/util/List;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->granularities:Ljava/util/List;

    return-object v0
.end method

.method public getMetrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->metrics:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->metrics:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->metrics:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 238
    const/16 v1, 0x1f

    .line 239
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 241
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 242
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 243
    return v0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setGranularities(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "granularities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;>;"
    if-nez p1, :cond_0

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->granularities:Ljava/util/List;

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
    .local v0, "granularitiesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->granularities:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetrics(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "metrics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;>;"
    if-nez p1, :cond_0

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->metrics:Ljava/util/List;

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, "metricsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->metrics:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granularities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withGranularities(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "granularities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;>;"
    if-nez p1, :cond_0

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->granularities:Ljava/util/List;

    .line 215
    :goto_0
    return-object p0

    .line 210
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v0, "granularitiesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->granularities:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGranularities([Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 6
    .param p1, "granularities"    # [Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->setGranularities(Ljava/util/Collection;)V

    .line 190
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 191
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getGranularities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/MetricGranularityType;
    :cond_1
    return-object p0
.end method

.method public withMetrics(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "metrics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;>;"
    if-nez p1, :cond_0

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->metrics:Ljava/util/List;

    .line 146
    :goto_0
    return-object p0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "metricsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->metrics:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withMetrics([Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 6
    .param p1, "metrics"    # [Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->setMetrics(Ljava/util/Collection;)V

    .line 111
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 112
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;->getMetrics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/MetricCollectionType;
    :cond_1
    return-object p0
.end method
