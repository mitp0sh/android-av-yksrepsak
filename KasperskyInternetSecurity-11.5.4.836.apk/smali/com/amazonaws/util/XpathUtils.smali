.class public Lcom/amazonaws/util/XpathUtils;
.super Ljava/lang/Object;
.source "XpathUtils.java"


# static fields
.field private static dateUtils:Lcom/amazonaws/util/DateUtils;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    .line 55
    const-class v0, Lcom/amazonaws/util/XpathUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->log:Lorg/apache/commons/logging/Log;

    .line 57
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBoolean(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "booleanString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static asByte(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Byte;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "byteString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0
.end method

.method public static asByteBuffer(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "base64EncodedString":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v4

    .line 274
    :cond_1
    invoke-static {p1}, Lcom/amazonaws/util/XpathUtils;->isEmpty(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 277
    .local v0, "base64EncodedBytes":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    .line 278
    .local v2, "decodedBytes":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 279
    .end local v0    # "base64EncodedBytes":[B
    .end local v2    # "decodedBytes":[B
    :catch_0
    move-exception v3

    .line 280
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Unable to unmarshall XML data into a ByteBuffer"

    invoke-direct {v4, v5, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static asDate(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/util/Date;
    .locals 6
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    :goto_0
    return-object v2

    .line 247
    :cond_0
    :try_start_0
    sget-object v3, Lcom/amazonaws/util/XpathUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v3, v0}, Lcom/amazonaws/util/DateUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/text/ParseException;
    sget-object v3, Lcom/amazonaws/util/XpathUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse date \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\':  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static asDouble(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Double;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "doubleString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public static asFloat(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Float;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "floatString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0
.end method

.method public static asInteger(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Integer;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "intString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static asLong(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Long;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "longString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static asNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "nodeName"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p0}, Lcom/amazonaws/util/XpathUtils;->findXPathNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static asNodeList(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p0, "nodeName"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 345
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p0}, Lcom/amazonaws/util/XpathUtils;->findXPathNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    goto :goto_0
.end method

.method public static asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Lcom/amazonaws/util/NamespaceRemovingInputStream;

    invoke-direct {v1, p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .end local p0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    sget-object v2, Lcom/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 64
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 66
    return-object v0
.end method

.method public static documentFrom(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 2
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static documentFrom(Ljava/net/URL;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-static {p1}, Lcom/amazonaws/util/XpathUtils;->isEmpty(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object v1

    .line 328
    :cond_1
    invoke-static {p1, p0}, Lcom/amazonaws/util/XpathUtils;->evaluateXPath(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static evaluateXPath(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "xPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "currentSearchIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 367
    const-string v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 369
    .local v1, "endingIndex":I
    const/4 v2, 0x0

    .line 370
    .local v2, "noderNameFromXPath":Ljava/lang/String;
    if-ne v1, v4, :cond_1

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    :goto_1
    invoke-static {p0, v2}, Lcom/amazonaws/util/XpathUtils;->findChildNodeWithName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 379
    if-ne v1, v4, :cond_2

    .line 386
    .end local v1    # "endingIndex":I
    .end local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 387
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 393
    :goto_2
    return-object v3

    .line 374
    .restart local v1    # "endingIndex":I
    .restart local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 383
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 384
    goto :goto_0

    .line 389
    .end local v1    # "endingIndex":I
    .end local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_3
    if-eqz p0, :cond_4

    .line 390
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 393
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static findChildNodeWithName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "childName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 450
    if-nez p0, :cond_1

    move-object p0, v2

    .line 465
    .end local p0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    return-object p0

    .line 454
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 459
    .local v1, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 460
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    .line 459
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p0, v2

    .line 465
    goto :goto_0
.end method

.method private static findXPathNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "xPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "currentSearchIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 401
    const-string v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 403
    .local v1, "endingIndex":I
    const/4 v2, 0x0

    .line 404
    .local v2, "noderNameFromXPath":Ljava/lang/String;
    if-ne v1, v4, :cond_1

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    :goto_1
    invoke-static {p0, v2}, Lcom/amazonaws/util/XpathUtils;->findChildNodeWithName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 413
    if-ne v1, v4, :cond_2

    .line 420
    .end local v1    # "endingIndex":I
    .end local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 408
    .restart local v1    # "endingIndex":I
    .restart local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 417
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 418
    goto :goto_0
.end method

.method private static findXPathNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "xPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "currentSearchIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 427
    const-string v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 429
    .local v1, "endingIndex":I
    const/4 v2, 0x0

    .line 430
    .local v2, "noderNameFromXPath":Ljava/lang/String;
    if-ne v1, v4, :cond_1

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    :goto_1
    invoke-static {p0, v2}, Lcom/amazonaws/util/XpathUtils;->findChildNodeWithName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 439
    if-ne v1, v4, :cond_2

    .line 446
    .end local v1    # "endingIndex":I
    .end local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    return-object v3

    .line 434
    .restart local v1    # "endingIndex":I
    .restart local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 443
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 444
    goto :goto_0
.end method

.method public static isEmpty(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 295
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 357
    if-nez p0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nodeLength(Lorg/w3c/dom/NodeList;)I
    .locals 1
    .param p0, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 307
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    goto :goto_0
.end method
