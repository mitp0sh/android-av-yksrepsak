.class public Lcom/amazonaws/util/Md5Utils;
.super Ljava/lang/Object;
.source "Md5Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeMD5Hash(Ljava/io/InputStream;)[B
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 40
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    const/16 v5, 0x4000

    new-array v1, v5, [B

    .line 41
    .local v1, "buffer":[B
    const/4 v2, -0x1

    .line 42
    .local v2, "bytesRead":I
    :goto_0
    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 43
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v5

    .line 48
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_1
    throw v5

    .line 45
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 48
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 51
    :goto_2
    return-object v5

    .line 49
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close input stream of hash candidate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 49
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v3

    .line 50
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close input stream of hash candidate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static computeMD5Hash([B)[B
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method
