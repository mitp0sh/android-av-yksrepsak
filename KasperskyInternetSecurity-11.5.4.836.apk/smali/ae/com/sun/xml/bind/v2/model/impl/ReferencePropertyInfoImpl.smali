.class Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;
.source "ReferencePropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;
.implements Lae/com/sun/xml/bind/v2/model/impl/DummyPropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl",
        "<TT;TC;TF;TM;>;",
        "Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo",
        "<TT;TC;>;",
        "Lae/com/sun/xml/bind/v2/model/impl/DummyPropertyInfo",
        "<TT;TC;TF;TM;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static is2_2:Z


# instance fields
.field private final domHandler:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final isMixed:Z

.field private isRequired:Ljava/lang/Boolean;

.field private subTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final wildcard:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->$assertionsDisabled:Z

    .line 289
    sput-boolean v1, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->is2_2:Z

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "classInfo":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 83
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->subTypes:Ljava/util/Set;

    .line 101
    const-class v1, Lae/javax/xml/bind/annotation/XmlMixed;

    invoke-interface {p2, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isMixed:Z

    .line 103
    const-class v1, Lae/javax/xml/bind/annotation/XmlAnyElement;

    invoke-interface {p2, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAnyElement;

    .line 104
    .local v0, "xae":Lae/javax/xml/bind/annotation/XmlAnyElement;
    if-nez v0, :cond_1

    .line 105
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->wildcard:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .line 106
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->domHandler:Ljava/lang/Object;

    .line 111
    :goto_1
    return-void

    .line 101
    .end local v0    # "xae":Lae/javax/xml/bind/annotation/XmlAnyElement;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    .restart local v0    # "xae":Lae/javax/xml/bind/annotation/XmlAnyElement;
    :cond_1
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlAnyElement;->lax()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->LAX:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    :goto_2
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->wildcard:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .line 109
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v1

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v2

    const-string v3, "value"

    invoke-interface {v2, v0, v3}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->domHandler:Ljava/lang/Object;

    goto :goto_1

    .line 108
    :cond_2
    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->SKIP:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    goto :goto_2
.end method

.method private addAllSubtypes(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v4

    .line 356
    .local v4, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-interface {v4, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v6

    .line 357
    .local v6, "t":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    instance-of v7, v6, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-nez v7, :cond_1

    .line 359
    const/4 v5, 0x0

    .line 385
    :cond_0
    return v5

    .line 361
    :cond_1
    const/4 v5, 0x0

    .local v5, "result":Z
    move-object v0, v6

    .line 363
    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .line 364
    .local v0, "c":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isElement()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 365
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->asElement()Lae/com/sun/xml/bind/v2/model/core/Element;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    const/4 v5, 0x1

    .line 370
    :cond_2
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 371
    .local v1, "ci":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isElement()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getType()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->asElement()Lae/com/sun/xml/bind/v2/model/core/Element;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v5, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "ci":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    :cond_4
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getElementMappings(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .line 379
    .local v2, "ei":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementInfo<TT;TC;>;"
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getType()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 380
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private addGenericElement(Lae/com/sun/xml/bind/v2/model/core/ElementInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "ei":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementInfo<TT;TC;>;"
    if-nez p1, :cond_0

    .line 345
    const/4 v2, 0x0

    .line 349
    :goto_0
    return v2

    .line 346
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getSubstitutionMembers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;

    .line 348
    .local v1, "subst":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementInfo<TT;TC;>;"
    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->addGenericElement(Lae/com/sun/xml/bind/v2/model/core/ElementInfo;)Z

    goto :goto_1

    .line 349
    .end local v1    # "subst":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementInfo<TT;TC;>;"
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private addGenericElement(Lae/javax/xml/bind/annotation/XmlElementRef;)Z
    .locals 5
    .param p1, "r"    # Lae/javax/xml/bind/annotation/XmlElementRef;

    .prologue
    .line 312
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getEffectiveNamespaceFor(Lae/javax/xml/bind/annotation/XmlElementRef;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "nsUri":Ljava/lang/String;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    move-result-object v1

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->addGenericElement(Lae/com/sun/xml/bind/v2/model/core/ElementInfo;)Z

    move-result v1

    return v1
.end method

.method private addGenericElement(Lae/javax/xml/bind/annotation/XmlElementRef;Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;)Z
    .locals 6
    .param p1, "r"    # Lae/javax/xml/bind/annotation/XmlElementRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/annotation/XmlElementRef;",
            "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl",
            "<TT;TC;TF;TM;>;)Z"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "info":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-direct {p2, p1}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getEffectiveNamespaceFor(Lae/javax/xml/bind/annotation/XmlElementRef;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "nsUri":Ljava/lang/String;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iget-object v3, p2, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljavax/xml/namespace/QName;

    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    move-result-object v0

    .line 320
    .local v0, "ei":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    const/4 v2, 0x1

    return v2
.end method

.method private calcTypes(Z)V
    .locals 27
    .param p1, "last"    # Z

    .prologue
    .line 136
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    new-instance v19, Ljava/util/LinkedHashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v19, v0

    const-class v20, Lae/javax/xml/bind/annotation/XmlElementRefs;

    invoke-interface/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    check-cast v15, Lae/javax/xml/bind/annotation/XmlElementRefs;

    .line 138
    .local v15, "refs":Lae/javax/xml/bind/annotation/XmlElementRefs;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v19, v0

    const-class v20, Lae/javax/xml/bind/annotation/XmlElementRef;

    invoke-interface/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lae/javax/xml/bind/annotation/XmlElementRef;

    .line 140
    .local v14, "ref":Lae/javax/xml/bind/annotation/XmlElementRef;
    if-eqz v15, :cond_0

    if-eqz v14, :cond_0

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v19, v0

    new-instance v20, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v21, Lae/com/sun/xml/bind/v2/model/impl/Messages;->MUTUALLY_EXCLUSIVE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x23

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v14}, Lae/javax/xml/bind/annotation/XmlElementRef;->annotationType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-interface {v15}, Lae/javax/xml/bind/annotation/XmlElementRefs;->annotationType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    invoke-virtual/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 148
    :cond_0
    if-eqz v15, :cond_3

    .line 149
    invoke-interface {v15}, Lae/javax/xml/bind/annotation/XmlElementRefs;->value()[Lae/javax/xml/bind/annotation/XmlElementRef;

    move-result-object v3

    .line 157
    .local v3, "ann":[Lae/javax/xml/bind/annotation/XmlElementRef;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isCollection()Z

    move-result v19

    if-nez v19, :cond_5

    const/16 v19, 0x1

    :goto_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    .line 159
    if-eqz v3, :cond_9

    .line 160
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    .line 161
    .local v11, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v13

    .line 163
    .local v13, "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    const-class v19, Lae/javax/xml/bind/annotation/XmlElementRef$DEFAULT;

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    .local v5, "defaultType":Ljava/lang/Object;, "TT;"
    const-class v19, Lae/javax/xml/bind/JAXBElement;

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 166
    .local v9, "je":Ljava/lang/Object;, "TC;"
    move-object v4, v3

    .local v4, "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_9

    aget-object v12, v4, v7

    .line 168
    .local v12, "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-interface {v13, v12, v0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 169
    .local v17, "type":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v5}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 170
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->erasure(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 171
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v11, v0, v9}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->addGenericElement(Lae/javax/xml/bind/annotation/XmlElementRef;)Z

    move-result v18

    .line 178
    .local v18, "yield":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isRequired(Lae/javax/xml/bind/annotation/XmlElementRef;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 179
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    .line 181
    :cond_2
    if-eqz p1, :cond_8

    if-nez v18, :cond_8

    .line 184
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v19

    const-class v20, Lae/javax/xml/bind/JAXBElement;

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v19, v0

    new-instance v20, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v21, Lae/com/sun/xml/bind/v2/model/impl/Messages;->NO_XML_ELEMENT_DECL:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getEffectiveNamespaceFor(Lae/javax/xml/bind/annotation/XmlElementRef;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v12}, Lae/javax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 277
    .end local v4    # "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v5    # "defaultType":Ljava/lang/Object;, "TT;"
    .end local v7    # "i$":I
    .end local v9    # "je":Ljava/lang/Object;, "TC;"
    .end local v10    # "len$":I
    .end local v11    # "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .end local v12    # "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v13    # "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .end local v17    # "type":Ljava/lang/Object;, "TT;"
    .end local v18    # "yield":Z
    :goto_4
    return-void

    .line 151
    .end local v3    # "ann":[Lae/javax/xml/bind/annotation/XmlElementRef;
    :cond_3
    if-eqz v14, :cond_4

    .line 152
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v3, v0, [Lae/javax/xml/bind/annotation/XmlElementRef;

    const/16 v19, 0x0

    aput-object v14, v3, v19

    .restart local v3    # "ann":[Lae/javax/xml/bind/annotation/XmlElementRef;
    goto/16 :goto_0

    .line 154
    .end local v3    # "ann":[Lae/javax/xml/bind/annotation/XmlElementRef;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "ann":[Lae/javax/xml/bind/annotation/XmlElementRef;
    goto/16 :goto_0

    .line 157
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 174
    .restart local v4    # "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    .restart local v5    # "defaultType":Ljava/lang/Object;, "TT;"
    .restart local v7    # "i$":I
    .restart local v9    # "je":Ljava/lang/Object;, "TC;"
    .restart local v10    # "len$":I
    .restart local v11    # "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .restart local v12    # "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    .restart local v13    # "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .restart local v17    # "type":Ljava/lang/Object;, "TT;"
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->addAllSubtypes(Ljava/lang/Object;)Z

    move-result v18

    .restart local v18    # "yield":Z
    goto/16 :goto_3

    .line 192
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v19, v0

    new-instance v20, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v21, Lae/com/sun/xml/bind/v2/model/impl/Messages;->INVALID_XML_ELEMENT_REF:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v17, v22, v23

    invoke-virtual/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_4

    .line 166
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 205
    .end local v4    # "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v5    # "defaultType":Ljava/lang/Object;, "TT;"
    .end local v7    # "i$":I
    .end local v9    # "je":Ljava/lang/Object;, "TC;"
    .end local v10    # "len$":I
    .end local v11    # "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .end local v12    # "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v13    # "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .end local v17    # "type":Ljava/lang/Object;, "TT;"
    .end local v18    # "yield":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->subTypes:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 206
    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;>;"
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 208
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;

    .line 209
    .local v8, "info":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, v8, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v16, v0

    .line 210
    .local v16, "sd":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    const-class v19, Lae/javax/xml/bind/annotation/XmlElementRefs;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    .end local v15    # "refs":Lae/javax/xml/bind/annotation/XmlElementRefs;
    check-cast v15, Lae/javax/xml/bind/annotation/XmlElementRefs;

    .line 211
    .restart local v15    # "refs":Lae/javax/xml/bind/annotation/XmlElementRefs;
    const-class v19, Lae/javax/xml/bind/annotation/XmlElementRef;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    .end local v14    # "ref":Lae/javax/xml/bind/annotation/XmlElementRef;
    check-cast v14, Lae/javax/xml/bind/annotation/XmlElementRef;

    .line 213
    .restart local v14    # "ref":Lae/javax/xml/bind/annotation/XmlElementRef;
    if-eqz v15, :cond_b

    if-eqz v14, :cond_b

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v19, v0

    new-instance v20, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v21, Lae/com/sun/xml/bind/v2/model/impl/Messages;->MUTUALLY_EXCLUSIVE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x23

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v14}, Lae/javax/xml/bind/annotation/XmlElementRef;->annotationType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-interface {v15}, Lae/javax/xml/bind/annotation/XmlElementRefs;->annotationType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    invoke-virtual/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 221
    :cond_b
    if-eqz v15, :cond_d

    .line 222
    invoke-interface {v15}, Lae/javax/xml/bind/annotation/XmlElementRefs;->value()[Lae/javax/xml/bind/annotation/XmlElementRef;

    move-result-object v3

    .line 231
    :goto_5
    if-eqz v3, :cond_a

    .line 232
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    .line 233
    .restart local v11    # "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v13

    .line 235
    .restart local v13    # "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    const-class v19, Lae/javax/xml/bind/annotation/XmlElementRef$DEFAULT;

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 236
    .restart local v5    # "defaultType":Ljava/lang/Object;, "TT;"
    const-class v19, Lae/javax/xml/bind/JAXBElement;

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 238
    .restart local v9    # "je":Ljava/lang/Object;, "TC;"
    move-object v4, v3

    .restart local v4    # "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v10, :cond_a

    aget-object v12, v4, v7

    .line 240
    .restart local v12    # "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-interface {v13, v12, v0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 241
    .restart local v17    # "type":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v5}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 242
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->erasure(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 244
    :cond_c
    move-object/from16 v0, v17

    invoke-interface {v11, v0, v9}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_f

    .line 245
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->addGenericElement(Lae/javax/xml/bind/annotation/XmlElementRef;Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;)Z

    move-result v18

    .line 251
    .restart local v18    # "yield":Z
    :goto_7
    if-eqz p1, :cond_11

    if-nez v18, :cond_11

    .line 254
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v19

    const-class v20, Lae/javax/xml/bind/JAXBElement;

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v19, v0

    new-instance v20, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v21, Lae/com/sun/xml/bind/v2/model/impl/Messages;->NO_XML_ELEMENT_DECL:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getEffectiveNamespaceFor(Lae/javax/xml/bind/annotation/XmlElementRef;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v12}, Lae/javax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_4

    .line 224
    .end local v4    # "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v5    # "defaultType":Ljava/lang/Object;, "TT;"
    .end local v7    # "i$":I
    .end local v9    # "je":Ljava/lang/Object;, "TC;"
    .end local v10    # "len$":I
    .end local v11    # "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .end local v12    # "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v13    # "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .end local v17    # "type":Ljava/lang/Object;, "TT;"
    .end local v18    # "yield":Z
    :cond_d
    if-eqz v14, :cond_e

    .line 225
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v3, v0, [Lae/javax/xml/bind/annotation/XmlElementRef;

    .end local v3    # "ann":[Lae/javax/xml/bind/annotation/XmlElementRef;
    const/16 v19, 0x0

    aput-object v14, v3, v19

    .restart local v3    # "ann":[Lae/javax/xml/bind/annotation/XmlElementRef;
    goto/16 :goto_5

    .line 227
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 248
    .restart local v4    # "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    .restart local v5    # "defaultType":Ljava/lang/Object;, "TT;"
    .restart local v7    # "i$":I
    .restart local v9    # "je":Ljava/lang/Object;, "TC;"
    .restart local v10    # "len$":I
    .restart local v11    # "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .restart local v12    # "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    .restart local v13    # "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .restart local v17    # "type":Ljava/lang/Object;, "TT;"
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->addAllSubtypes(Ljava/lang/Object;)Z

    move-result v18

    .restart local v18    # "yield":Z
    goto :goto_7

    .line 262
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v19, v0

    new-instance v20, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v21, Lae/com/sun/xml/bind/v2/model/impl/Messages;->INVALID_XML_ELEMENT_REF:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_4

    .line 238
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 276
    .end local v4    # "arr$":[Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v5    # "defaultType":Ljava/lang/Object;, "TT;"
    .end local v7    # "i$":I
    .end local v8    # "info":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    .end local v9    # "je":Ljava/lang/Object;, "TC;"
    .end local v10    # "len$":I
    .end local v11    # "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .end local v12    # "r":Lae/javax/xml/bind/annotation/XmlElementRef;
    .end local v13    # "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .end local v16    # "sd":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .end local v17    # "type":Ljava/lang/Object;, "TT;"
    .end local v18    # "yield":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    goto/16 :goto_4
.end method

.method private getEffectiveNamespaceFor(Lae/javax/xml/bind/annotation/XmlElementRef;)Ljava/lang/String;
    .locals 5
    .param p1, "r"    # Lae/javax/xml/bind/annotation/XmlElementRef;

    .prologue
    .line 325
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementRef;->namespace()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "nsUri":Ljava/lang/String;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v2

    const-class v3, Lae/javax/xml/bind/annotation/XmlSchema;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 328
    .local v1, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-nez v1, :cond_1

    .line 329
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "RPI Couldn\'t read package annotation!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlSchema;->attributeFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v2

    sget-object v3, Lae/javax/xml/bind/annotation/XmlNsForm;->QUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    if-ne v2, v3, :cond_0

    .line 335
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 336
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v0, v2, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->defaultNsUri:Ljava/lang/String;

    goto :goto_0
.end method

.method private isRequired(Lae/javax/xml/bind/annotation/XmlElementRef;)Z
    .locals 3
    .param p1, "ref"    # Lae/javax/xml/bind/annotation/XmlElementRef;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    const/4 v1, 0x1

    .line 297
    sget-boolean v2, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->is2_2:Z

    if-nez v2, :cond_0

    .line 303
    :goto_0
    return v1

    .line 300
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementRef;->required()Z
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/LinkageError;
    const/4 v2, 0x0

    sput-boolean v2, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->is2_2:Z

    goto :goto_0
.end method


# virtual methods
.method public final addType(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "info":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->subTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public final getDOMHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->domHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public getElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->calcTypes(Z)V

    .line 124
    :cond_0
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->types:Ljava/util/Set;

    return-object v0
.end method

.method public final getWildcard()Lae/com/sun/xml/bind/v2/model/core/WildcardMode;
    .locals 1

    .prologue
    .line 409
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->wildcard:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    return-object v0
.end method

.method public final isMixed()Z
    .locals 1

    .prologue
    .line 405
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isMixed:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->calcTypes(Z)V

    .line 282
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method protected link()V
    .locals 1

    .prologue
    .line 391
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->link()V

    .line 396
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->calcTypes(Z)V

    .line 398
    return-void
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->ref()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public ref()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getElements()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
