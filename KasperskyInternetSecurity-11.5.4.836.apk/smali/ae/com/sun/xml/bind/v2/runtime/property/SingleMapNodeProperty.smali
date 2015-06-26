.class final Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.source "SingleMapNodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT::",
        "Ljava/util/Map;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl",
        "<TBeanT;>;"
    }
.end annotation


# static fields
.field private static final keyReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

.field private static final knownImplClasses:[Ljava/lang/Class;

.field private static final valueReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TValueT;>;"
        }
    .end annotation
.end field

.field private final entryLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final entryTag:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private final itemsLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private keyBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

.field private keyLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final keyTag:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private final mapImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TValueT;>;"
        }
    .end annotation
.end field

.field private final nillable:Z

.field private final tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private valueBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

.field private valueLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final valueTag:Lae/com/sun/xml/bind/v2/runtime/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/util/HashMap;

    aput-object v1, v0, v3

    const-class v1, Ljava/util/TreeMap;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Ljava/util/LinkedHashMap;

    aput-object v2, v0, v1

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->knownImplClasses:[Ljava/lang/Class;

    .line 254
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;

    invoke-direct {v0, v3}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;-><init>(I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 255
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;

    invoke-direct {v0, v4}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;-><init>(I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    return-void
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;)V
    .locals 4
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 156
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;

    invoke-direct {v1, p0, v2}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;Z)V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->itemsLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 210
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;

    invoke-direct {v1, p0, v2}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;-><init>(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;Z)V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 106
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 107
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 108
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    const-string v2, ""

    const-string v3, "entry"

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 109
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    const-string v2, ""

    const-string v3, "key"

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 110
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    const-string v2, ""

    const-string v3, "value"

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 111
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;->isCollectionNillable()Z

    move-result v1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->nillable:Z

    .line 112
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;->getKeyType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v1

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 113
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;->getValueType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v1

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 116
    sget-object v1, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "sig":Ljava/lang/Class;, "Ljava/lang/Class<TValueT;>;"
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->knownImplClasses:[Ljava/lang/Class;

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/ClassFactory;->inferImplClass(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->mapImplClass:Ljava/lang/Class;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->mapImplClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    return-object v0
.end method

.method static synthetic access$300(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-object v0
.end method

.method static synthetic access$400(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    return-object v0
.end method

.method static synthetic access$500(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-object v0
.end method

.method static synthetic access$600()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    return-object v0
.end method

.method static synthetic access$700(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    return-object v0
.end method

.method static synthetic access$800(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-object v0
.end method

.method static synthetic access$900()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    return-object v0
.end method

.method private bareStartTag(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V
    .locals 0
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p3, "peer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    invoke-virtual {p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p1, p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 294
    return-void
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 4
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    const/4 v2, 0x1

    .line 143
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 144
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 145
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->itemsLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v0, v1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 298
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 135
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->MAP:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

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
    .line 127
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 9
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty<TBeanT;TValueT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 259
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v5, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 260
    .local v3, "v":Ljava/util/Map;, "TValueT;"
    if-eqz v3, :cond_4

    .line 261
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-direct {p0, p2, v5, v3}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->bareStartTag(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 262
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-direct {p0, p2, v5, v8}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->bareStartTag(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 266
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 267
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v5, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 268
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->fieldName:Ljava/lang/String;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {p2, v2, v5, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    .line 269
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 273
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 274
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueTag:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v5, v4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 275
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->fieldName:Ljava/lang/String;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {p2, v4, v5, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    .line 276
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 279
    :cond_1
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_0

    .line 281
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 288
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return-void

    .line 283
    :cond_4
    iget-boolean v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->nillable:Z

    if-eqz v5, :cond_3

    .line 284
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v5, v8}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 286
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_1
.end method
