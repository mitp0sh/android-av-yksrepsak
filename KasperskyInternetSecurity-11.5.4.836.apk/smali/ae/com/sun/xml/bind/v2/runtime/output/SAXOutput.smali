.class public Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;
.source "SAXOutput.java"


# instance fields
.field private final atts:Lae/com/sun/xml/bind/util/AttributesImpl;

.field private buf:[C

.field private elementLocalName:Ljava/lang/String;

.field private elementNsUri:Ljava/lang/String;

.field private elementQName:Ljava/lang/String;

.field protected final out:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "out"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 62
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;-><init>()V

    .line 69
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    .line 71
    new-instance v0, Lae/com/sun/xml/bind/util/AttributesImpl;

    invoke-direct {v0}, Lae/com/sun/xml/bind/util/AttributesImpl;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->atts:Lae/com/sun/xml/bind/util/AttributesImpl;

    .line 63
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    .line 64
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 65
    return-void
.end method

.method private getQName(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 155
    move-object v1, p2

    .line 158
    .local v1, "qname":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 157
    .end local v1    # "qname":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "qname":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public attribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 99
    const-string v1, ""

    .line 100
    .local v1, "nsUri":Ljava/lang/String;
    move-object v3, p2

    .line 113
    .local v3, "qname":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->atts:Lae/com/sun/xml/bind/util/AttributesImpl;

    const-string v4, "CDATA"

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/util/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 102
    .end local v1    # "nsUri":Ljava/lang/String;
    .end local v3    # "qname":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "nsUri":Ljava/lang/String;
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "p":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    move-object v3, p2

    .restart local v3    # "qname":Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v3    # "qname":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "qname":Ljava/lang/String;
    goto :goto_0
.end method

.method public beginStartTag(ILjava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->elementNsUri:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->elementLocalName:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->getQName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->elementQName:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->atts:Lae/com/sun/xml/bind/util/AttributesImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/util/AttributesImpl;->clear()V

    .line 93
    return-void
.end method

.method public endDocument(Z)V
    .locals 1
    .param p1, "fragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->endDocument(Z)V

    .line 86
    return-void
.end method

.method public endStartTag()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    .line 118
    .local v1, "ns":Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->count()I

    move-result v3

    .line 120
    .local v3, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 121
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getNsUri(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "uri":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getBase()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v5, v2, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v0    # "i":I
    .end local v2    # "p":Ljava/lang/String;
    .end local v3    # "sz":I
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->elementNsUri:Ljava/lang/String;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->elementLocalName:Ljava/lang/String;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->elementQName:Ljava/lang/String;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->atts:Lae/com/sun/xml/bind/util/AttributesImpl;

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 129
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v6, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->getQName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    .line 139
    .local v1, "ns":Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->count()I

    move-result v3

    .line 141
    .local v3, "sz":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 142
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getNsUri(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "uri":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getBase()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 141
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v5, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v0    # "i":I
    .end local v2    # "p":Ljava/lang/String;
    .end local v3    # "sz":I
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V
    .locals 1
    .param p1, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "fragment"    # Z
    .param p3, "nsUriIndex2prefixIndex"    # [I
    .param p4, "nsContext"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 78
    if-nez p2, :cond_0

    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 80
    :cond_0
    return-void
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V
    .locals 5
    .param p1, "value"    # Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .param p2, "needsSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->length()I

    move-result v0

    .line 177
    .local v0, "vlen":I
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    array-length v3, v3

    if-gt v3, v0, :cond_0

    .line 178
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [C

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    .line 180
    :cond_0
    if-eqz p2, :cond_1

    .line 181
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    invoke-virtual {p1, v3, v1}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->writeTo([CI)V

    .line 182
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 186
    :goto_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    if-eqz p2, :cond_2

    :goto_1
    add-int/2addr v1, v0

    invoke-interface {v3, v4, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 187
    return-void

    .line 184
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    invoke-virtual {p1, v3, v2}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->writeTo([CI)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 186
    goto :goto_1
.end method

.method public text(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "needsSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 163
    .local v0, "vlen":I
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    array-length v3, v3

    if-gt v3, v0, :cond_0

    .line 164
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [C

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    .line 166
    :cond_0
    if-eqz p2, :cond_1

    .line 167
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 168
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 172
    :goto_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->out:Lorg/xml/sax/ContentHandler;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    if-eqz p2, :cond_2

    :goto_1
    add-int/2addr v1, v0

    invoke-interface {v3, v4, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 173
    return-void

    .line 170
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->buf:[C

    invoke-virtual {p1, v2, v0, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 172
    goto :goto_1
.end method
