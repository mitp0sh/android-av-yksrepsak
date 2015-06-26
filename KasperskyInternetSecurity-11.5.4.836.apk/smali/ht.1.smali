.class public Lht;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lht;


# instance fields
.field private final c:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lht;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lht;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lht;->c:Ljava/util/Properties;

    .line 64
    invoke-direct {p0, p1}, Lht;->b(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static a()Lht;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lht;->b:Lht;

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lht;->c:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lht;->b:Lht;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lht;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lht;->b:Lht;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lht;

    invoke-direct {v0, p0}, Lht;-><init>(Ljava/lang/String;)V

    sput-object v0, Lht;->b:Lht;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/InputStream;[B)Z
    .locals 4

    .prologue
    .line 211
    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDFSC+6px2V4zIs00aUVnxKd29yiTRZcOIRshXxQQFh33qU9X5dWIS9yr6nFXTGGmYIqfEW2RpEItd7CpWAynx+YhLd1WsNcfNUywnNvXLDF0+S1WkRNfQDrno8Hk0fzUldDZ7/gOprxeIxAMNJ8tIBXOFNbZnVT9I/91grZwB2vwIDAQAB"

    invoke-static {v0}, Lht;->f(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 213
    invoke-static {p1}, Lht;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 215
    const-string v2, "RSA"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 216
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 217
    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 219
    invoke-static {v0, v1}, Lht;->a([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while verifying signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lht;->c:Ljava/util/Properties;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lht;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a([B[B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 254
    array-length v0, p0

    array-length v2, p1

    sub-int v2, v0, v2

    .line 255
    if-gez v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 259
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 260
    add-int v3, v2, v0

    aget-byte v3, p0, v3

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 240
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 241
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 243
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 244
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 245
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SHA-256 algorithm is not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lht;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Signature is not valid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lht;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    const-string v2, "customization_config.xml"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 170
    :try_start_0
    iget-object v0, p0, Lht;->c:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 183
    const/4 v2, 0x0

    .line 185
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    const-string v3, "customization_config.xml"

    invoke-direct {v0, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-static {p1}, Lht;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    invoke-direct {p0, v1, v0}, Lht;->a(Ljava/io/InputStream;[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 191
    invoke-static {v1}, Lx;->a(Ljava/io/Closeable;)V

    return v0

    .line 188
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 189
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lx;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 188
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 197
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "customization_config_signature"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :try_start_1
    invoke-static {v1, v0}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 201
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 205
    invoke-static {v1}, Lx;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 203
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lx;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 202
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 229
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key is broken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RSA algorithm is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 276
    const-string v0, "on"

    invoke-static {v0, p0}, Lht;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yes"

    invoke-static {v0, p0}, Lht;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .prologue
    .line 68
    const-string v0, "wifi_statistic_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 72
    const-string v0, "oas_statistic_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 76
    const-string v0, "apcloud_statistic_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 80
    const-string v0, "wav_statistic_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 84
    const-string v0, "firmware_statistic_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 88
    const-string v0, "file_popularity_statistic_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 92
    const-string v0, "file_popularity_statistic_send_time"

    const-string v1, "24"

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    const-string v0, "ksn_product_type"

    const-string v1, "safemoney-sdk-android"

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 100
    const-string v0, "partner_number"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 112
    const-string v0, "wlip_start_period"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 116
    const-string v0, "wlips_start_period"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 2

    .prologue
    .line 120
    const-string v0, "firmware_statistic_start_period"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lht;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
