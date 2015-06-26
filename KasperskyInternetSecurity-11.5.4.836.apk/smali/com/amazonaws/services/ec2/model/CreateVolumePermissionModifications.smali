.class public Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
.super Ljava/lang/Object;
.source "CreateVolumePermissionModifications.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private add:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;"
        }
    .end annotation
.end field

.field private remove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;"
        }
    .end annotation
.end field


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

    .line 195
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 205
    :cond_0
    :goto_0
    return v3

    .line 196
    :cond_1
    if-eqz p1, :cond_0

    .line 198
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 199
    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    .line 201
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 205
    goto :goto_0

    :cond_4
    move v1, v3

    .line 201
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 203
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAdd()Ljava/util/List;
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
    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->add:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->add:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->add:Ljava/util/List;

    return-object v0
.end method

.method public getRemove()Ljava/util/List;
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
    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->remove:Ljava/util/List;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->remove:Ljava/util/List;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->remove:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 185
    const/16 v1, 0x1f

    .line 186
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 188
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 189
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 190
    return v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAdd(Ljava/util/Collection;)V
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
    .line 46
    .local p1, "add":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    if-nez p1, :cond_0

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->add:Ljava/util/List;

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v0, "addCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->add:Ljava/util/List;

    goto :goto_0
.end method

.method public setRemove(Ljava/util/Collection;)V
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
    .line 115
    .local p1, "remove":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    if-nez p1, :cond_0

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->remove:Ljava/util/List;

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v0, "removeCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->remove:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAdd(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "add":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    if-nez p1, :cond_0

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->add:Ljava/util/List;

    .line 93
    :goto_0
    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "addCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->add:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAdd([Lcom/amazonaws/services/ec2/model/CreateVolumePermission;)Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
    .locals 6
    .param p1, "add"    # [Lcom/amazonaws/services/ec2/model/CreateVolumePermission;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->setAdd(Ljava/util/Collection;)V

    .line 68
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

    .line 69
    .local v3, "value":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    :cond_1
    return-object p0
.end method

.method public withRemove(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "remove":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    if-nez p1, :cond_0

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->remove:Ljava/util/List;

    .line 162
    :goto_0
    return-object p0

    .line 157
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v0, "removeCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->remove:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withRemove([Lcom/amazonaws/services/ec2/model/CreateVolumePermission;)Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
    .locals 6
    .param p1, "remove"    # [Lcom/amazonaws/services/ec2/model/CreateVolumePermission;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->setRemove(Ljava/util/Collection;)V

    .line 137
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

    .line 138
    .local v3, "value":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    :cond_1
    return-object p0
.end method
