.class Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;
.super Ljava/lang/Object;
.source "TypeInfoSetImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;


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
        "Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet",
        "<TT;TC;TF;TM;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final allElements:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private final anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private final arrays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private final beans:Ljava/util/Map;
    .annotation runtime Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
        value = Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil$ToStringAdapter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private final beansView:Ljava/util/Map;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private final builtins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Lae/com/sun/xml/bind/v2/model/core/BuiltinLeafInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final elementMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;>;>;"
        }
    .end annotation
.end field

.field private final enums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field public final nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field public final reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private xmlNsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TT;TC;TF;TM;>;",
            "Ljava/util/Map",
            "<TT;+",
            "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl",
            "<TT;TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .local p2, "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .local p3, "leaves":Ljava/util/Map;, "Ljava/util/Map<TT;+Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TT;TC;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->builtins:Ljava/util/Map;

    .line 100
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->enums:Ljava/util/Map;

    .line 104
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->arrays:Ljava/util/Map;

    .line 115
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans:Ljava/util/Map;

    .line 119
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beansView:Ljava/util/Map;

    .line 126
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    .line 129
    new-instance v2, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl$1;

    invoke-direct {v2, p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl$1;-><init>(Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;)V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->allElements:Ljava/lang/Iterable;

    .line 154
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    .line 155
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    .line 156
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->builtins:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->createAnyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 161
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->primitiveToBox:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->builtins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    .prologue
    .line 85
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public add(Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "ai":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->arrays:Ljava/util/Map;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->getType()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public add(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans:Ljava/util/Map;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public final add(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "ei":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    const/4 v3, 0x0

    .line 295
    .local v3, "scope":Ljava/lang/Object;, "TC;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v4

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getClazz()Ljava/lang/Object;

    move-result-object v3

    .line 298
    .end local v3    # "scope":Ljava/lang/Object;, "TC;"
    :cond_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 299
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;>;"
    if-nez v2, :cond_1

    .line 300
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;>;"
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .restart local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;>;"
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_1
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .line 304
    .local v1, "existing":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 306
    .local v0, "en":Ljavax/xml/namespace/QName;
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v5, Lae/com/sun/xml/bind/v2/model/impl/Messages;->CONFLICTING_XML_ELEMENT_MAPPING:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {p2, v4}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 311
    .end local v0    # "en":Ljavax/xml/namespace/QName;
    :cond_2
    return-void
.end method

.method public add(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "li":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->enums:Ljava/util/Map;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public arrays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<+TT;+",
            "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->arrays:Ljava/util/Map;

    return-object v0
.end method

.method public beans()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;+",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beansView:Ljava/util/Map;

    return-object v0
.end method

.method public builtins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TT;+",
            "Lae/com/sun/xml/bind/v2/model/core/BuiltinLeafInfo",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->builtins:Ljava/util/Map;

    return-object v0
.end method

.method protected createAnyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;-><init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    return-object v0
.end method

.method public dump(Ljavax/xml/transform/Result;)V
    .locals 5
    .param p1, "out"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lae/javax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v0

    .line 407
    .local v0, "context":Lae/javax/xml/bind/JAXBContext;
    invoke-virtual {v0}, Lae/javax/xml/bind/JAXBContext;->createMarshaller()Lae/javax/xml/bind/Marshaller;

    move-result-object v1

    .line 408
    .local v1, "m":Lae/javax/xml/bind/Marshaller;
    invoke-interface {v1, p0, p1}, Lae/javax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 409
    return-void
.end method

.method public enums()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;+",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->enums:Ljava/util/Map;

    return-object v0
.end method

.method public getAllElements()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->allElements:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public final getAttributeFormDefault(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 8
    .param p1, "nsUri"    # Ljava/lang/String;

    .prologue
    .line 383
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 384
    .local v0, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v5, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 385
    .local v3, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v3, :cond_0

    .line 388
    invoke-interface {v3}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    invoke-interface {v3}, Lae/javax/xml/bind/annotation/XmlSchema;->attributeFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v2

    .line 392
    .local v2, "xnf":Lae/javax/xml/bind/annotation/XmlNsForm;
    sget-object v4, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    if-eq v2, v4, :cond_0

    .line 395
    .end local v0    # "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .end local v2    # "xnf":Lae/javax/xml/bind/annotation/XmlNsForm;
    .end local v3    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    goto :goto_0
.end method

.method public getClassInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "type":Ljava/lang/Object;, "TC;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->builtins:Ljava/util/Map;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->use(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/LeafInfo;

    .line 266
    .local v0, "l":Lae/com/sun/xml/bind/v2/model/core/LeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/LeafInfo<TT;TC;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 274
    :goto_0
    return-object v1

    .line 268
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->enums:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "l":Lae/com/sun/xml/bind/v2/model/core/LeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/LeafInfo<TT;TC;>;"
    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/LeafInfo;

    .line 269
    .restart local v0    # "l":Lae/com/sun/xml/bind/v2/model/core/LeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/LeafInfo<TT;TC;>;"
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 271
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/NonElement;

    goto :goto_0
.end method

.method public final getElementFormDefault(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 8
    .param p1, "nsUri"    # Ljava/lang/String;

    .prologue
    .line 363
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 364
    .local v0, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v5, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 365
    .local v3, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-nez v3, :cond_1

    .line 366
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "TISI Couldn\'t read package annotation!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-interface {v3}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    invoke-interface {v3}, Lae/javax/xml/bind/annotation/XmlSchema;->elementFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v2

    .line 374
    .local v2, "xnf":Lae/javax/xml/bind/annotation/XmlNsForm;
    sget-object v4, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    if-eq v2, v4, :cond_0

    .line 379
    .end local v0    # "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .end local v2    # "xnf":Lae/javax/xml/bind/annotation/XmlNsForm;
    .end local v3    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :goto_1
    return-object v2

    :cond_2
    sget-object v2, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    goto :goto_1
.end method

.method public bridge synthetic getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 85
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    .locals 4
    .param p2, "name"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljavax/xml/namespace/QName;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "scope":Ljava/lang/Object;, "TC;"
    :goto_0
    if-eqz p1, :cond_1

    .line 279
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 280
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;>;"
    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .line 282
    .local v1, "r":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    if-eqz v1, :cond_0

    .line 286
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;>;"
    .end local v1    # "r":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    :goto_1
    return-object v1

    .line 284
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;>;"
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 285
    goto :goto_0

    .line 286
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;>;"
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    move-object v1, v2

    goto :goto_1
.end method

.method public getElementMappings(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "+",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "scope":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getNavigator()Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    return-object v0
.end method

.method public getSchemaLocations()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v3, "r":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 349
    .local v0, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v6, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 350
    .local v4, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v4, :cond_0

    .line 353
    invoke-interface {v4}, Lae/javax/xml/bind/annotation/XmlSchema;->location()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "loc":Ljava/lang/String;
    const-string v5, "##generate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    invoke-interface {v4}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 359
    .end local v0    # "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .end local v2    # "loc":Ljava/lang/String;
    .end local v4    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_1
    return-object v3
.end method

.method public getTypeInfo(Lae/com/sun/xml/bind/v2/model/core/Ref;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/Ref",
            "<TT;TC;>;)",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "ref":Lae/com/sun/xml/bind/v2/model/core/Ref;, "Lae/com/sun/xml/bind/v2/model/core/Ref<TT;TC;>;"
    const/4 v1, 0x0

    .line 226
    sget-boolean v2, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lae/com/sun/xml/bind/v2/model/core/Ref;->valueList:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 227
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/model/core/Ref;->type:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "c":Ljava/lang/Object;, "TC;"
    if-eqz v0, :cond_1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v3, Lae/javax/xml/bind/annotation/XmlRegistry;

    invoke-interface {v2, v3, v0, v1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 231
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/model/core/Ref;->type:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getTypeInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v1

    goto :goto_0
.end method

.method public getTypeInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->erasure(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 205
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->builtins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/LeafInfo;

    .line 206
    .local v1, "l":Lae/com/sun/xml/bind/v2/model/core/LeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/LeafInfo<TT;TC;>;"
    if-eqz v1, :cond_0

    .line 214
    .end local v1    # "l":Lae/com/sun/xml/bind/v2/model/core/LeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/LeafInfo<TT;TC;>;"
    :goto_0
    return-object v1

    .line 208
    .restart local v1    # "l":Lae/com/sun/xml/bind/v2/model/core/LeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/LeafInfo<TT;TC;>;"
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->arrays:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-object v1, v2

    goto :goto_0

    .line 212
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "d":Ljava/lang/Object;, "TC;"
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getClassInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v1

    goto :goto_0
.end method

.method public getXmlNs(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl<TT;TC;TF;TM;>;"
    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->xmlNsCache:Ljava/util/Map;

    if-nez v10, :cond_2

    .line 323
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->xmlNsCache:Ljava/util/Map;

    .line 325
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 326
    .local v1, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v11, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 327
    .local v9, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v9, :cond_0

    .line 330
    invoke-interface {v9}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "uri":Ljava/lang/String;
    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->xmlNsCache:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 332
    .local v5, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 333
    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->xmlNsCache:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .restart local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_1
    invoke-interface {v9}, Lae/javax/xml/bind/annotation/XmlSchema;->xmlns()[Lae/javax/xml/bind/annotation/XmlNs;

    move-result-object v0

    .local v0, "arr$":[Lae/javax/xml/bind/annotation/XmlNs;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v8, v0, v3

    .line 336
    .local v8, "xns":Lae/javax/xml/bind/annotation/XmlNs;
    invoke-interface {v8}, Lae/javax/xml/bind/annotation/XmlNs;->prefix()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Lae/javax/xml/bind/annotation/XmlNs;->namespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "arr$":[Lae/javax/xml/bind/annotation/XmlNs;
    .end local v1    # "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "uri":Ljava/lang/String;
    .end local v8    # "xns":Lae/javax/xml/bind/annotation/XmlNs;
    .end local v9    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_2
    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->xmlNsCache:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 342
    .local v6, "r":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 343
    .end local v6    # "r":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v6

    .restart local v6    # "r":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    goto :goto_1
.end method
