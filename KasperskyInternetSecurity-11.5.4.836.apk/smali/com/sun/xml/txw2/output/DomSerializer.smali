.class public Lcom/sun/xml/txw2/output/DomSerializer;
.super Ljava/lang/Object;
.source "DomSerializer.java"

# interfaces
.implements Lcom/sun/xml/txw2/output/XmlSerializer;


# instance fields
.field private final serializer:Lcom/sun/xml/txw2/output/SaxSerializer;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 9
    .param p1, "domResult"    # Ljavax/xml/transform/dom/DOMResult;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 80
    .local v3, "node":Lorg/w3c/dom/Node;
    if-nez v3, :cond_0

    .line 82
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 83
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 84
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 85
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 86
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p1, v2}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 87
    new-instance v5, Lcom/sun/xml/txw2/output/SaxSerializer;

    new-instance v6, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;

    invoke-direct {v6, v2}, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V

    iput-object v5, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v4

    .line 89
    .local v4, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v5, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v5, v4}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 92
    .end local v4    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    new-instance v5, Lcom/sun/xml/txw2/output/SaxSerializer;

    new-instance v6, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;

    invoke-direct {v6, v3}, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {v5, v6, v8, v7}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V

    iput-object v5, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;

    invoke-direct {v0, p1}, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;-><init>(Lorg/w3c/dom/Node;)V

    .line 74
    .local v0, "adapter":Lcom/sun/xml/txw2/output/Dom2SaxAdapter;
    new-instance v1, Lcom/sun/xml/txw2/output/SaxSerializer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v2}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V

    iput-object v1, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    .line 75
    return-void
.end method


# virtual methods
.method public beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/xml/txw2/output/SaxSerializer;->beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public cdata(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/output/SaxSerializer;->cdata(Ljava/lang/StringBuilder;)V

    .line 127
    return-void
.end method

.method public comment(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/StringBuilder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/output/SaxSerializer;->comment(Ljava/lang/StringBuilder;)V

    .line 131
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/output/SaxSerializer;->endDocument()V

    .line 135
    return-void
.end method

.method public endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/xml/txw2/output/SaxSerializer;->endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public endTag()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/output/SaxSerializer;->endTag()V

    .line 119
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/output/SaxSerializer;->startDocument()V

    .line 99
    return-void
.end method

.method public text(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/output/SaxSerializer;->text(Ljava/lang/StringBuilder;)V

    .line 123
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/xml/txw2/output/SaxSerializer;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 107
    return-void
.end method

.method public writeXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DomSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/sun/xml/txw2/output/SaxSerializer;->writeXmlns(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
