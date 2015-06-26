.class public Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;
.super Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.source "CompositeStructureBeanInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
        "<",
        "Lae/com/sun/xml/bind/api/CompositeStructure;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 7
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    const/4 v4, 0x0

    .line 61
    const/4 v2, 0x0

    const-class v3, Lae/com/sun/xml/bind/api/CompositeStructure;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;ZZZ)V

    .line 62
    return-void
.end method


# virtual methods
.method public createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Lae/com/sun/xml/bind/api/CompositeStructure;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Lae/com/sun/xml/bind/api/CompositeStructure;

    move-result-object v0

    return-object v0
.end method

.method public getElementLocalName(Lae/com/sun/xml/bind/api/CompositeStructure;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->getElementLocalName(Lae/com/sun/xml/bind/api/CompositeStructure;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementNamespaceURI(Lae/com/sun/xml/bind/api/CompositeStructure;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->getElementNamespaceURI(Lae/com/sun/xml/bind/api/CompositeStructure;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->getId(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "typeSubstitutionCapable"    # Z

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<",
            "Lae/com/sun/xml/bind/api/CompositeStructure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 1
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->reset(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z

    move-result v0

    return v0
.end method

.method public serializeAttributes(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 104
    return-void
.end method

.method public bridge synthetic serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->serializeAttributes(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public serializeBody(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 5
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v4, p1, Lae/com/sun/xml/bind/api/CompositeStructure;->bridges:[Lae/com/sun/xml/bind/api/Bridge;

    array-length v2, v4

    .line 108
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 109
    iget-object v4, p1, Lae/com/sun/xml/bind/api/CompositeStructure;->values:[Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 110
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p1, Lae/com/sun/xml/bind/api/CompositeStructure;->bridges:[Lae/com/sun/xml/bind/api/Bridge;

    aget-object v0, v4, v1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    .line 111
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    invoke-virtual {v0, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->marshal(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public bridge synthetic serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->serializeBody(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public serializeRoot(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 7
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_NON_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v6, v6}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 96
    return-void
.end method

.method public bridge synthetic serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->serializeRoot(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public serializeURIs(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "o"    # Lae/com/sun/xml/bind/api/CompositeStructure;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public bridge synthetic serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/api/CompositeStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;->serializeURIs(Lae/com/sun/xml/bind/api/CompositeStructure;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method
