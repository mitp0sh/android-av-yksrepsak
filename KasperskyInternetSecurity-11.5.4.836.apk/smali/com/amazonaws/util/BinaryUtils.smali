.class public Lcom/amazonaws/util/BinaryUtils;
.super Ljava/lang/Object;
.source "BinaryUtils.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/amazonaws/util/BinaryUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/BinaryUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBase64(Ljava/lang/String;)[B
    .locals 4
    .param p0, "b64Data"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    .local v0, "decoded":[B
    :goto_0
    return-object v0

    .line 108
    .end local v0    # "decoded":[B
    :catch_0
    move-exception v1

    .line 110
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/amazonaws/util/BinaryUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Tried to Base64-decode a String with the wrong encoding: "

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    .restart local v0    # "decoded":[B
    goto :goto_0
.end method

.method public static fromHex(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexData"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [B

    .line 73
    .local v3, "result":[B
    const/4 v2, 0x0

    .line 74
    .local v2, "hexNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 75
    .local v4, "stringOffset":I
    const/4 v0, 0x0

    .line 76
    .local v0, "byteOffset":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 77
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 78
    add-int/lit8 v4, v4, 0x2

    .line 79
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteOffset":I
    .local v1, "byteOffset":I
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    move v0, v1

    .end local v1    # "byteOffset":I
    .restart local v0    # "byteOffset":I
    goto :goto_0

    .line 81
    :cond_0
    return-object v3
.end method

.method public static toBase64([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 92
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 93
    .local v0, "b64":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 51
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 54
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 57
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 61
    .end local v0    # "hex":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 125
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 126
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method
