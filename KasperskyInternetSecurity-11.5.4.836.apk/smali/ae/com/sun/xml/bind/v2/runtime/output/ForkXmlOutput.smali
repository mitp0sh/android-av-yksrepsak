.class public final Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;
.source "ForkXmlOutput.java"


# instance fields
.field private final lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

.field private final rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V
    .locals 0
    .param p1, "lhs"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .param p2, "rhs"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    .prologue
    .line 60
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;-><init>()V

    .line 61
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    .line 62
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    .line 63
    return-void
.end method


# virtual methods
.method public attribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 101
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public beginStartTag(ILjava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method public beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 1
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 80
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 81
    return-void
.end method

.method public endDocument(Z)V
    .locals 1
    .param p1, "fragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endDocument(Z)V

    .line 74
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endDocument(Z)V

    .line 75
    return-void
.end method

.method public endStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endStartTag()V

    .line 107
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endStartTag()V

    .line 108
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 1
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
    .line 111
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(ILjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 1
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 92
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 93
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
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 68
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 69
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
    .line 121
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V

    .line 122
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V

    .line 123
    return-void
.end method

.method public text(Ljava/lang/String;Z)V
    .locals 1
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
    .line 116
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->lhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Ljava/lang/String;Z)V

    .line 117
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;->rhs:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method
