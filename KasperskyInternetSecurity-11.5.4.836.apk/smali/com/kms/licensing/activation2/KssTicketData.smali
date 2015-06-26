.class public Lcom/kms/licensing/activation2/KssTicketData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LtB;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:[B

.field private c:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;J)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/kms/licensing/activation2/KssTicketData;->a:Lorg/json/JSONObject;

    .line 185
    iput-wide p2, p0, Lcom/kms/licensing/activation2/KssTicketData;->c:J

    .line 186
    return-void
.end method

.method private d()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kms/licensing/activation2/KssTicketData;->a:Lorg/json/JSONObject;

    const-string v1, "CompressionType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    return v0
.end method

.method private e()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kms/licensing/activation2/KssTicketData;->a:Lorg/json/JSONObject;

    const-string v1, "SigningMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    return v0
.end method

.method private native extractCms([B)[B
.end method

.method private f()[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 118
    iget-object v0, p0, Lcom/kms/licensing/activation2/KssTicketData;->b:[B

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/kms/licensing/activation2/KssTicketData;->a:Lorg/json/JSONObject;

    const-string v1, "Data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 123
    invoke-direct {p0}, Lcom/kms/licensing/activation2/KssTicketData;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 125
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 126
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 128
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 129
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    .line 134
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 139
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/kms/licensing/activation2/KssTicketData;->b:[B

    return-object v0

    .line 136
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 138
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 139
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/kms/licensing/activation2/KssTicketData;->e()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 146
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "KasperskyLabPublicServicesRootCertificationAuthority.crt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 152
    new-array v2, v2, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 154
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 158
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 159
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v1, v3

    .line 162
    iget-wide v2, p0, Lcom/kms/licensing/activation2/KssTicketData;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kms/licensing/activation2/KssTicketData;->verifyCms([B[Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 163
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CMS verification error!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/kms/licensing/activation2/KssTicketData;->d()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 142
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Deflate compression is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 167
    :cond_4
    invoke-direct {p0, v0}, Lcom/kms/licensing/activation2/KssTicketData;->extractCms([B)[B

    move-result-object v0

    .line 168
    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_6

    .line 169
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CMS extract error!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_6
    iput-object v0, p0, Lcom/kms/licensing/activation2/KssTicketData;->b:[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method private native verifyCms([B[Ljava/lang/String;J)Z
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kms/licensing/activation2/KssTicketData;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/kms/licensing/activation2/KssTicketData;->f()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/kms/licensing/activation2/KssTicketData;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method
