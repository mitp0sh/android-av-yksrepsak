.class public Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;
.super Ljava/lang/Object;
.source "RuntimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil$ToStringAdapter;
    }
.end annotation


# static fields
.field public static final boxToPrimitive:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static final primitiveToBox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "b":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Byte;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Short;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Character;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Boolean;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Void;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->primitiveToBox:Ljava/util/Map;

    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v3, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->boxToPrimitive:Ljava/util/Map;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static getTypeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePrintConversionException(Ljava/lang/Object;Ljava/lang/Exception;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 4
    .param p0, "caller"    # Ljava/lang/Object;
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 116
    instance-of v1, p1, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_0

    .line 120
    check-cast p1, Lorg/xml/sax/SAXException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 122
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lae/javax/xml/bind/helpers/PrintConversionEventImpl;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;

    invoke-direct {v3, p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lae/javax/xml/bind/helpers/PrintConversionEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    .line 125
    .local v0, "ve":Lae/javax/xml/bind/ValidationEvent;
    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 126
    return-void
.end method

.method public static handleTypeMismatchError(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p1, "parentObject"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "childObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 134
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->TYPE_MISMATCH:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;

    invoke-direct {v2, p1, p2}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, v1, v2}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    .line 142
    .local v0, "ve":Lae/javax/xml/bind/ValidationEvent;
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 143
    return-void
.end method
