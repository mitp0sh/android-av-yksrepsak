.class public Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
.super Ljava/lang/Object;
.source "DescribeAutoScalingNotificationTypesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingNotificationTypes:Ljava/util/List;
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

    .line 172
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 173
    :cond_1
    if-eqz p1, :cond_0

    .line 175
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 176
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;

    .line 178
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 180
    goto :goto_0

    :cond_3
    move v1, v3

    .line 178
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getAutoScalingNotificationTypes()Ljava/util/List;
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
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->autoScalingNotificationTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->autoScalingNotificationTypes:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->autoScalingNotificationTypes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 163
    const/16 v1, 0x1f

    .line 164
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 166
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 167
    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setAutoScalingNotificationTypes(Ljava/util/Collection;)V
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
    .line 74
    .local p1, "autoScalingNotificationTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->autoScalingNotificationTypes:Ljava/util/List;

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v0, "autoScalingNotificationTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->autoScalingNotificationTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingNotificationTypes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingNotificationTypes(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "autoScalingNotificationTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->autoScalingNotificationTypes:Ljava/util/List;

    .line 141
    :goto_0
    return-object p0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v0, "autoScalingNotificationTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->autoScalingNotificationTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAutoScalingNotificationTypes([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .locals 6
    .param p1, "autoScalingNotificationTypes"    # [Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->setAutoScalingNotificationTypes(Ljava/util/Collection;)V

    .line 106
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

    .line 107
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;->getAutoScalingNotificationTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
