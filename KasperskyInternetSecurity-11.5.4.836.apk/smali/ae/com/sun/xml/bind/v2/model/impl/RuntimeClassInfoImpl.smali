.class Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.source "RuntimeClassInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;,
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private accessorFactory:Lae/com/sun/xml/bind/AccessorFactory;

.field private attributeWildcardAccessor:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<*",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private computedTransducer:Z

.field private supressAccessorWarnings:Z

.field private xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

.field private xmlLocationAccessor:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<*",
            "Lorg/xml/sax/Locator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Class;)V
    .locals 1
    .param p1, "modelBuilder"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V

    .line 100
    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->supressAccessorWarnings:Z

    .line 214
    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->computedTransducer:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 104
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->createAccessorFactory(Ljava/lang/Class;)Lae/com/sun/xml/bind/AccessorFactory;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->accessorFactory:Lae/com/sun/xml/bind/AccessorFactory;

    .line 105
    return-void
.end method

.method private calcTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, "valuep":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->hasAttributeWildcard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v4

    .line 232
    :cond_1
    move-object v0, p0

    .local v0, "ci":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
    :goto_1
    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getProperties()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .line 234
    .local v2, "pi":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v5

    sget-object v6, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    if-ne v5, v6, :cond_0

    move-object v3, v2

    .line 235
    check-cast v3, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;

    goto :goto_2

    .line 232
    .end local v2    # "pi":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    :cond_2
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    move-result-object v0

    goto :goto_1

    .line 241
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v3, :cond_0

    .line 243
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v5

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;->isSimpleType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    check-cast v5, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;

    iget-object v5, v5, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-static {v5, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->get(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;-><init>(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V

    move-object v4, v6

    goto :goto_0
.end method

.method private createAttributeWildcardAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<*",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 254
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic checkFieldXmlLocation(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->checkFieldXmlLocation(Ljava/lang/reflect/Field;)V

    return-void
.end method

.method protected checkFieldXmlLocation(Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 294
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    const-class v1, Lae/com/sun/xml/bind/annotation/XmlLocation;

    invoke-interface {v0, v1, p1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;

    invoke-direct {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;-><init>(Ljava/lang/reflect/Field;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->xmlLocationAccessor:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 298
    :cond_0
    return-void
.end method

.method protected createAccessorFactory(Ljava/lang/Class;)Lae/com/sun/xml/bind/AccessorFactory;
    .locals 12
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 109
    const/4 v1, 0x0

    .line 112
    .local v1, "accFactory":Lae/com/sun/xml/bind/AccessorFactory;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    check-cast v5, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;

    iget-object v2, v5, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 113
    .local v2, "context":Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    if-eqz v2, :cond_0

    .line 114
    iget-boolean v5, v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->supressAccessorWarnings:Z

    iput-boolean v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->supressAccessorWarnings:Z

    .line 115
    iget-boolean v5, v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlAccessorFactorySupport:Z

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->findXmlAccessorFactoryAnnotation(Ljava/lang/Class;)Lae/com/sun/xml/bind/XmlAccessorFactory;

    move-result-object v4

    .line 117
    .local v4, "factoryAnn":Lae/com/sun/xml/bind/XmlAccessorFactory;
    if-eqz v4, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v4}, Lae/com/sun/xml/bind/XmlAccessorFactory;->value()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lae/com/sun/xml/bind/AccessorFactory;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .end local v4    # "factoryAnn":Lae/com/sun/xml/bind/XmlAccessorFactory;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 137
    invoke-static {}, Lae/com/sun/xml/bind/AccessorFactoryImpl;->getInstance()Lae/com/sun/xml/bind/AccessorFactoryImpl;

    move-result-object v1

    .line 139
    :cond_1
    return-object v1

    .line 120
    .restart local v4    # "factoryAnn":Lae/com/sun/xml/bind/XmlAccessorFactory;
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/InstantiationException;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v7, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ACCESSORFACTORY_INSTANTIATION_EXCEPTION:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    invoke-interface {v9, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0

    .line 124
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/IllegalAccessException;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v7, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ACCESSORFACTORY_ACCESS_EXCEPTION:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    invoke-interface {v9, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0
.end method

.method public bridge synthetic createAccessorSeed(Ljava/lang/Object;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->createAccessorSeed(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    move-result-object v0

    return-object v0
.end method

.method public createAccessorSeed(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;
    .locals 9
    .param p1, "getter"    # Ljava/lang/reflect/Method;
    .param p2, "setter"    # Ljava/lang/reflect/Method;

    .prologue
    .line 281
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->accessorFactory:Lae/com/sun/xml/bind/AccessorFactory;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->clazz:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v3, v2, p1, p2}, Lae/com/sun/xml/bind/AccessorFactory;->createPropertyAccessor(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :goto_0
    new-instance v2, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createAccessorSeed(Ljava/lang/Object;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;-><init>(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-object v2

    .line 282
    .end local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Lae/javax/xml/bind/JAXBException;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->CUSTOM_ACCESSORFACTORY_PROPERTY_ERROR:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v7, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 286
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .restart local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    goto :goto_0
.end method

.method protected createAttributeProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAttributePropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAttributePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected createElementProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected bridge synthetic createFieldSeed(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->createFieldSeed(Ljava/lang/reflect/Field;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    move-result-object v0

    return-object v0
.end method

.method protected createFieldSeed(Ljava/lang/reflect/Field;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;
    .locals 10
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    .line 263
    .local v2, "readOnly":Z
    :try_start_0
    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->supressAccessorWarnings:Z

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->accessorFactory:Lae/com/sun/xml/bind/AccessorFactory;

    check-cast v3, Lae/com/sun/xml/bind/InternalAccessorFactory;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->clazz:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    iget-boolean v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->supressAccessorWarnings:Z

    invoke-interface {v3, v4, p1, v2, v5}, Lae/com/sun/xml/bind/InternalAccessorFactory;->createFieldAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;ZZ)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :goto_0
    new-instance v3, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createFieldSeed(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;-><init>(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-object v3

    .line 266
    .end local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->accessorFactory:Lae/com/sun/xml/bind/AccessorFactory;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->clazz:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v4, v3, p1, v2}, Lae/com/sun/xml/bind/AccessorFactory;->createFieldAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;Z)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :try_end_1
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    goto :goto_0

    .line 268
    .end local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Lae/javax/xml/bind/JAXBException;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v5, Lae/com/sun/xml/bind/v2/model/impl/Messages;->CUSTOM_ACCESSORFACTORY_FIELD_ERROR:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v8

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 272
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .restart local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    goto :goto_0
.end method

.method protected createMapProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected createReferenceProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected createValueProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeValuePropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeValuePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected findXmlAccessorFactoryAnnotation(Ljava/lang/Class;)Lae/com/sun/xml/bind/XmlAccessorFactory;
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 143
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v1

    const-class v2, Lae/com/sun/xml/bind/XmlAccessorFactory;

    invoke-interface {v1, v2, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/XmlAccessorFactory;

    .line 144
    .local v0, "factoryAnn":Lae/com/sun/xml/bind/XmlAccessorFactory;
    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v1

    const-class v2, Lae/com/sun/xml/bind/XmlAccessorFactory;

    invoke-interface {v1, v2, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .end local v0    # "factoryAnn":Lae/com/sun/xml/bind/XmlAccessorFactory;
    check-cast v0, Lae/com/sun/xml/bind/XmlAccessorFactory;

    .line 147
    .restart local v0    # "factoryAnn":Lae/com/sun/xml/bind/XmlAccessorFactory;
    :cond_0
    return-object v0
.end method

.method public getAttributeWildcard()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TB;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "c":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
    :goto_0
    if-eqz v0, :cond_2

    .line 205
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->attributeWildcardAccessor:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-nez v1, :cond_0

    .line 207
    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->createAttributeWildcardAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    iput-object v1, v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->attributeWildcardAccessor:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 208
    :cond_0
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->attributeWildcardAccessor:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 211
    :goto_1
    return-object v1

    .line 204
    :cond_1
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getBaseClass()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    return-object v0
.end method

.method public bridge synthetic getBaseClass()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getFactoryMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getLocatorField()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<*",
            "Lorg/xml/sax/Locator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->xmlLocationAccessor:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperties()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    return-object v0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->computedTransducer:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->computedTransducer:Z

    .line 220
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->calcTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 222
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    return-object v0
.end method

.method public link()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 198
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->link()V

    .line 199
    return-void
.end method
