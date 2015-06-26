.class public Lcom/amazonaws/regions/RegionMetadataParser;
.super Ljava/lang/Object;
.source "RegionMetadataParser.java"


# static fields
.field private static final ENDPOINT_TAG:Ljava/lang/String; = "Endpoint"

.field private static final HOSTNAME_TAG:Ljava/lang/String; = "Hostname"

.field private static final HTTPS_TAG:Ljava/lang/String; = "Https"

.field private static final HTTP_TAG:Ljava/lang/String; = "Http"

.field private static final REGION_ID_TAG:Ljava/lang/String; = "Name"

.field private static final REGION_TAG:Ljava/lang/String; = "Region"

.field private static final SERVICE_TAG:Ljava/lang/String; = "ServiceName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addRegionEndpoint(Lcom/amazonaws/regions/Region;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "region"    # Lcom/amazonaws/regions/Region;
    .param p2, "endpointElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 92
    const-string v4, "ServiceName"

    invoke-static {v4, p2}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "serviceName":Ljava/lang/String;
    const-string v4, "Hostname"

    invoke-static {v4, p2}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "hostname":Ljava/lang/String;
    const-string v4, "Http"

    invoke-static {v4, p2}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "http":Ljava/lang/String;
    const-string v4, "Https"

    invoke-static {v4, p2}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "https":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getHttpSupport()Ljava/util/Map;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getHttpsSupport()Ljava/util/Map;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private static getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 103
    .local v2, "tagNode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 108
    :goto_0
    return-object v3

    .line 105
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 106
    .local v1, "nodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 108
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private parseRegionElement(Lorg/w3c/dom/Element;)Lcom/amazonaws/regions/Region;
    .locals 5
    .param p1, "regionElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 80
    const-string v4, "Name"

    invoke-static {v4, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Lcom/amazonaws/regions/Region;

    invoke-direct {v3, v2}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, "region":Lcom/amazonaws/regions/Region;
    const-string v4, "Endpoint"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 84
    .local v0, "endpointNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 85
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/regions/RegionMetadataParser;->addRegionEndpoint(Lcom/amazonaws/regions/Region;Lorg/w3c/dom/Element;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v3
.end method


# virtual methods
.method public parseRegionMetadata(Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 58
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 59
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 63
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 66
    const-string v9, "Region"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 67
    .local v7, "regionNodes":Lorg/w3c/dom/NodeList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v8, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 69
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 70
    .local v6, "node":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v3, v6

    .line 71
    check-cast v3, Lorg/w3c/dom/Element;

    .line 72
    .local v3, "element":Lorg/w3c/dom/Element;
    invoke-direct {p0, v3}, Lcom/amazonaws/regions/RegionMetadataParser;->parseRegionElement(Lorg/w3c/dom/Element;)Lcom/amazonaws/regions/Region;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "i":I
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "regionNodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to parse region metadata file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v9

    .line 76
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    .restart local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "i":I
    .restart local v7    # "regionNodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :cond_1
    return-object v8
.end method
