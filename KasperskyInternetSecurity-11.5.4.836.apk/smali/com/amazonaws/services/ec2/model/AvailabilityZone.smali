.class public Lcom/amazonaws/services/ec2/model/AvailabilityZone;
.super Ljava/lang/Object;
.source "AvailabilityZone.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;",
            ">;"
        }
    .end annotation
.end field

.field private regionName:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private zoneName:Ljava/lang/String;


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

    .line 250
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 264
    :cond_0
    :goto_0
    return v3

    .line 251
    :cond_1
    if-eqz p1, :cond_0

    .line 253
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/AvailabilityZone;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 254
    check-cast v0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;

    .line 256
    .local v0, "other":Lcom/amazonaws/services/ec2/model/AvailabilityZone;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 264
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 256
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 258
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 260
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 262
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->messages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->messages:Ljava/util/List;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getRegionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->regionName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->zoneName:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 242
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 243
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 244
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 245
    return v0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setMessages(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;>;"
    if-nez p1, :cond_0

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->messages:Ljava/util/List;

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v0, "messagesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->messages:Ljava/util/List;

    goto :goto_0
.end method

.method public setRegionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "regionName"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->regionName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->state:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setZoneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->zoneName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getRegionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

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
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withMessages(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/AvailabilityZone;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/AvailabilityZone;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;>;"
    if-nez p1, :cond_0

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->messages:Ljava/util/List;

    .line 213
    :goto_0
    return-object p0

    .line 208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v0, "messagesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->messages:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withMessages([Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;)Lcom/amazonaws/services/ec2/model/AvailabilityZone;
    .locals 6
    .param p1, "messages"    # [Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->setMessages(Ljava/util/Collection;)V

    .line 188
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 189
    .local v3, "value":Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->getMessages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/AvailabilityZoneMessage;
    :cond_1
    return-object p0
.end method

.method public withRegionName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AvailabilityZone;
    .locals 0
    .param p1, "regionName"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->regionName:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AvailabilityZone;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->state:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public withZoneName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AvailabilityZone;
    .locals 0
    .param p1, "zoneName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AvailabilityZone;->zoneName:Ljava/lang/String;

    .line 75
    return-object p0
.end method
