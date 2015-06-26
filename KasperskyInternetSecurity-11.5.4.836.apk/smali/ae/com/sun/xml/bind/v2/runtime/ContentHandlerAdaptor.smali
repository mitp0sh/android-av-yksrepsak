.class final Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ContentHandlerAdaptor.java"


# instance fields
.field private final prefixMap:Lcom/sun/istack/FinalArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/istack/FinalArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

.field private final text:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 1
    .param p1, "_serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 65
    new-instance v0, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v0}, Lcom/sun/istack/FinalArrayList;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->text:Ljava/lang/StringBuffer;

    .line 74
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 75
    return-void
.end method

.method private containsPrefixMapping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v1}, Lcom/sun/istack/FinalArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v1, v0}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 92
    :goto_1
    return v1

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private flushText()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->text(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 169
    :cond_0
    return-void
.end method

.method private getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    .line 148
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 149
    .local v0, "idx":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v1, p1

    .line 150
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 149
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 173
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->flushText()V

    .line 156
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sun/istack/SAXException2;

    invoke-direct {v1, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Lae/javax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/istack/SAXException2;

    invoke-direct {v1, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v0}, Lcom/sun/istack/FinalArrayList;->clear()V

    .line 79
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->flushText()V

    .line 100
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 102
    .local v2, "len":I
    invoke-direct {p0, p3}, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "p":Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->containsPrefixMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, p2, v3, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElementForce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v6}, Lcom/sun/istack/FinalArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 116
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v8

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v7, v1}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->force(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 108
    .end local v1    # "i":I
    :cond_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, p2, v3, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 140
    .end local v2    # "len":I
    .end local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/sun/istack/SAXException2;

    invoke-direct {v6, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 121
    :try_start_1
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "qname":Ljava/lang/String;
    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 120
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_3
    invoke-direct {p0, v5}, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v6

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v4, v8}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 142
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "qname":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Lae/javax/xml/stream/XMLStreamException;
    new-instance v6, Lcom/sun/istack/SAXException2;

    invoke-direct {v6, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 130
    .end local v0    # "e":Lae/javax/xml/stream/XMLStreamException;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "p":Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 132
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_6

    .line 134
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 136
    :cond_5
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 138
    :cond_6
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v6}, Lcom/sun/istack/FinalArrayList;->clear()V

    .line 139
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v0, p1}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;->prefixMap:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v0, p2}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
