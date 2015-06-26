.class Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;
.source "ArrayReferenceNodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty$MixedTextLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ListT:Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty",
        "<TBeanT;T",
        "ListT;",
        "TItemT;>;"
    }
.end annotation


# instance fields
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

.field private final isMixed:Z

.field private final wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;)V
    .locals 7
    .param p1, "p"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty<TBeanT;TListT;TItemT;>;"
    const/4 v6, 0x0

    .line 84
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->isCollectionNillable()Z

    move-result v4

    invoke-direct {p0, p1, p2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;Ljavax/xml/namespace/QName;Z)V

    .line 76
    new-instance v3, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    .line 86
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getElements()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;

    .line 87
    .local v1, "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;
    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 88
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;
    :cond_0
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->isMixed()Z

    move-result v3

    iput-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->isMixed:Z

    .line 93
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getWildcard()Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 94
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getDOMHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/javax/xml/bind/annotation/DomHandler;

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    .line 95
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;->getWildcard()Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .line 100
    :goto_1
    return-void

    .line 97
    :cond_1
    iput-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    .line 98
    iput-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    goto :goto_1
.end method


# virtual methods
.method public createBodyUnmarshaller(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 10
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
    .line 129
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty<TBeanT;TListT;TItemT;>;"
    .local p2, "loaders":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->allocateOffset()I

    move-result v3

    .line 131
    .local v3, "offset":I
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;

    invoke-direct {v4, p0, v3}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;I)V

    .line 133
    .local v4, "recv":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 134
    .local v2, "n":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;>;"
    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 135
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v5, v2, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    iget-object v6, v2, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    iget-object v8, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v5, v6, v7}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0    # "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v2    # "n":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;>;"
    :cond_0
    iget-boolean v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->isMixed:Z

    if-eqz v5, :cond_1

    .line 140
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->TEXT_HANDLER:Ljavax/xml/namespace/QName;

    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty$MixedTextLoader;

    invoke-direct {v7, v4}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty$MixedTextLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v5, v6}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    .line 144
    :cond_1
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    if-eqz v5, :cond_2

    .line 145
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->CATCH_ALL:Ljavax/xml/namespace/QName;

    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->wcMode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-direct {v7, v8, v9}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;-><init>(Lae/javax/xml/bind/annotation/DomHandler;Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)V

    invoke-direct {v6, v7, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v5, v6}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    .line 148
    :cond_2
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 173
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty<TBeanT;TListT;TItemT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 180
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->expectedElements:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->containsKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty<TBeanT;TListT;TItemT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method protected final serializeListBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 6
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "T",
            "ListT;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty<TBeanT;TListT;TItemT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    .local p3, "list":Ljava/lang/Object;, "TListT;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v4, p3, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v3

    .line 105
    .local v3, "itr":Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator<TItemT;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    :try_start_0
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 108
    .local v2, "item":Ljava/lang/Object;, "TItemT;"
    if-eqz v2, :cond_0

    .line 109
    iget-boolean v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->isMixed:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_1

    .line 110
    check-cast v2, Ljava/lang/String;

    .end local v2    # "item":Ljava/lang/Object;, "TItemT;"
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->text(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lae/javax/xml/bind/JAXBException;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {p2, v4, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    .end local v1    # "e":Lae/javax/xml/bind/JAXBException;
    .restart local v2    # "item":Ljava/lang/Object;, "TItemT;"
    :cond_1
    :try_start_1
    iget-object v4, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 113
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v4, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->domHandler:Lae/javax/xml/bind/annotation/DomHandler;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {p2, v2, v4, p1, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeDom(Ljava/lang/Object;Lae/javax/xml/bind/annotation/DomHandler;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_1
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v2    # "item":Ljava/lang/Object;, "TItemT;"
    :cond_3
    return-void
.end method
