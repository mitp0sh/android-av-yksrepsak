.class public Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
.super Ljava/lang/Object;
.source "DescribeVolumeAttributeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoEnableIO:Ljava/lang/Boolean;

.field private productCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation
.end field

.field private volumeId:Ljava/lang/String;


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

    .line 210
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 222
    :cond_0
    :goto_0
    return v3

    .line 211
    :cond_1
    if-eqz p1, :cond_0

    .line 213
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;

    .line 216
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 222
    goto :goto_0

    :cond_5
    move v1, v3

    .line 216
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 218
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 220
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAutoEnableIO()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->autoEnableIO:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProductCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->productCodes:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 199
    const/16 v1, 0x1f

    .line 200
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 202
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 203
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 204
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 205
    return v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isAutoEnableIO()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->autoEnableIO:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAutoEnableIO(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "autoEnableIO"    # Ljava/lang/Boolean;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->autoEnableIO:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public setProductCodes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->productCodes:Ljava/util/List;

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->volumeId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoEnableIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->isAutoEnableIO()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoEnableIO(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .locals 0
    .param p1, "autoEnableIO"    # Ljava/lang/Boolean;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->autoEnableIO:Ljava/lang/Boolean;

    .line 96
    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->productCodes:Ljava/util/List;

    .line 175
    :goto_0
    return-object p0

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .locals 6
    .param p1, "productCodes"    # [Lcom/amazonaws/services/ec2/model/ProductCode;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->setProductCodes(Ljava/util/Collection;)V

    .line 150
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/ProductCode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 151
    .local v3, "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    :cond_1
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;->volumeId:Ljava/lang/String;

    .line 62
    return-object p0
.end method
