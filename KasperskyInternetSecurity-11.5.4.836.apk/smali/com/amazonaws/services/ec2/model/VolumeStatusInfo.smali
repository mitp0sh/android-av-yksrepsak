.class public Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;
.super Ljava/lang/Object;
.source "VolumeStatusInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


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

    .line 160
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 170
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    if-eqz p1, :cond_0

    .line 163
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 164
    check-cast v0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    .line 166
    .local v0, "other":Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 170
    goto :goto_0

    :cond_4
    move v1, v3

    .line 166
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 168
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->details:Ljava/util/List;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->details:Ljava/util/List;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->details:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 150
    const/16 v1, 0x1f

    .line 151
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 153
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 155
    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setDetails(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "details":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;>;"
    if-nez p1, :cond_0

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->details:Ljava/util/List;

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "detailsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->details:Ljava/util/List;

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->status:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDetails(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "details":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;>;"
    if-nez p1, :cond_0

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->details:Ljava/util/List;

    .line 127
    :goto_0
    return-object p0

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v0, "detailsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->details:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDetails([Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;)Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;
    .locals 6
    .param p1, "details"    # [Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->setDetails(Ljava/util/Collection;)V

    .line 102
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 103
    .local v3, "value":Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->getDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/VolumeStatusDetails;
    :cond_1
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->status:Ljava/lang/String;

    .line 57
    return-object p0
.end method
