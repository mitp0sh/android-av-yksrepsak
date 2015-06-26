.class public abstract Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;
.super Ljava/lang/Object;
.source "XmlOutputAbstractImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;


# instance fields
.field protected nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

.field protected nsUriIndex2prefixIndex:[I

.field protected serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attribute(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 108
    iget-short v0, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUriIndex:S

    .line 109
    .local v0, "idx":S
    if-ne v0, v2, :cond_0

    .line 110
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->nsUriIndex2prefixIndex:[I

    aget v1, v1, v0

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract beginStartTag(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->nsUriIndex2prefixIndex:[I

    iget-short v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUriIndex:S

    aget v0, v0, v1

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->beginStartTag(ILjava/lang/String;)V

    .line 103
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
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 89
    return-void
.end method

.method public abstract endStartTag()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract endTag(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->nsUriIndex2prefixIndex:[I

    iget-short v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUriIndex:S

    aget v0, v0, v1

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->endTag(ILjava/lang/String;)V

    .line 125
    return-void
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V
    .locals 0
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
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->nsUriIndex2prefixIndex:[I

    .line 77
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    .line 78
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 79
    return-void
.end method
