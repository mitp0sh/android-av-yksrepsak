.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;
.source "RuntimeEnumLeafInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;
.implements Lae/com/sun/xml/bind/v2/runtime/Transducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;",
        "Lae/com/sun/xml/bind/v2/runtime/Transducer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TB;>;"
        }
    .end annotation
.end field

.field private final parseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TB;TT;>;"
        }
    .end annotation
.end field

.field private final printMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Class;)V
    .locals 1
    .param p1, "builder"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    .local p3, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2, p3, p3}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->parseMap:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->printMap:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 90
    return-void
.end method


# virtual methods
.method public bridge synthetic createEnumConstant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    check-cast p3, Ljava/lang/reflect/Field;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->createEnumConstant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumConstantImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEnumConstant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumConstantImpl;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "literal"    # Ljava/lang/String;
    .param p3, "constant"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumConstantImpl;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    .local p4, "last":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    const/4 v8, 0x1

    .line 97
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p3, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p3, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .local v2, "t":Ljava/lang/Enum;, "TT;"
    const/4 v0, 0x0

    .line 111
    .local v0, "b":Ljava/lang/Object;, "TB;"
    :try_start_2
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v3, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 118
    .end local v0    # "b":Ljava/lang/Object;, "TB;"
    :goto_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->parseMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->printMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v3, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumConstantImpl;

    invoke-direct {v3, p0, p1, p2, p4}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumConstantImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;Ljava/lang/String;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)V

    return-object v3

    .line 104
    .end local v2    # "t":Ljava/lang/Enum;, "TT;"
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalAccessError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "b":Ljava/lang/Object;, "TB;"
    .restart local v2    # "t":Ljava/lang/Enum;, "TT;"
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->INVALID_XML_ENUM_VALUE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getType()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lae/com/sun/xml/bind/v2/model/annotation/FieldLocatable;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    invoke-direct {v6, p0, p3, v7}, Lae/com/sun/xml/bind/v2/model/annotation/FieldLocatable;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    invoke-direct {v5, v3, v1, v6}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_1

    .line 98
    .end local v0    # "b":Ljava/lang/Object;, "TB;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Enum;, "TT;"
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public declareNamespace(Ljava/lang/Enum;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 2
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    .local p1, "t":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->printMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 143
    return-void
.end method

.method public bridge synthetic declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->declareNamespace(Ljava/lang/Enum;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->clazz:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getClazz()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->getClazz()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    return-object p0
.end method

.method public getTypeName(Ljava/lang/Enum;)Ljavax/xml/namespace/QName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    .local p1, "instance":Ljava/lang/Enum;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->getTypeName(Ljava/lang/Enum;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNames()[Ljavax/xml/namespace/QName;
    .locals 3

    .prologue
    .line 125
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/lang/Enum;
    .locals 2
    .param p1, "lexical"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "b":Ljava/lang/Object;, "TB;"
    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->tokenStringType:Z

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Ljava/lang/String;

    .end local v0    # "b":Ljava/lang/Object;, "TB;"
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->parseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    return-object v1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->parse(Ljava/lang/CharSequence;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/Enum;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    .local p1, "t":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->printMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->print(Ljava/lang/Enum;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->useNamespace()Z

    move-result v0

    return v0
.end method

.method public writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 2
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "Lae/com/sun/xml/bind/v2/runtime/Name;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    .local p3, "o":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->printMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public bridge synthetic writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    check-cast p3, Ljava/lang/Enum;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Enum;Ljava/lang/String;)V

    return-void
.end method

.method public writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 2
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    .local p2, "t":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->baseXducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->printMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public bridge synthetic writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl<TT;TB;>;"
    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Enum;Ljava/lang/String;)V

    return-void
.end method
