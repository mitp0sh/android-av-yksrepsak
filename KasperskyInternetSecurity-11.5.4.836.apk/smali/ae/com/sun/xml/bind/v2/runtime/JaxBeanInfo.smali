.class public abstract Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.super Ljava/lang/Object;
.source "JaxBeanInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FLAG_HAS_AFTER_MARSHAL_METHOD:S = 0x40s

.field private static final FLAG_HAS_AFTER_UNMARSHAL_METHOD:S = 0x10s

.field private static final FLAG_HAS_BEFORE_MARSHAL_METHOD:S = 0x20s

.field private static final FLAG_HAS_BEFORE_UNMARSHAL_METHOD:S = 0x8s

.field private static final FLAG_HAS_ELEMENT_ONLY_CONTENTMODEL:S = 0x4s

.field private static final FLAG_HAS_LIFECYCLE_EVENTS:S = 0x80s

.field private static final FLAG_IS_ELEMENT:S = 0x1s

.field private static final FLAG_IS_IMMUTABLE:S = 0x2s

.field private static final logger:Ljava/util/logging/Logger;

.field private static marshalEventParams:[Ljava/lang/Class;

.field private static final unmarshalEventParams:[Ljava/lang/Class;


# instance fields
.field protected flag:S

.field protected isNilIncluded:Z

.field public final jaxbType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TBeanT;>;"
        }
    .end annotation
.end field

.field private lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

.field private final typeName:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 431
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lae/javax/xml/bind/Unmarshaller;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v3

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->unmarshalEventParams:[Ljava/lang/Class;

    .line 432
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lae/javax/xml/bind/Marshaller;

    aput-object v1, v0, v2

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->marshalEventParams:[Ljava/lang/Class;

    .line 565
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljava/lang/Object;ZZZ)V
    .locals 3
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "rti"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    .param p4, "typeName"    # Ljava/lang/Object;
    .param p5, "isElement"    # Z
    .param p6, "isImmutable"    # Z
    .param p7, "hasLifecycleEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;",
            "Ljava/lang/Class",
            "<TBeanT;>;",
            "Ljava/lang/Object;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    .local p3, "jaxbType":Ljava/lang/Class;, "Ljava/lang/Class<TBeanT;>;"
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->isNilIncluded:Z

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    .line 119
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    .line 122
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    .line 123
    if-eqz p5, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz p6, :cond_2

    const/4 v1, 0x2

    :goto_1
    or-int/2addr v1, v2

    if-eqz p7, :cond_0

    const/16 v0, 0x80

    :cond_0
    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    .line 126
    return-void

    :cond_1
    move v2, v0

    .line 123
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljavax/xml/namespace/QName;ZZZ)V
    .locals 0
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "rti"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    .param p4, "typeName"    # Ljavax/xml/namespace/QName;
    .param p5, "isElement"    # Z
    .param p6, "isImmutable"    # Z
    .param p7, "hasLifecycleEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;",
            "Ljava/lang/Class",
            "<TBeanT;>;",
            "Ljavax/xml/namespace/QName;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    .local p3, "jaxbType":Ljava/lang/Class;, "Ljava/lang/Class<TBeanT;>;"
    invoke-direct/range {p0 .. p7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljava/lang/Object;ZZZ)V

    .line 109
    return-void
.end method

.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;ZZZ)V
    .locals 8
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "rti"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    .param p4, "isElement"    # Z
    .param p5, "isImmutable"    # Z
    .param p6, "hasLifecycleEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;",
            "Ljava/lang/Class",
            "<TBeanT;>;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    .local p3, "jaxbType":Ljava/lang/Class;, "Ljava/lang/Class<TBeanT;>;"
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljava/lang/Object;ZZZ)V

    .line 116
    return-void
.end method

.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;[Ljavax/xml/namespace/QName;ZZZ)V
    .locals 0
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "rti"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    .param p4, "typeNames"    # [Ljavax/xml/namespace/QName;
    .param p5, "isElement"    # Z
    .param p6, "isImmutable"    # Z
    .param p7, "hasLifecycleEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;",
            "Ljava/lang/Class",
            "<TBeanT;>;[",
            "Ljavax/xml/namespace/QName;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    .local p3, "jaxbType":Ljava/lang/Class;, "Ljava/lang/Class<TBeanT;>;"
    invoke-direct/range {p0 .. p7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljava/lang/Object;ZZZ)V

    .line 102
    return-void
.end method

.method private cacheLifecycleMethod(Ljava/lang/reflect/Method;S)V
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "lifecycleFlag"    # S

    .prologue
    .line 505
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    .line 510
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 512
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    or-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    .line 514
    sparse-switch p2, :sswitch_data_0

    .line 528
    :goto_0
    return-void

    .line 516
    :sswitch_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iput-object p1, v0, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->beforeUnmarshal:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 519
    :sswitch_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iput-object p1, v0, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->afterUnmarshal:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 522
    :sswitch_2
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iput-object p1, v0, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->beforeMarshal:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 525
    :sswitch_3
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iput-object p1, v0, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->afterMarshal:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
    .end sparse-switch
.end method

