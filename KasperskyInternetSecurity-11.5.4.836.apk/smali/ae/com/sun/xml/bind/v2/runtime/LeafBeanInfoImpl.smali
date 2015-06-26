.class final Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;
.super Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.source "LeafBeanInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field private final loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final loaderWithSubst:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private final xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TBeanT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;)V
    .locals 8
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "li"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;

    .prologue
    .line 85
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;->getClazz()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;->getTypeNames()[Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;->isElement()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;[Ljavax/xml/namespace/QName;ZZZ)V

    .line 87
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 88
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 89
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->loaderWithSubst:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 91
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->isElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    goto :goto_0
.end method


# virtual methods
.method public createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;",
            ")TBeanT;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "_":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public final getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "_":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 1
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "typeSubstitutionCapable"    # Z

    .prologue
    .line 168
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    if-eqz p2, :cond_0

    .line 169
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->loaderWithSubst:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TBeanT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    return-object v0
.end method

.method public getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TBeanT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 99
    .local v0, "tn":Ljavax/xml/namespace/QName;
    if-eqz v0, :cond_0

    .line 101
    .end local v0    # "tn":Ljavax/xml/namespace/QName;
    :goto_0
    return-object v0

    .restart local v0    # "tn":Ljavax/xml/namespace/QName;
    :cond_0
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public final reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 1
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    return v0
.end method

.method public final serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    return-void
.end method

.method public final serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 4
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v3, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    const/4 v2, 0x0

    invoke-interface {v1, p2, p1, v2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v3, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 7
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_NON_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5, v5}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p2, p1, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsSoleContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_0
.end method

.method public final serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 2
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->useNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
