.class final Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;
.super Ljava/lang/Object;
.source "RegistryInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
.implements Lae/com/sun/xml/bind/v2/model/core/RegistryInfo;


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
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
        "Lae/com/sun/xml/bind/v2/model/core/RegistryInfo",
        "<TT;TC;>;"
    }
.end annotation


# instance fields
.field private final nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private final references:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field final registryClass:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V
    .locals 10
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            "TC;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p3, "registryClass":Ljava/lang/Object;, "TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->references:Ljava/util/Set;

    .line 80
    iget-object v5, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    .line 81
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->registryClass:Ljava/lang/Object;

    .line 82
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .line 83
    iget-object v5, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->registries:Ljava/util/Map;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    const-string v6, "_useJAXBProperties"

    invoke-interface {v5, p3, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 88
    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->MISSING_JAXB_PROPERTIES:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {p1, v5}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 124
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v5, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getDeclaredMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 97
    .local v4, "m":Ljava/lang/Object;, "TM;"
    iget-object v5, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v6, Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-interface {v5, v6, v4, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/XmlElementDecl;

    .line 100
    .local v2, "em":Lae/javax/xml/bind/annotation/XmlElementDecl;
    if-nez v2, :cond_3

    .line 101
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v5, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "create"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->references:Ljava/util/Set;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v6, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-direct {v7, p0, v4, v8}, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    invoke-virtual {p1, v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_3
    :try_start_0
    invoke-virtual {p1, p0, v4}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->createElementInfo(Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    :try_end_0
    .catch Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    .local v1, "ei":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v5, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v5, v1, p1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->add(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;)V

    .line 122
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->references:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v1    # "ei":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0
.end method


# virtual methods
.method public getClazz()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->registryClass:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 2

    .prologue
    .line 131
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->registryClass:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->registryClass:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferences()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->references:Ljava/util/Set;

    return-object v0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    return-object v0
.end method
