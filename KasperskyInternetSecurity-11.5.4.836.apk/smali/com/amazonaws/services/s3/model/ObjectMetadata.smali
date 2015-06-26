.class public Lcom/amazonaws/services/s3/model/ObjectMetadata;
.super Ljava/lang/Object;
.source "ObjectMetadata.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ObjectRestoreResult;
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# static fields
.field public static final AES_256_SERVER_SIDE_ENCRYPTION:Ljava/lang/String; = "AES256"


# instance fields
.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingRestore:Ljava/lang/Boolean;

.field private restoreExpirationTime:Ljava/util/Date;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v2, "Content-Length"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 255
    .local v0, "contentLength":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 256
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Last-Modified"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getOngoingRestore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->ongoingRestore:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRawMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->restoreExpirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "x-amz-version-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "disposition"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public setContentLength(J)V
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5Base64"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->expirationTime:Ljava/util/Date;

    .line 612
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationTimeRuleId"    # Ljava/lang/String;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 2
    .param p1, "lastModified"    # Ljava/util/Date;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Last-Modified"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public setOngoingRestore(Z)V
    .locals 1
    .param p1, "ongoingRestore"    # Z

    .prologue
    .line 659
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->ongoingRestore:Ljava/lang/Boolean;

    .line 660
    return-void
.end method

.method public setRestoreExpirationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "restoreExpirationTime"    # Ljava/util/Date;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->restoreExpirationTime:Ljava/util/Date;

    .line 651
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 141
    return-void
.end method
