.class public Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;
.source "XMLEventWriterOutput.java"


# instance fields
.field private final ef:Lae/javax/xml/stream/XMLEventFactory;

.field private final out:Lae/javax/xml/stream/XMLEventWriter;

.field private final sp:Lae/javax/xml/stream/events/Characters;


# direct methods
.method public constructor <init>(Lae/javax/xml/stream/XMLEventWriter;)V
    .locals 2
    .param p1, "out"    # Lae/javax/xml/stream/XMLEventWriter;

    .prologue
    .line 67
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;-><init>()V

    .line 68
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    .line 69
    invoke-static {}, Lae/javax/xml/stream/XMLEventFactory;->newInstance()Lae/javax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lae/javax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Lae/javax/xml/stream/events/Characters;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->sp:Lae/javax/xml/stream/events/Characters;

    .line 71
    return-void
.end method


# virtual methods
.method public attribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 110
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    invoke-virtual {v1, p2, p3}, Lae/javax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/Attribute;

    move-result-object v0

    .line 117
    .local v0, "att":Lae/javax/xml/stream/events/Attribute;
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    invoke-interface {v1, v0}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    .line 118
    return-void

    .line 112
    .end local v0    # "att":Lae/javax/xml/stream/events/Attribute;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lae/javax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/Attribute;

    move-result-object v0

    .restart local v0    # "att":Lae/javax/xml/stream/events/Attribute;
    goto :goto_0
.end method

.method public beginStartTag(ILjava/lang/String;)V
    .locals 7
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v5, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v6, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p2}, Lae/javax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/StartElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    .line 96
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    .line 97
    .local v1, "nse":Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->count()I

    move-result v3

    if-lez v3, :cond_1

    .line 98
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->count()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 99
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getNsUri(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getBase()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 98
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getPrefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lae/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/Namespace;

    move-result-object v4

    invoke-interface {v3, v4}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    .end local v2    # "uri":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public endDocument(Z)V
    .locals 2
    .param p1, "fragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    invoke-virtual {v1}, Lae/javax/xml/stream/XMLEventFactory;->createEndDocument()Lae/javax/xml/stream/events/EndDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    .line 84
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventWriter;->flush()V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->endDocument(Z)V

    .line 87
    return-void
.end method

.method public endStartTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 122
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lae/javax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/EndElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    .line 130
    return-void
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V
    .locals 2
    .param p1, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "fragment"    # Z
    .param p3, "nsUriIndex2prefixIndex"    # [I
    .param p4, "nsContext"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 77
    if-nez p2, :cond_0

    .line 78
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    invoke-virtual {v1}, Lae/javax/xml/stream/XMLEventFactory;->createStartDocument()Lae/javax/xml/stream/events/StartDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    .line 79
    :cond_0
    return-void
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V
    .locals 1
    .param p1, "value"    # Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .param p2, "needsSeparatingWhitespace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->text(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public text(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "needsSeparatingWhitespace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->sp:Lae/javax/xml/stream/events/Characters;

    invoke-interface {v0, v1}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->out:Lae/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;->ef:Lae/javax/xml/stream/XMLEventFactory;

    invoke-virtual {v1, p1}, Lae/javax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Lae/javax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {v0, v1}, Lae/javax/xml/stream/XMLEventWriter;->add(Lae/javax/xml/stream/events/XMLEvent;)V

    .line 136
    return-void
.end method
