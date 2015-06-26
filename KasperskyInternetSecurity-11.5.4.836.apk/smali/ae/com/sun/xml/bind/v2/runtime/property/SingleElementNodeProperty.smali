.class final Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.source "SingleElementNodeProperty.java"


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

.field private final acceptedElements:[Ljavax/xml/namespace/QName;

.field private final nillable:Z

.field private final nullTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

.field private final typeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V
    .locals 11
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .prologue
    .line 93
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 83
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->typeNames:Ljava/util/Map;

    .line 94
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v6

    invoke-virtual {v6, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v6

    iput-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 95
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .line 97
    const/4 v5, 0x0

    .line 98
    .local v5, "nt":Ljavax/xml/namespace/QName;
    const/4 v4, 0x0

    .line 100
    .local v4, "nil":Z
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljavax/xml/namespace/QName;

    iput-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acceptedElements:[Ljavax/xml/namespace/QName;

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acceptedElements:[Ljavax/xml/namespace/QName;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 102
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acceptedElements:[Ljavax/xml/namespace/QName;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v7, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    .line 105
    .local v1, "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v6

    invoke-virtual {p1, v6}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 106
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-nez v5, :cond_1

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v5

    .line 107
    :cond_1
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->typeNames:Ljava/util/Map;

    iget-object v7, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    new-instance v8, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    iget-object v9, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v10

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;-><init>(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->isNillable()Z

    move-result v6

    or-int/2addr v4, v6

    .line 110
    goto :goto_1

    .line 112
    .end local v0    # "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    :cond_2
    iget-object v6, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-virtual {v6, v5}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v6

    iput-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->nullTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 114
    iput-boolean v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->nillable:Z

    .line 115
    return-void
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 9
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
    .line 169
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 171
    .local v1, "context":Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    .line 172
    .local v2, "e":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;

    invoke-virtual {v1, v6}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 175
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v6, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v0, v1, v6}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v4

    .line 176
    .local v4, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 177
    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Ljava/lang/String;)V

    .end local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .local v5, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v4, v5

    .line 178
    .end local v5    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_0
    iget-boolean v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->nillable:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-boolean v6, v6, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->allNillable:Z

    if-eqz v6, :cond_2

    .line 179
    :cond_1
    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {v5, v4, v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .end local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v5    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v4, v5

    .line 180
    .end local v5    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_2
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v6

    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {v7, v4, v8}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v6, v7}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 182
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v2    # "e":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    :cond_4
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 5
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 190
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acceptedElements:[Ljavax/xml/namespace/QName;

    .local v0, "arr$":[Ljavax/xml/namespace/QName;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 191
    .local v3, "n":Ljavax/xml/namespace/QName;
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 194
    .end local v3    # "n":Ljavax/xml/namespace/QName;
    :goto_1
    return-object v4

    .line 190
    .restart local v3    # "n":Ljavax/xml/namespace/QName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "n":Ljavax/xml/namespace/QName;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
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
    .line 128
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    .local p1, "beanT":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

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
    .line 124
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 11
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 133
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v6, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    .local v4, "v":Ljava/lang/Object;, "TValueT;"
    if-eqz v4, :cond_7

    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 136
    .local v5, "vtype":Ljava/lang/Class;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->typeNames:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    .line 138
    .local v3, "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    if-nez v3, :cond_1

    .line 139
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->typeNames:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    check-cast v3, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    .line 147
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    :cond_1
    instance-of v6, p1, Lae/javax/xml/bind/JAXBElement;

    if-eqz v6, :cond_3

    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "o":Ljava/lang/Object;, "TBeanT;"
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->isNil()Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v7

    .line 148
    .local v0, "addNilDecl":Z
    :goto_0
    if-nez v3, :cond_5

    .line 154
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->typeNames:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v6, v9}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 155
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->fieldName:Ljava/lang/String;

    iget-object v6, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const-class v10, Ljava/lang/Object;

    invoke-virtual {v6, v10}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v10

    if-eqz v0, :cond_4

    iget-boolean v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->nillable:Z

    if-eqz v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {p2, v4, v9, v10, v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    .line 160
    :goto_2
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 166
    .end local v0    # "addNilDecl":Z
    .end local v3    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    .end local v5    # "vtype":Ljava/lang/Class;
    :cond_2
    :goto_3
    return-void

    .restart local v3    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    .restart local v5    # "vtype":Ljava/lang/Class;
    :cond_3
    move v0, v8

    .line 147
    goto :goto_0

    .restart local v0    # "addNilDecl":Z
    :cond_4
    move v6, v8

    .line 155
    goto :goto_1

    .line 157
    :cond_5
    iget-object v6, v3, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v6, v9}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 158
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->fieldName:Ljava/lang/String;

    iget-object v9, v3, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    if-eqz v0, :cond_6

    iget-boolean v10, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->nillable:Z

    if-eqz v10, :cond_6

    :goto_4
    invoke-virtual {p2, v4, v6, v9, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_4

    .line 161
    .end local v0    # "addNilDecl":Z
    .end local v3    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    .end local v5    # "vtype":Ljava/lang/Class;
    .restart local p1    # "o":Ljava/lang/Object;, "TBeanT;"
    :cond_7
    iget-boolean v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->nillable:Z

    if-eqz v6, :cond_2

    .line 162
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->nullTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v6, v9}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 164
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_3
.end method

.method public wrapUp()V
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty<TBeanT;TValueT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->wrapUp()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;->prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .line 121
    return-void
.end method
