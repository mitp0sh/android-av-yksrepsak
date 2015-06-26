.class public Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutNotificationConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private notificationTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private topicARN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
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

    .line 265
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 277
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    if-eqz p1, :cond_0

    .line 268
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 269
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;

    .line 271
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 277
    goto :goto_0

    :cond_5
    move v1, v3

    .line 271
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 273
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 275
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTypes()Ljava/util/List;
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
    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->notificationTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->notificationTypes:Ljava/util/List;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->notificationTypes:Ljava/util/List;

    return-object v0
.end method

.method public getTopicARN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->topicARN:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 258
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 259
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 260
    return v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setNotificationTypes(Ljava/util/Collection;)V
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
    .line 179
    .local p1, "notificationTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->notificationTypes:Ljava/util/List;

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v0, "notificationTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->notificationTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public setTopicARN(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicARN"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->topicARN:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopicARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getTopicARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationTypes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

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
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public withNotificationTypes(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "notificationTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->notificationTypes:Ljava/util/List;

    .line 230
    :goto_0
    return-object p0

    .line 225
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v0, "notificationTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->notificationTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withNotificationTypes([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    .locals 6
    .param p1, "notificationTypes"    # [Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->setNotificationTypes(Ljava/util/Collection;)V

    .line 203
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

    .line 204
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->getNotificationTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withTopicARN(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    .locals 0
    .param p1, "topicARN"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;->topicARN:Ljava/lang/String;

    .line 152
    return-object p0
.end method
