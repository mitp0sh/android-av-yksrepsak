.class public Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;
.super Ljava/lang/Object;
.source "ModelBuilder.java"


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
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final defaultNsUri:Ljava/lang/String;

.field private errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

.field private hadError:Z

.field public hasSwaRef:Z

.field private linked:Z

.field public final nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private final proxyErrorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

.field public final reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field final registries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private final subclassReplacements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;TC;>;"
        }
    .end annotation
.end field

.field final typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private final typeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    const-class v3, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->$assertionsDisabled:Z

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "s":Lae/javax/xml/bind/annotation/XmlSchema;
    :try_start_0
    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlSchema;->location()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    :try_start_1
    const-string v3, "xyz"

    invoke-static {v3}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    return-void

    .end local v2    # "s":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_0
    move v3, v5

    .line 84
    goto :goto_0

    .line 169
    .restart local v2    # "s":Lae/javax/xml/bind/annotation/XmlSchema;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-class v3, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/model/impl/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_1

    .line 173
    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/Messages;->INCOMPATIBLE_API_VERSION_MUSTANG:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    .line 178
    .local v1, "res":Lae/com/sun/xml/bind/v2/model/impl/Messages;
    :goto_2
    new-instance v3, Ljava/lang/LinkageError;

    new-array v6, v7, [Ljava/lang/Object;

    const-class v7, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-static {v7}, Lae/com/sun/xml/bind/util/Which;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const-class v5, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-static {v5}, Lae/com/sun/xml/bind/util/Which;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    .end local v1    # "res":Lae/com/sun/xml/bind/v2/model/impl/Messages;
    :cond_1
    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/Messages;->INCOMPATIBLE_API_VERSION:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    .restart local v1    # "res":Lae/com/sun/xml/bind/v2/model/impl/Messages;
    goto :goto_2

    .line 192
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .end local v1    # "res":Lae/com/sun/xml/bind/v2/model/impl/Messages;
    :catch_1
    move-exception v0

    .line 194
    .restart local v0    # "e":Ljava/lang/NoSuchMethodError;
    new-instance v3, Ljava/lang/LinkageError;

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->RUNNING_WITH_1_0_RUNTIME:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v7, v7, [Ljava/lang/Object;

    const-class v8, Lae/com/sun/xml/bind/WhiteSpaceProcessor;

    invoke-static {v8}, Lae/com/sun/xml/bind/util/Which;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-class v5, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-static {v5}, Lae/com/sun/xml/bind/util/Which;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p4, "defaultNamespaceRemap"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;",
            "Ljava/util/Map",
            "<TC;TC;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .local p2, "navigator":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .local p3, "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<TC;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeNames:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->registries:Ljava/util/Map;

    .line 136
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder$1;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder$1;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->proxyErrorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    .line 149
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    .line 150
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    .line 151
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->subclassReplacements:Ljava/util/Map;

    .line 152
    if-nez p4, :cond_0

    .line 153
    const-string p4, ""

    .line 154
    :cond_0
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->defaultNsUri:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->proxyErrorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->setErrorHandler(Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;)V

    .line 156
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->createTypeInfoSet()Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    .line 157
    return-void
.end method

.method private addTypeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 288
    .local v1, "t":Ljavax/xml/namespace/QName;
    if-nez v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeNames:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    .line 291
    .local v0, "old":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    if-eqz v0, :cond_0

    .line 293
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/Messages;->CONFLICTING_XML_TYPE_MAPPING:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0
.end method


# virtual methods
.method public addRegistry(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/RegistryInfo;
    .locals 1
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/RegistryInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "registryClass":Ljava/lang/Object;, "TC;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;

    invoke-direct {v0, p0, p2, p1}, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createArrayInfo(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;
    .locals 1
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            "TT;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p2, "arrayType":Ljava/lang/Object;, "TT;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;

    invoke-direct {v0, p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .locals 1
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "clazz":Ljava/lang/Object;, "TC;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-direct {v0, p0, p2, p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createElementInfo(Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl",
            "<TT;TC;TF;TM;>;TM;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "registryInfo":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "m":Ljava/lang/Object;, "TM;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    invoke-direct {v0, p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEnumLeafInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;
    .locals 2
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "clazz":Ljava/lang/Object;, "TC;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v1, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->use(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, p2, p1, v1}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createTypeInfoSet()Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;->createLeaves(Lae/com/sun/xml/bind/v2/model/nav/Navigator;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;-><init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Ljava/util/Map;)V

    return-object v0
.end method

.method public getClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "clazz":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo(Ljava/lang/Object;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 21
    .param p2, "searchForSuperClass"    # Z
    .param p3, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "clazz":Ljava/lang/Object;, "TC;"
    sget-boolean v18, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    if-nez p1, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getClassInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v14

    .line 225
    .local v14, "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    if-eqz v14, :cond_1

    move-object v15, v14

    .line 280
    .end local v14    # "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    .local v15, "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :goto_0
    return-object v15

    .line 228
    .end local v15    # "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    .restart local v14    # "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isEnum(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->createEnumLeafInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    move-result-object v11

    .line 230
    .local v11, "li":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->add(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;)V

    .line 231
    move-object v14, v11

    .line 232
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->addTypeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;)V

    .line 272
    .end local v11    # "li":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-object/from16 v18, v0

    const-class v19, Lae/javax/xml/bind/annotation/XmlSeeAlso;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v16

    check-cast v16, Lae/javax/xml/bind/annotation/XmlSeeAlso;

    .line 273
    .local v16, "sa":Lae/javax/xml/bind/annotation/XmlSeeAlso;
    if-eqz v16, :cond_9

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassArrayValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/Object;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_9

    aget-object v17, v4, v7

    .local v17, "t":Ljava/lang/Object;, "TT;"
    move-object/from16 v18, v16

    .line 275
    check-cast v18, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 274
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 234
    .end local v4    # "arr$":[Ljava/lang/Object;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v16    # "sa":Lae/javax/xml/bind/annotation/XmlSeeAlso;
    .end local v17    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->subclassReplacements:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 235
    .local v9, "isReplaced":Z
    if-eqz v9, :cond_3

    if-nez p2, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->subclassReplacements:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v14

    goto :goto_1

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-object/from16 v18, v0

    const-class v19, Lae/javax/xml/bind/annotation/XmlTransient;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasClassAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v18

    if-nez v18, :cond_4

    if-eqz v9, :cond_5

    .line 241
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    new-instance v19, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v14

    goto/16 :goto_1

    .line 244
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->createClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v6

    .line 245
    .local v6, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->add(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)V

    .line 248
    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperties()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 249
    .local v12, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    invoke-interface {v12}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v18

    sget-object v19, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->registries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".ObjectFactory"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->findClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 255
    .local v5, "c":Ljava/lang/Object;, "TC;"
    if-eqz v5, :cond_7

    move-object/from16 v18, v12

    .line 256
    check-cast v18, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->addRegistry(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/RegistryInfo;

    .line 260
    .end local v5    # "c":Ljava/lang/Object;, "TC;"
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->ref()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    goto :goto_3

    .line 263
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :cond_8
    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 265
    move-object v14, v6

    .line 266
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->addTypeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;)V

    goto/16 :goto_1

    .end local v6    # "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .end local v9    # "isReplaced":Z
    .restart local v16    # "sa":Lae/javax/xml/bind/annotation/XmlSeeAlso;
    :cond_9
    move-object v15, v14

    .line 280
    .end local v14    # "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    .restart local v15    # "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    goto/16 :goto_0
.end method

.method public getRegistry(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/RegistryInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/RegistryInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->registries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/RegistryInfo;

    return-object v0
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "ref":Lae/com/sun/xml/bind/v2/model/core/Ref;, "Lae/com/sun/xml/bind/v2/model/core/Ref<TT;TC;>;"
    const/4 v1, 0x0

    .line 328
    sget-boolean v2, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lae/com/sun/xml/bind/v2/model/core/Ref;->valueList:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 329
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/model/core/Ref;->type:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "c":Ljava/lang/Object;, "TC;"
    if-eqz v0, :cond_2

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v3, Lae/javax/xml/bind/annotation/XmlRegistry;

    invoke-interface {v2, v3, v0, v1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 331
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->registries:Ljava/util/Map;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v3, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->addRegistry(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/RegistryInfo;

    .line 335
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/model/core/Ref;->type:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v1

    goto :goto_0
.end method

.method public getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 6
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getTypeInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    .line 308
    .local v2, "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    if-eqz v2, :cond_0

    .line 320
    .end local v2    # "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :goto_0
    return-object v2

    .line 310
    .restart local v2    # "r":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v3, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isArray(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {p0, p2, p1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->createArrayInfo(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;

    move-result-object v0

    .line 313
    .local v0, "ai":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TT;TC;TF;TM;>;"
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->addTypeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;)V

    .line 314
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v3, v0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->add(Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;)V

    move-object v2, v0

    .line 315
    goto :goto_0

    .line 318
    .end local v0    # "ai":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TT;TC;TF;TM;>;"
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v3, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 319
    .local v1, "c":Ljava/lang/Object;, "TC;"
    sget-boolean v3, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be a leaf, but we failed to recognize it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 320
    :cond_2
    invoke-virtual {p0, v1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    goto :goto_0
.end method

.method public isReplaced(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p1, "sc":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->subclassReplacements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public link()Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    sget-boolean v4, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->linked:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 393
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->linked:Z

    .line 395
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getAllElements()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .line 396
    .local v1, "ei":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->link()V

    goto :goto_0

    .line 398
    .end local v1    # "ei":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    :cond_1
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 399
    .local v0, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->link()V

    goto :goto_1

    .line 401
    .end local v0    # "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    :cond_2
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->enums()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    .line 402
    .local v3, "li":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->link()V

    goto :goto_2

    .line 404
    .end local v3    # "li":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;
    :cond_3
    iget-boolean v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->hadError:Z

    if-eqz v4, :cond_4

    .line 405
    const/4 v4, 0x0

    .line 407
    :goto_3
    return-object v4

    :cond_4
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    goto :goto_3
.end method

.method public final reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V
    .locals 1
    .param p1, "e"    # Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    .prologue
    .line 427
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->hadError:Z

    .line 428
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;->error(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 430
    :cond_0
    return-void
.end method

.method public setErrorHandler(Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    .prologue
    .line 423
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->errorHandler:Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;

    .line 424
    return-void
.end method
