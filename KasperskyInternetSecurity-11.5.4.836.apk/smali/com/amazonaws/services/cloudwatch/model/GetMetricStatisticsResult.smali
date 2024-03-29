.class public Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;
.super Ljava/lang/Object;
.source "GetMetricStatisticsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private datapoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Datapoint;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;


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

    .line 168
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 178
    :cond_0
    :goto_0
    return v3

    .line 169
    :cond_1
    if-eqz p1, :cond_0

    .line 171
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 172
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;

    .line 174
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 178
    goto :goto_0

    :cond_4
    move v1, v3

    .line 174
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 176
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getDatapoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Datapoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->datapoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->datapoints:Ljava/util/List;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->datapoints:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->label:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 158
    const/16 v1, 0x1f

    .line 159
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 161
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 162
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 163
    return v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setDatapoints(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Datapoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "datapoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Datapoint;>;"
    if-nez p1, :cond_0

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->datapoints:Ljava/util/List;

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v0, "datapointsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Datapoint;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->datapoints:Ljava/util/List;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->label:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Datapoints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDatapoints(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Datapoint;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "datapoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Datapoint;>;"
    if-nez p1, :cond_0

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->datapoints:Ljava/util/List;

    .line 135
    :goto_0
    return-object p0

    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v0, "datapointsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Datapoint;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->datapoints:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDatapoints([Lcom/amazonaws/services/cloudwatch/model/Datapoint;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;
    .locals 6
    .param p1, "datapoints"    # [Lcom/amazonaws/services/cloudwatch/model/Datapoint;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->setDatapoints(Ljava/util/Collection;)V

    .line 110
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 111
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->getDatapoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/Datapoint;
    :cond_1
    return-object p0
.end method

.method public withLabel(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;->label:Ljava/lang/String;

    .line 65
    return-object p0
.end method
