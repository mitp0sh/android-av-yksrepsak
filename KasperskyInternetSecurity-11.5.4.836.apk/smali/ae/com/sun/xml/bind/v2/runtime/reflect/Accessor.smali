.class public abstract Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.super Ljava/lang/Object;
.source "Accessor.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterOnlyReflection;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;"
    }
.end annotation


# static fields
.field private static final ERROR:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

.field public static final JAXB_ELEMENT_VALUE:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<",
            "Lae/javax/xml/bind/JAXBElement;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static accessWarned:Z

.field private static nonAbstractableClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final uninitializedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TValueT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljava/util/Calendar;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/xml/datatype/Duration;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/xml/datatype/XMLGregorianCalendar;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljavax/activation/DataHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljavax/xml/transform/Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Ljava/io/File;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/net/URI;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/net/URL;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljavax/xml/transform/Source;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->nonAbstractableClasses:Ljava/util/List;

    .line 220
    sput-boolean v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->accessWarned:Z

    .line 449
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$1;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->ERROR:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 461
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$2;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$2;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->JAXB_ELEMENT_VALUE:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    .line 487
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TValueT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TValueT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->valueType:Ljava/lang/Class;

    .line 103
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->accessWarned:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 93
    sput-boolean p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->accessWarned:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;

    return-object v0
.end method

.method public static getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->ERROR:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method


# virtual methods
.method public final adapt(Lae/com/sun/xml/bind/v2/model/core/Adapter;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TT;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    .local p1, "adapter":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;

    sget-object v2, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    iget-object v0, p1, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {v2, v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p1, Lae/com/sun/xml/bind/v2/model/core/Adapter;->adapterType:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v2, p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;-><init>(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Ljava/lang/Class;)V

    return-object v1
.end method

.method public final adapt(Ljava/lang/Class;Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TT;TValueT;>;>;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TT;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "adapter":Ljava/lang/Class;, "Ljava/lang/Class<+Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TT;TValueT;>;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;

    invoke-direct {v0, p1, p0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;-><init>(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Ljava/lang/Class;)V

    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)TValueT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation
.end method

.method public getUnadapted(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TValueT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public isAdapted()Z
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isValueTypeAbstractable()Z
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->nonAbstractableClasses:Ljava/util/List;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getValueType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 0
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TValueT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    return-object p0
.end method

.method public receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    :try_start_0
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {p0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 174
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "iae":Ljava/lang/IllegalAccessError;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->handleGenericError(Ljava/lang/Error;)V

    goto :goto_0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;TValueT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation
.end method

.method public setUnadapted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    return-void
.end method
