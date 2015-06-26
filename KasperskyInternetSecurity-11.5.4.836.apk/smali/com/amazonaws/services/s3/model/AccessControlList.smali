.class public Lcom/amazonaws/services/s3/model/AccessControlList;
.super Ljava/lang/Object;
.source "AccessControlList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x70575c947c762418L


# instance fields
.field private grants:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazonaws/services/s3/model/Grant;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/amazonaws/services/s3/model/Owner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grants:Ljava/util/HashSet;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method


# virtual methods
.method public getGrants()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazonaws/services/s3/model/Grant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grants:Ljava/util/HashSet;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public varargs grantAllPermissions([Lcom/amazonaws/services/s3/model/Grant;)V
    .locals 6
    .param p1, "grantsVarArg"    # [Lcom/amazonaws/services/s3/model/Grant;

    .prologue
    .line 128
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/s3/model/Grant;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 129
    .local v1, "gap":Lcom/amazonaws/services/s3/model/Grant;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/services/s3/model/AccessControlList;->grantPermission(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "gap":Lcom/amazonaws/services/s3/model/Grant;
    :cond_0
    return-void
.end method

.method public grantPermission(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V
    .locals 2
    .param p1, "grantee"    # Lcom/amazonaws/services/s3/model/Grantee;
    .param p2, "permission"    # Lcom/amazonaws/services/s3/model/Permission;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grants:Ljava/util/HashSet;

    new-instance v1, Lcom/amazonaws/services/s3/model/Grant;

    invoke-direct {v1, p1, p2}, Lcom/amazonaws/services/s3/model/Grant;-><init>(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public revokeAllPermissions(Lcom/amazonaws/services/s3/model/Grantee;)V
    .locals 4
    .param p1, "grantee"    # Lcom/amazonaws/services/s3/model/Grantee;

    .prologue
    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "grantsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amazonaws/services/s3/model/Grant;>;"
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/Grant;

    .line 142
    .local v0, "gap":Lcom/amazonaws/services/s3/model/Grant;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0    # "gap":Lcom/amazonaws/services/s3/model/Grant;
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 147
    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0
    .param p1, "owner"    # Lcom/amazonaws/services/s3/model/Owner;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessControlList [owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
