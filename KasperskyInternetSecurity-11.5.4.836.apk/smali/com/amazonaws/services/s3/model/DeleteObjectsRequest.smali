.class public Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

.field private quiet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    return-object v0
.end method

.method public getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method

.method public getQuiet()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->quiet:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->bucketName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    return-void
.end method

.method public setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .line 155
    return-void
.end method

.method public setQuiet(Z)V
    .locals 0
    .param p1, "quiet"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->quiet:Z

    .line 192
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 109
    return-object p0
.end method

.method public withKeys(Ljava/util/List;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setKeys(Ljava/util/List;)V

    .line 236
    return-object p0
.end method

.method public varargs withKeys([Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 6
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 252
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 253
    .local v3, "keyVersions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 254
    .local v2, "key":Ljava/lang/String;
    new-instance v5, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    invoke-direct {v5, v2}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setKeys(Ljava/util/List;)V

    .line 257
    return-object p0
.end method

.method public withMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 183
    return-object p0
.end method

.method public withQuiet(Z)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .param p1, "quiet"    # Z

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setQuiet(Z)V

    .line 210
    return-object p0
.end method
