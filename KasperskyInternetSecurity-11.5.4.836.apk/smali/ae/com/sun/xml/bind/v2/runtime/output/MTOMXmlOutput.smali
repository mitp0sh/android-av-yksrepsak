.class public final Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;
.source "MTOMXmlOutput.java"


# instance fields
.field private localName:Ljava/lang/String;

.field private final next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

.field private nsUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V
    .locals 0
    .param p1, "next"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    .prologue
    .line 70
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;-><init>()V

    .line 71
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    .line 72
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
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
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
    .line 97
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V

    .line 98
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
    .line 91
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(ILjava/lang/String;)V

    .line 92
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsUri:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->localName:Ljava/lang/String;

    .line 94
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
    .line 85
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 86
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsUri:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->localName:Ljava/lang/String;

    .line 88
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
    .line 80
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endDocument(Z)V

    .line 81
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->endDocument(Z)V

    .line 82
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
    .line 105
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endStartTag()V

    .line 106
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
    .line 113
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(ILjava/lang/String;)V

    .line 114
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
    .line 109
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 110
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
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 76
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 77
    return-void
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V
    .locals 10
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
    const/4 v2, 0x0

    .line 121
    instance-of v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInlineBinaryFlag()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v7, p1

    .line 122
    check-cast v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    .line 124
    .local v7, "b64d":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    move-result-object v1

    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getDataLen()I

    move-result v3

    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsUri:Ljava/lang/String;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->localName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lae/javax/xml/bind/attachment/AttachmentMarshaller;->addMtomAttachment([BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "cid":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_1

    .line 132
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->push()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 133
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const-string v1, "http://www.w3.org/2004/08/xop/include"

    const-string v3, "xop"

    invoke-virtual {v0, v1, v3, v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v9

    .line 134
    .local v9, "prefix":I
    const-string v0, "Include"

    invoke-virtual {p0, v9, v0}, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->beginStartTag(ILjava/lang/String;)V

    .line 135
    const/4 v0, -0x1

    const-string v1, "href"

    invoke-virtual {p0, v0, v1, v8}, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->endStartTag()V

    .line 137
    const-string v0, "Include"

    invoke-virtual {p0, v9, v0}, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->endTag(ILjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->pop()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 143
    .end local v7    # "b64d":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    .end local v8    # "cid":Ljava/lang/String;
    .end local v9    # "prefix":I
    :goto_1
    return-void

    .line 128
    .restart local v7    # "b64d":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->nsUri:Ljava/lang/String;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lae/javax/xml/bind/attachment/AttachmentMarshaller;->addMtomAttachment(Ljavax/activation/DataHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "cid":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v7    # "b64d":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    .end local v8    # "cid":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V

    goto :goto_1
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
    .line 117
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;->next:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method
