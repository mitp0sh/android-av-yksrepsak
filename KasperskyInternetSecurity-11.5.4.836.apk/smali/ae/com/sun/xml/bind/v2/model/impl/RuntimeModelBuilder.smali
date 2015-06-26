.class public Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;
.super Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;
.source "RuntimeModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field public final context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "annotationReader"    # Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .param p4, "defaultNamespaceRemap"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-direct {p0, p2, v0, p3, p4}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;Ljava/util/Map;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 96
    return-void
.end method

.method public static createTransducer(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 7
    .param p0, "ref"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;

    .prologue
    .line 151
    invoke-interface {p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v5

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v3

    .line 152
    .local v3, "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    invoke-interface {p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;->getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v2

    .line 153
    .local v2, "src":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v1

    .line 155
    .local v1, "id":Lae/com/sun/xml/bind/v2/model/core/ID;
    sget-object v5, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne v1, v5, :cond_0

    .line 156
    sget-object v5, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->STRING:Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;

    .line 175
    :goto_0
    return-object v5

    .line 158
    :cond_0
    sget-object v5, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne v1, v5, :cond_1

    .line 159
    new-instance v4, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl;

    invoke-direct {v4, v3}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    .end local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .local v4, "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    move-object v3, v4

    .line 161
    .end local v4    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .restart local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    :cond_1
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getExpectedMimeType()Ljavax/activation/MimeType;

    move-result-object v0

    .line 162
    .local v0, "emt":Ljavax/activation/MimeType;
    if-eqz v0, :cond_2

    .line 163
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;

    invoke-direct {v4, v3, v0}, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;Ljavax/activation/MimeType;)V

    .end local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .restart local v4    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    move-object v3, v4

    .line 165
    .end local v4    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .restart local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    :cond_2
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->inlineBinaryData()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;

    invoke-direct {v4, v3}, Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    .end local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .restart local v4    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    move-object v3, v4

    .line 168
    .end local v4    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .restart local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    :cond_3
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 169
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createXSSimpleType()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    sget-object v5, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->STRING:Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;

    goto :goto_0

    .line 172
    :cond_4
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;Ljavax/xml/namespace/QName;)V

    .end local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .restart local v4    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    move-object v3, v4

    .end local v4    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .restart local v3    # "t":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    :cond_5
    move-object v5, v3

    .line 175
    goto :goto_0
.end method

.method private static createXSSimpleType()Ljavax/xml/namespace/QName;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    const-string v2, "anySimpleType"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createArrayInfo(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;
    .locals 1
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p2, Ljava/lang/reflect/Type;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createArrayInfo(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/reflect/Type;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public createArrayInfo(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/reflect/Type;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;
    .locals 1
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p2, "arrayType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 125
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;

    check-cast p2, Ljava/lang/Class;

    .end local p2    # "arrayType":Ljava/lang/reflect/Type;
    invoke-direct {v0, p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected bridge synthetic createClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createClassInfo(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method protected createClassInfo(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 115
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    invoke-direct {v0, p0, p2, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic createElementInfo(Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    .locals 1
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
        }
    .end annotation

    .prologue
    .line 86
    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createElementInfo(Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public createElementInfo(Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;
    .locals 1
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "registryInfo":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    invoke-direct {v0, p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method protected bridge synthetic createEnumLeafInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createEnumLeafInfo(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method protected createEnumLeafInfo(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 110
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;

    invoke-direct {v0, p0, p2, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected createTypeInfoSet()Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;)V

    return-object v0
.end method

.method protected bridge synthetic createTypeInfoSet()Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createTypeInfoSet()Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->getClassInfo(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassInfo(Ljava/lang/Object;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->getClassInfo(Ljava/lang/Class;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public getClassInfo(Ljava/lang/Class;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "searchForSuperClass"    # Z
    .param p3, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public getNavigator()Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    check-cast v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    return-object v0
.end method

.method public bridge synthetic link()Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->link()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;

    move-result-object v0

    return-object v0
.end method

.method public link()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->link()Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;

    return-object v0
.end method
