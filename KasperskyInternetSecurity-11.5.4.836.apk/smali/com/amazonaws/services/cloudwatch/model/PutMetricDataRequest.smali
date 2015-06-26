.class public Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutMetricDataRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private metricData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/MetricDatum;",
            ">;"
        }
    .end annotation
.end field

.field private namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
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

    .line 223
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 224
    :cond_1
    if-eqz p1, :cond_0

    .line 226
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 227
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;

    .line 229
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 233
    goto :goto_0

    :cond_4
    move v1, v3

    .line 229
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 231
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getMetricData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/MetricDatum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->metricData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->metricData:Ljava/util/List;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->metricData:Ljava/util/List;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 213
    const/16 v1, 0x1f

    .line 214
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 216
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 217
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 218
    return v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setMetricData(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/MetricDatum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "metricData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/MetricDatum;>;"
    if-nez p1, :cond_0

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->metricData:Ljava/util/List;

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v0, "metricDataCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/MetricDatum;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->metricData:Ljava/util/List;

    goto :goto_0
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->namespace:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withMetricData(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/MetricDatum;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "metricData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/MetricDatum;>;"
    if-nez p1, :cond_0

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->metricData:Ljava/util/List;

    .line 190
    :goto_0
    return-object p0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v0, "metricDataCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/MetricDatum;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->metricData:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withMetricData([Lcom/amazonaws/services/cloudwatch/model/MetricDatum;)Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    .locals 6
    .param p1, "metricData"    # [Lcom/amazonaws/services/cloudwatch/model/MetricDatum;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->setMetricData(Ljava/util/Collection;)V

    .line 165
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 166
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    :cond_1
    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->namespace:Ljava/lang/String;

    .line 120
    return-object p0
.end method
