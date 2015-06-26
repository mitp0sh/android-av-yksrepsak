.class public Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
.super Ljava/lang/Object;
.source "StatisticSet.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private maximum:Ljava/lang/Double;

.field private minimum:Ljava/lang/Double;

.field private sampleCount:Ljava/lang/Double;

.field private sum:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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

    .line 216
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 230
    :cond_0
    :goto_0
    return v3

    .line 217
    :cond_1
    if-eqz p1, :cond_0

    .line 219
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 220
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    .line 222
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 230
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 222
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 224
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 226
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 228
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getMaximum()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->maximum:Ljava/lang/Double;

    return-object v0
.end method

.method public getMinimum()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->minimum:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampleCount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sampleCount:Ljava/lang/Double;

    return-object v0
.end method

.method public getSum()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sum:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 204
    const/16 v1, 0x1f

    .line 205
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 207
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 208
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 209
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 210
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 211
    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_2

    .line 210
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setMaximum(Ljava/lang/Double;)V
    .locals 0
    .param p1, "maximum"    # Ljava/lang/Double;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->maximum:Ljava/lang/Double;

    .line 164
    return-void
.end method

.method public setMinimum(Ljava/lang/Double;)V
    .locals 0
    .param p1, "minimum"    # Ljava/lang/Double;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->minimum:Ljava/lang/Double;

    .line 130
    return-void
.end method

.method public setSampleCount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "sampleCount"    # Ljava/lang/Double;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sampleCount:Ljava/lang/Double;

    .line 62
    return-void
.end method

.method public setSum(Ljava/lang/Double;)V
    .locals 0
    .param p1, "sum"    # Ljava/lang/Double;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sum:Ljava/lang/Double;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SampleCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withMaximum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0
    .param p1, "maximum"    # Ljava/lang/Double;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->maximum:Ljava/lang/Double;

    .line 178
    return-object p0
.end method

.method public withMinimum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0
    .param p1, "minimum"    # Ljava/lang/Double;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->minimum:Ljava/lang/Double;

    .line 144
    return-object p0
.end method

.method public withSampleCount(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0
    .param p1, "sampleCount"    # Ljava/lang/Double;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sampleCount:Ljava/lang/Double;

    .line 76
    return-object p0
.end method

.method public withSum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0
    .param p1, "sum"    # Ljava/lang/Double;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sum:Ljava/lang/Double;

    .line 110
    return-object p0
.end method
