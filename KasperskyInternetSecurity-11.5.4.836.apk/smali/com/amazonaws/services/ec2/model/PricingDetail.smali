.class public Lcom/amazonaws/services/ec2/model/PricingDetail;
.super Ljava/lang/Object;
.source "PricingDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:Ljava/lang/Integer;

.field private price:Ljava/lang/Double;


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

    .line 125
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 135
    :cond_0
    :goto_0
    return v3

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    .line 128
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/PricingDetail;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/amazonaws/services/ec2/model/PricingDetail;

    .line 131
    .local v0, "other":Lcom/amazonaws/services/ec2/model/PricingDetail;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 135
    goto :goto_0

    :cond_4
    move v1, v3

    .line 131
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 133
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PricingDetail;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/PricingDetail;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 115
    const/16 v1, 0x1f

    .line 116
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 118
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 120
    return v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PricingDetail;->count:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PricingDetail;->price:Ljava/lang/Double;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Price: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/PricingDetail;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/PricingDetail;
    .locals 0
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PricingDetail;->count:Ljava/lang/Integer;

    .line 91
    return-object p0
.end method

.method public withPrice(Ljava/lang/Double;)Lcom/amazonaws/services/ec2/model/PricingDetail;
    .locals 0
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/PricingDetail;->price:Ljava/lang/Double;

    .line 57
    return-object p0
.end method
