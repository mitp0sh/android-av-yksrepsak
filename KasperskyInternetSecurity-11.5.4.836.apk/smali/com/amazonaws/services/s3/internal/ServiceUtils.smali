.class public Lcom/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field protected static final dateUtils:Lcom/amazonaws/util/DateUtils;

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    .line 52
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRequestToUrl(Lcom/amazonaws/Request;)Ljava/net/URL;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "urlString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 165
    .local v1, "firstParam":Z
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    .local v3, "param":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    const/4 v1, 0x0

    .line 173
    :goto_1
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 174
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    goto :goto_0

    .line 170
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 178
    .end local v3    # "param":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to convert request to well formed URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static downloadObjectToFile(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;Z)V
    .locals 12
    .param p0, "s3Object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "destinationFile"    # Ljava/io/File;
    .param p2, "performIntegrityCheck"    # Z

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 227
    .local v7, "parentDirectory":Ljava/io/File;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 228
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 231
    :cond_0
    const/4 v5, 0x0

    .line 233
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v9, 0x2800

    :try_start_1
    new-array v1, v9, [B

    .line 236
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v9, -0x1

    if-le v2, v9, :cond_1

    .line 237
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 239
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 241
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :goto_2
    :try_start_3
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to store object contents to disk: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 249
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    throw v9

    .line 248
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 249
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 252
    :goto_7
    const/4 v3, 0x0

    .line 253
    .local v3, "clientSideHash":[B
    const/4 v8, 0x0

    .line 256
    .local v8, "serverSideHash":[B
    :try_start_8
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->isMultipartUploadETag(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 257
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v9}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 258
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v8

    .line 264
    :cond_2
    :goto_8
    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v8, :cond_3

    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_3

    .line 265
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to verify integrity of data download.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  The data stored in \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' may be corrupt."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 242
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "clientSideHash":[B
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "serverSideHash":[B
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 243
    .local v0, "abortException":Ljava/io/IOException;
    :try_start_9
    sget-object v9, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v10, "Couldn\'t abort stream"

    invoke-interface {v9, v10, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 260
    .end local v0    # "abortException":Ljava/io/IOException;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "clientSideHash":[B
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "serverSideHash":[B
    :catch_2
    move-exception v4

    .line 261
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to calculate MD5 hash to validate download: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 248
    .end local v3    # "clientSideHash":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "serverSideHash":[B
    :catch_3
    move-exception v9

    goto/16 :goto_6

    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v10

    goto/16 :goto_4

    .line 269
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "clientSideHash":[B
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "serverSideHash":[B
    :cond_3
    return-void

    .line 249
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "clientSideHash":[B
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "serverSideHash":[B
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v10

    goto/16 :goto_5

    .line 248
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 239
    :catch_6
    move-exception v4

    goto/16 :goto_1

    .line 249
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v9

    goto/16 :goto_7
.end method

.method public static formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 59
    sget-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/DateUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 67
    sget-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/DateUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMultipartUploadETag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "eTag"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 198
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x1

    .line 199
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/DateUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/DateUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 123
    :cond_0
    :goto_0
    return-object p0

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 120
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    :cond_2
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 143
    :goto_0
    return-object v2

    .line 140
    :cond_0
    :try_start_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "encodedString":Ljava/lang/String;
    const-string v2, "\\+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 144
    .end local v1    # "encodedString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to encode path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
