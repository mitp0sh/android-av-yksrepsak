.class abstract Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;
.source "ArrayElementProperty.java"


# annotations
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
.field private final nillableTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field protected prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

.field private refs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            ">;",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final typeMap:Ljava/util/Map;
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
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V
    .locals 9
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .prologue
    .line 100
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty<TBeanT;TListT;TItemT;>;"
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->isCollectionNillable()Z

    move-result v8

    invoke-direct {p0, p1, p2, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;Ljavax/xml/namespace/QName;Z)V

    .line 84
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->typeMap:Ljava/util/Map;

    .line 88
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->refs:Ljava/util/Map;

    .line 101
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .line 103
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v6

    .line 105
    .local v6, "types":Ljava/util/List;, "Ljava/util/List<+Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, "n":Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    .line 108
    .local v5, "typeRef":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v7

    invoke-interface {v7}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;->getType()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 109
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 110
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->primitiveToBox:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "type":Ljava/lang/Class;
    check-cast v4, Ljava/lang/Class;

    .line 112
    .restart local v4    # "type":Ljava/lang/Class;
    :cond_1
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v7

    invoke-virtual {p1, v7}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 113
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    iget-object v7, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;-><init>(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)V

    .line 116
    .local v3, "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->typeMap:Ljava/util/Map;

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->refs:Ljava/util/Map;

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->isNillable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v2, :cond_0

    .line 119
    iget-object v2, v3, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    goto :goto_0

    .line 122
    .end local v0    # "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v3    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    .end local v4    # "type":Ljava/lang/Class;
    .end local v5    # "typeRef":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    :cond_2
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->nillableTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 123
    return-void
.end method

.method private createItemUnmarshaller(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 4
    .param p1, "chain"    # Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    .param p2, "typeRef"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    .prologue
    .line 235
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty<TBeanT;TListT;TItemT;>;"
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v1

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->isLeaf(Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    .line 237
    .local v0, "xducer":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    .line 239
    .end local v0    # "xducer":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->refs:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public createBodyUnmarshaller(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
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
    .line 200
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty<TBeanT;TListT;TItemT;>;"
    .local p2, "loaders":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->allocateOffset()I

    move-result v3

    .line 201
    .local v3, "offset":I
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;

    invoke-direct {v4, p0, v3}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;I)V

    .line 203
    .local v4, "recv":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    invoke-interface {v7}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    .line 205
    .local v6, "typeRef":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    iget-object v7, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v5

    .line 206
    .local v5, "tagName":Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-direct {p0, p1, v6}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->createItemUnmarshaller(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v1

    .line 208
    .local v1, "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->isNillable()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-boolean v7, v7, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->allNillable:Z

    if-eqz v7, :cond_1

    .line 209
    :cond_0
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Array;

    invoke-direct {v2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Array;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V

    .end local v1    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .local v2, "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v1, v2

    .line 210
    .end local v2    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v1    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_1
    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 211
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Ljava/lang/String;)V

    .end local v1    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v2    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v1, v2

    .line 213
    .end local v2    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v1    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_2
    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    invoke-direct {v7, v1, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v5, v7}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    .end local v1    # "item":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .end local v5    # "tagName":Lae/com/sun/xml/bind/v2/runtime/Name;
    .end local v6    # "typeRef":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    :cond_3
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 5
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 244
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty<TBeanT;TListT;TItemT;>;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v2, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 257
    :goto_0
    return-object v2

    .line 248
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->typeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    .line 249
    .local v1, "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    iget-object v2, v1, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v2, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-direct {v2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;)V

    goto :goto_0

    .line 257
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty<TBeanT;TListT;TItemT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method protected abstract serializeItem(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            "TItemT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
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
.end method

.method protected serializeListBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 10
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
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty<TBeanT;TListT;TItemT;>;"
    .local p1, "beanT":Ljava/lang/Object;, "TBeanT;"
    .local p3, "list":Ljava/lang/Object;, "TListT;"
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v7, p3, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v5

    .line 135
    .local v5, "itr":Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator<TItemT;>;"
    instance-of v2, v5, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;

    .line 137
    .local v2, "isIdref":Z
    :cond_0
    :goto_0
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 139
    :try_start_0
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 140
    .local v3, "item":Ljava/lang/Object;, "TItemT;"
    if-eqz v3, :cond_4

    .line 141
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 142
    .local v4, "itemType":Ljava/lang/Class;
    if-eqz v2, :cond_1

    .line 145
    move-object v0, v5

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;

    move-object v7, v0

    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->last()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 148
    :cond_1
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->typeMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    .line 149
    .local v6, "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    :goto_1
    if-nez v6, :cond_2

    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 152
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->typeMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    check-cast v6, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    .restart local v6    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    goto :goto_1

    .line 155
    :cond_2
    if-nez v6, :cond_3

    .line 168
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->typeMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 169
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->fieldName:Ljava/lang/String;

    iget-object v8, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const-class v9, Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p2, v3, v7, v8, v9}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    .line 175
    :goto_2
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v3    # "item":Ljava/lang/Object;, "TItemT;"
    .end local v4    # "itemType":Ljava/lang/Class;
    .end local v6    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Lae/javax/xml/bind/JAXBException;
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {p2, v7, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    .end local v1    # "e":Lae/javax/xml/bind/JAXBException;
    .restart local v3    # "item":Ljava/lang/Object;, "TItemT;"
    .restart local v4    # "itemType":Ljava/lang/Class;
    .restart local v6    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    :cond_3
    :try_start_1
    iget-object v7, v6, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 172
    iget-object v7, v6, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {p0, v7, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->serializeItem(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    goto :goto_2

    .line 177
    .end local v4    # "itemType":Ljava/lang/Class;
    .end local v6    # "tt":Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
    :cond_4
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->nillableTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v7, :cond_0

    .line 178
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->nillableTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 180
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V
    :try_end_1
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 188
    .end local v3    # "item":Ljava/lang/Object;, "TItemT;"
    :cond_5
    return-void
.end method

.method public wrapUp()V
    .locals 1

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty<TBeanT;TListT;TItemT;>;"
    const/4 v0, 0x0

    .line 127
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapUp()V

    .line 128
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->refs:Ljava/util/Map;

    .line 129
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;->prop:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .line 130
    return-void
.end method
