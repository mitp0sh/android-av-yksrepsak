.class public Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
.super Ljava/lang/Object;
.source "DescribeSnapshotAttributeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createVolumePermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;"
        }
    .end annotation
.end field

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

.field private snapshotId:Ljava/lang/String;


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

    .line 259
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 271
    :cond_0
    :goto_0
    return v3

    .line 260
    :cond_1
    if-eqz p1, :cond_0

    .line 262
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 263
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;

    .line 265
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 271
    goto :goto_0

    :cond_5
    move v1, v3

    .line 265
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 267
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 269
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getCreateVolumePermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->createVolumePermissions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->createVolumePermissions:Ljava/util/List;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->createVolumePermissions:Ljava/util/List;

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
    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->productCodes:Ljava/util/List;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 248
    const/16 v1, 0x1f

    .line 249
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 251
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 252
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 254
    return v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setCreateVolumePermissions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "createVolumePermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    if-nez p1, :cond_0

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->createVolumePermissions:Ljava/util/List;

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v0, "createVolumePermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->createVolumePermissions:Ljava/util/List;

    goto :goto_0
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
    .line 177
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->productCodes:Ljava/util/List;

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->snapshotId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateVolumePermissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCreateVolumePermissions(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "createVolumePermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    if-nez p1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->createVolumePermissions:Ljava/util/List;

    .line 155
    :goto_0
    return-object p0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "createVolumePermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->createVolumePermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withCreateVolumePermissions([Lcom/amazonaws/services/ec2/model/CreateVolumePermission;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .locals 6
    .param p1, "createVolumePermissions"    # [Lcom/amazonaws/services/ec2/model/CreateVolumePermission;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->setCreateVolumePermissions(Ljava/util/Collection;)V

    .line 126
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 127
    .local v3, "value":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getCreateVolumePermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    :cond_1
    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->productCodes:Ljava/util/List;

    .line 224
    :goto_0
    return-object p0

    .line 219
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .locals 6
    .param p1, "productCodes"    # [Lcom/amazonaws/services/ec2/model/ProductCode;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->setProductCodes(Ljava/util/Collection;)V

    .line 199
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

    .line 200
    .local v3, "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    :cond_1
    return-object p0
.end method

.method public withSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;->snapshotId:Ljava/lang/String;

    .line 69
    return-object p0
.end method