.method private invokeUnmarshallCallback(Ljava/lang/reflect/Method;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Ljava/lang/Object;)V
    .locals 4
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "child"    # Ljava/lang/Object;
    .param p3, "unm"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    .param p4, "parent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    const/4 v3, 0x0

    .line 557
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method private match(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "params"    # [Ljava/lang/Class;

    .prologue
    .line 492
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;",
            ")TBeanT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public final getLifecycleMethods()Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;
    .locals 1

    .prologue
    .line 536
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    return-object v0
.end method

.method public abstract getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.end method

.method public abstract getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TBeanT;>;"
        }
    .end annotation
.end method

.method public getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    check-cast v0, Ljavax/xml/namespace/QName;

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    check-cast v0, [Ljavax/xml/namespace/QName;

    check-cast v0, [Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getTypeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    check-cast v0, Ljavax/xml/namespace/QName;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->typeName:Ljava/lang/Object;

    check-cast v0, [Ljavax/xml/namespace/QName;

    check-cast v0, [Ljavax/xml/namespace/QName;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final hasAfterMarshalMethod()Z
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAfterUnmarshalMethod()Z
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasBeforeMarshalMethod()Z
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasBeforeUnmarshalMethod()Z
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasElementOnlyContentModel(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 224
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    if-eqz p1, :cond_0

    .line 225
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, -0x5

    int-to-short v0, v0

    iput-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    goto :goto_0
.end method

.method public final hasElementOnlyContentModel()Z
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final invokeAfterUnmarshalMethod(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "unm"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    .param p2, "child"    # Ljava/lang/Object;
    .param p3, "parent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLifecycleMethods()Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    move-result-object v1

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->afterUnmarshal:Ljava/lang/reflect/Method;

    .line 552
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, p2, p1, p3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->invokeUnmarshallCallback(Ljava/lang/reflect/Method;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Ljava/lang/Object;)V

    .line 553
    return-void
.end method

.method public final invokeBeforeUnmarshalMethod(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "unm"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    .param p2, "child"    # Ljava/lang/Object;
    .param p3, "parent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLifecycleMethods()Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    move-result-object v1

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->beforeUnmarshal:Ljava/lang/reflect/Method;

    .line 544
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, p2, p1, p3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->invokeUnmarshallCallback(Ljava/lang/reflect/Method;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public final isElement()Z
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isImmutable()Z
    .locals 1

    .prologue
    .line 204
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNilIncluded()Z
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->isNilIncluded:Z

    return v0
.end method

.method protected link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 0
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 422
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    return-void
.end method

.method public lookForLifecycleMethods()Z
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    iget-short v0, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->flag:S

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
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
.end method

.method public abstract serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
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
.end method

.method public abstract serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
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
.end method

.method public abstract serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
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
.end method

.method protected final setLifecycleFlags()V
    .locals 13

    .prologue
    .line 440
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    .line 442
    .local v3, "jt":Ljava/lang/Class;, "Ljava/lang/Class<TBeanT;>;"
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    if-nez v7, :cond_0

    .line 443
    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    invoke-direct {v7}, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;-><init>()V

    iput-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    .line 446
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    .line 447
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 448
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 450
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->beforeUnmarshal:Ljava/lang/reflect/Method;

    if-nez v7, :cond_1

    .line 451
    const-string v7, "beforeUnmarshal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 452
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->unmarshalEventParams:[Ljava/lang/Class;

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->match(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 453
    const/16 v7, 0x8

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->cacheLifecycleMethod(Ljava/lang/reflect/Method;S)V

    .line 458
    :cond_1
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->afterUnmarshal:Ljava/lang/reflect/Method;

    if-nez v7, :cond_2

    .line 459
    const-string v7, "afterUnmarshal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 460
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->unmarshalEventParams:[Ljava/lang/Class;

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->match(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 461
    const/16 v7, 0x10

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->cacheLifecycleMethod(Ljava/lang/reflect/Method;S)V

    .line 466
    :cond_2
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->beforeMarshal:Ljava/lang/reflect/Method;

    if-nez v7, :cond_3

    .line 467
    const-string v7, "beforeMarshal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 468
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->marshalEventParams:[Ljava/lang/Class;

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->match(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 469
    const/16 v7, 0x20

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->cacheLifecycleMethod(Ljava/lang/reflect/Method;S)V

    .line 474
    :cond_3
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lcm:Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->afterMarshal:Ljava/lang/reflect/Method;

    if-nez v7, :cond_4

    .line 475
    const-string v7, "afterMarshal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 476
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->marshalEventParams:[Ljava/lang/Class;

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->match(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 477
    const/16 v7, 0x40

    invoke-direct {p0, v5, v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->cacheLifecycleMethod(Ljava/lang/reflect/Method;S)V

    .line 447
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 484
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "jt":Ljava/lang/Class;, "Ljava/lang/Class<TBeanT;>;"
    .end local v4    # "len$":I
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v9, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_DISCOVER_EVENTHANDLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 489
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_6
    return-void
.end method

.method public wrapUp()V
    .locals 0

    .prologue
    .line 428
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TBeanT;>;"
    return-void
.end method
