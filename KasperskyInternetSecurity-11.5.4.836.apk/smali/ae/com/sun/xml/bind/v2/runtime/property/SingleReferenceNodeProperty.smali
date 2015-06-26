.class final Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.source "SingleReferenceNodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TValueT;>;"
        }
    .end annotation
.end field

.field private final domHandler:Lae/javax/xml/bind/annotation/DomHandler;

.field private final expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;)V
    .locals 6
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty<TBeanT;TValueT;>;"
    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 75
    new-instance v2, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v2}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    .line 82
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 84
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getElements()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;

    .line 85
    .local v0, "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    .end local v0    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;
    :cond_0
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getWildcard()Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getDOMHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/DomHandler;

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    .line 90
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getWildcard()Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .line 95
    :goto_1
    return-void

    .line 92
    :cond_1
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    .line 93
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    goto :goto_1
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;

    .prologue
    .line 71
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 8
    .param p1, "chain"    # Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty<TBeanT;TValueT;>;"
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 125
    .local v1, "n":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;>;"
    iget-object v3, v1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    iget-object v4, v1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    iget-object v6, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v2

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {v5, v2, v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v3, v4, v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    .end local v1    # "n":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;>;"
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    if-eqz v2, :cond_1

    .line 128
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->CATCH_ALL:Ljavax/xml/namespace/QName;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-direct {v4, v5, v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;-><init>(Lae/javax/xml/bind/annotation/DomHandler;Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)V

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {v3, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v2, v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    .line 130
    :cond_1
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 4
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty<TBeanT;TValueT;>;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v2, p1, p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 139
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-eqz v0, :cond_1

    .line 140
    instance-of v2, v0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 141
    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    .line 143
    .local v1, "ebi":Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;

    iget-object v3, v1, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->expectedType:Ljava/lang/Class;

    invoke-direct {v2, p0, v3, v1}, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;)V

    .line 173
    .end local v1    # "ebi":Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    :goto_0
    return-object v2

    .line 170
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    goto :goto_0

    .line 173
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIdValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty<TBeanT;TValueT;>;"
    .local p1, "beanT":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty<TBeanT;TValueT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 5
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "outerPeer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty<TBeanT;TValueT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 107
    .local v2, "v":Ljava/lang/Object;, "TValueT;"
    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    iget-object v3, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 110
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v3, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, p1, v4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeDom(Ljava/lang/Object;Lae/javax/xml/bind/annotation/DomHandler;Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_1
    invoke-virtual {v0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Lae/javax/xml/bind/JAXBException;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {p2, v3, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
