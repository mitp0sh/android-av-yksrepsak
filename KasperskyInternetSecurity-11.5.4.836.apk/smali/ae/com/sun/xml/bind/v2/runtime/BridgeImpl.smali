.class final Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;
.super Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
.source "BridgeImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/InternalBridge",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private final typeRef:Lae/com/sun/xml/bind/api/TypeReference;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Lae/com/sun/xml/bind/api/TypeReference;)V
    .locals 0
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p4, "typeRef"    # Lae/com/sun/xml/bind/api/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/runtime/Name;",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
            "<TT;>;",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    .local p3, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TT;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 88
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 89
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 90
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->typeRef:Lae/com/sun/xml/bind/api/TypeReference;

    .line 91
    return-void
.end method


# virtual methods
.method public getTypeReference()Lae/com/sun/xml/bind/api/TypeReference;
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->typeRef:Lae/com/sun/xml/bind/api/TypeReference;

    return-object v0
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 6
    .param p1, "_m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "output"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Lae/javax/xml/stream/XMLStreamWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 95
    .local v0, "m":Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-static {p3, v3}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->create(Lae/javax/xml/stream/XMLStreamWriter;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v4

    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;

    iget-object v3, v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v5, p3, v3}, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;-><init>(Lae/javax/xml/stream/XMLStreamWriter;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 6
    .param p1, "_m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Ljava/io/OutputStream;",
            "Ljavax/xml/namespace/NamespaceContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 101
    .local v0, "m":Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    const/4 v5, 0x0

    .line 102
    .local v5, "pia":Ljava/lang/Runnable;
    if-eqz p4, :cond_0

    .line 103
    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;

    .end local v5    # "pia":Ljava/lang/Runnable;
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v5, p4, v1}, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;-><init>(Ljavax/xml/namespace/NamespaceContext;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 105
    .restart local v5    # "pia":Ljava/lang/Runnable;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v0, p3}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/OutputStream;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .locals 6
    .param p1, "_m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Ljavax/xml/transform/Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 120
    .local v0, "m":Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v0, p3}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createXmlOutput(Ljavax/xml/transform/Result;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v4

    invoke-virtual {v0, p3}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createPostInitAction(Ljavax/xml/transform/Result;)Ljava/lang/Runnable;

    move-result-object v5

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "_m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "output"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Lorg/w3c/dom/Node;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 110
    .local v0, "m":Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;

    new-instance v3, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;

    invoke-direct {v3, p3}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {v4, v3}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;

    iget-object v3, v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v5, p3, v3}, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;-><init>(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    .locals 6
    .param p1, "_m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Lorg/xml/sax/ContentHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 115
    .local v0, "m":Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;

    invoke-direct {v4, p3}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public marshal(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 3
    .param p2, "out"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v0, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 149
    if-nez p1, :cond_0

    .line 150
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 154
    :goto_0
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 155
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    goto :goto_0
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .locals 2
    .param p1, "_u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "in"    # Lae/javax/xml/stream/XMLStreamReader;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Lae/javax/xml/stream/XMLStreamReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 125
    .local v0, "u":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/JAXBElement;

    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "_u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 135
    .local v0, "u":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Ljava/io/InputStream;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/JAXBElement;

    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 2
    .param p1, "_u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "in"    # Ljavax/xml/transform/Source;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Ljavax/xml/transform/Source;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 130
    .local v0, "u":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Ljavax/xml/transform/Source;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/JAXBElement;

    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 2
    .param p1, "_u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "n"    # Lorg/w3c/dom/Node;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Lorg/w3c/dom/Node;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;, "Lae/com/sun/xml/bind/v2/runtime/BridgeImpl<TT;>;"
    move-object v0, p1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 140
    .local v0, "u":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;->bi:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/JAXBElement;

    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
