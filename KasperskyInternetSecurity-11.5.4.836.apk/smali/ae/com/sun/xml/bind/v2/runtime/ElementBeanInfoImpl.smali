.class public final Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
.super Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.source "ElementBeanInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
        "<",
        "Lae/javax/xml/bind/JAXBElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/javax/xml/bind/JAXBElement;",
            ">;"
        }
    .end annotation
.end field

.field public final expectedType:Ljava/lang/Class;

.field private loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final property:Lae/com/sun/xml/bind/v2/runtime/property/Property;

.field private final scope:Ljava/lang/Class;

.field private final tagName:Ljavax/xml/namespace/QName;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 7
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 125
    const-class v3, Lae/javax/xml/bind/JAXBElement;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;ZZZ)V

    .line 126
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->tagName:Ljavax/xml/namespace/QName;

    .line 127
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->expectedType:Ljava/lang/Class;

    .line 128
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->scope:Ljava/lang/Class;

    .line 129
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->constructor:Ljava/lang/reflect/Constructor;

    .line 131
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .line 210
    return-void
.end method

.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;)V
    .locals 10
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "rei"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 94
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;ZZZ)V

    .line 96
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getProperty()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->create(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Lae/com/sun/xml/bind/v2/runtime/property/Property;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .line 98
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->tagName:Ljavax/xml/namespace/QName;

    .line 99
    sget-object v1, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getContentInMemoryType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->expectedType:Ljava/lang/Class;

    .line 100
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getScope()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lae/javax/xml/bind/JAXBElement$GlobalScope;

    :goto_0
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->scope:Ljava/lang/Class;

    .line 102
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    .line 103
    .local v8, "type":Ljava/lang/Class;
    const-class v0, Lae/javax/xml/bind/JAXBElement;

    if-ne v8, v0, :cond_1

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->constructor:Ljava/lang/reflect/Constructor;

    .line 114
    :goto_1
    return-void

    .line 100
    .end local v8    # "type":Ljava/lang/Class;
    :cond_0
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getScope()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-result-object v0

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getClazz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    .line 107
    .restart local v8    # "type":Ljava/lang/Class;
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->expectedType:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v7

    .line 109
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    new-instance v9, Ljava/lang/NoSuchMethodError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find the constructor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->expectedType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 110
    .local v9, "x":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v9, v7}, Ljava/lang/NoSuchMethodError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 111
    throw v9
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;)Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    .prologue
    .line 76
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    return-object v0
.end method


# virtual methods
.method public final createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Lae/javax/xml/bind/JAXBElement;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->createInstanceFromValue(Ljava/lang/Object;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v0

    return-object v0
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
    .line 76
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v0

    return-object v0
.end method

.method public final createInstanceFromValue(Ljava/lang/Object;)Lae/javax/xml/bind/JAXBElement;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lae/javax/xml/bind/JAXBElement;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->tagName:Ljavax/xml/namespace/QName;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->expectedType:Ljava/lang/Class;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->scope:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, p1}, Lae/javax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    goto :goto_0
.end method

.method public getElementLocalName(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;

    .prologue
    .line 283
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->getElementLocalName(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementNamespaceURI(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;

    .prologue
    .line 279
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->getElementNamespaceURI(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 2
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 324
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 326
    check-cast v0, Ljava/lang/String;

    .line 328
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->getId(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 4
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "typeSubstitutionCapable"    # Z

    .prologue
    .line 287
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    if-nez v2, :cond_0

    .line 289
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;

    invoke-direct {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 290
    .local v0, "c":Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    new-instance v1, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v1}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    .line 291
    .local v1, "result":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    invoke-interface {v2, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    .line 292
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 294
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->getOne()Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-direct {v3, p0, v2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 299
    .end local v0    # "c":Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    .end local v1    # "result":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-object v2

    .line 297
    .restart local v0    # "c":Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    .restart local v1    # "result":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    :cond_1
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;->INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0
.end method

.method public final getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<",
            "Lae/javax/xml/bind/JAXBElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 1
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 363
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 365
    return-void
.end method

.method public reset(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 1
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lae/javax/xml/bind/JAXBElement;->setValue(Ljava/lang/Object;)V

    .line 315
    const/4 v0, 0x1

    return v0
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
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->reset(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z

    move-result v0

    return v0
.end method

.method public serializeAttributes(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 345
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
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->serializeAttributes(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public serializeBody(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 4
    .param p1, "element"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 333
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "x":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v3, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->serializeBody(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public serializeRoot(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->serializeBody(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 341
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
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->serializeRoot(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public serializeURIs(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 349
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
    .line 76
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->serializeURIs(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public wrapUp()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->wrapUp()V

    .line 358
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->wrapUp()V

    .line 359
    return-void
.end method
