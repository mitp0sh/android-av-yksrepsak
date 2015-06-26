.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.super Ljava/lang/Object;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;,
        Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private sanitizeXmlDocument:Z

.field private xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument:Z

    .line 110
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/xml/sax/SAXException;
    const-string v2, "org.xml.sax.driver"

    const-string v3, "org.apache.crimson.parser.XMLReaderImpl"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    :try_start_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 117
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e2":Lorg/xml/sax/SAXException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Couldn\'t initialize a sax driver for the XMLReader"

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->findAttributeValue(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 224
    if-nez p1, :cond_1

    move-object p1, v0

    .line 227
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 225
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method private static findAttributeValue(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 4
    .param p0, "qnameToFind"    # Ljava/lang/String;
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 2485
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2486
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 2487
    .local v1, "qname":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2488
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 2492
    .end local v1    # "qname":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 2485
    .restart local v1    # "qname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2492
    .end local v1    # "qname":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 243
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_0
    return v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse integer value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 248
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private parseLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 269
    :goto_0
    return-wide v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse long value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 269
    const-wide/16 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public parseAccessControlListResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 335
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 336
    return-object v0
.end method

.method public parseBucketCrossOriginConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 367
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 368
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 369
    return-object v0
.end method

.method public parseBucketLifecycleConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 360
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 361
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 362
    return-object v0
.end method

.method public parseBucketLocationResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 376
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 377
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->getLocation()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parseCompleteMultipartUploadResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 430
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 431
    return-object v0
.end method

.method public parseCopyObjectResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 422
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 423
    return-object v0
.end method

.method public parseDeletedObjectsResult(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 413
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 414
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 415
    return-object v0
.end method

.method public parseInitiateMultipartUploadResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 438
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 439
    return-object v0
.end method

.method public parseListBucketObjectsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 284
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 285
    return-object v0
.end method

.method public parseListMultipartUploadsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 446
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 447
    return-object v0
.end method

.method public parseListMyBucketsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 316
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 317
    return-object v0
.end method

.method public parseListPartsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 454
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 455
    return-object v0
.end method

.method public parseListVersionsResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 300
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 301
    return-object v0
.end method

.method public parseLoggingStatusResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 354
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 355
    return-object v0
.end method

.method public parseNotificationConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 400
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 401
    return-object v0
.end method

.method public parseRequestPaymentConfigurationResponse(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 471
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 472
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->isRequesterPays()Z

    move-result v1

    return v1
.end method

.method public parseTaggingConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 408
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 409
    return-object v0
.end method

.method public parseVersioningConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 384
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 385
    return-object v0
.end method

.method public parseWebsiteConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;-><init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V

    .line 392
    .local v0, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 393
    return-object v0
.end method

.method protected parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    sget-object v3, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    sget-object v3, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing XML response document with handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 142
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 144
    .local v0, "breader":Ljava/io/BufferedReader;
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 145
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 146
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 147
    .end local v0    # "breader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :cond_1
    :goto_0
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse XML document with handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 150
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    sget-object v3, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to close response InputStream up after XML parse failure"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 11
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 162
    iget-boolean v8, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument:Z

    if-nez v8, :cond_0

    .line 210
    .end local p2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object p2

    .line 166
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    sget-object v8, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    sget-object v8, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sanitizing XML document destined for handler "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 170
    :cond_1
    const/4 v6, 0x0

    .line 178
    .local v6, "sanitizedInputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v4, "listingDocBuffer":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v9, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v8, p2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 182
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v8, 0x2000

    new-array v1, v8, [C

    .line 183
    .local v1, "buf":[C
    const/4 v5, -0x1

    .line 184
    .local v5, "read":I
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buf":[C
    .end local v4    # "listingDocBuffer":Ljava/lang/StringBuilder;
    .end local v5    # "read":I
    .end local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 201
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :cond_2
    :goto_2
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to sanitize XML document destined for handler "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 187
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buf":[C
    .restart local v4    # "listingDocBuffer":Ljava/lang/StringBuilder;
    .restart local v5    # "read":I
    .restart local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\r"

    const-string v10, "&#013;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "listingDoc":Ljava/lang/String;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    sget-object v8, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    move-object p2, v6

    .line 210
    goto/16 :goto_0

    .line 202
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buf":[C
    .end local v3    # "listingDoc":Ljava/lang/String;
    .end local v4    # "listingDocBuffer":Ljava/lang/StringBuilder;
    .end local v5    # "read":I
    .end local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    .restart local v7    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 204
    sget-object v8, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Unable to close response InputStream after failure sanitizing XML document"

    invoke-interface {v8, v9, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
