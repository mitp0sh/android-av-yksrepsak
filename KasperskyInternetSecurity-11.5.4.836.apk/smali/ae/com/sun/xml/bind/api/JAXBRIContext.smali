.class public abstract Lae/com/sun/xml/bind/api/JAXBRIContext;
.super Lae/javax/xml/bind/JAXBContext;
.source "JAXBRIContext.java"


# static fields
.field public static final ANNOTATION_READER:Ljava/lang/String;

.field public static final CANONICALIZATION_SUPPORT:Ljava/lang/String; = "ae.com.sun.xml.bind.c14n"

.field public static final DEFAULT_NAMESPACE_REMAP:Ljava/lang/String; = "ae.com.sun.xml.bind.defaultNamespaceRemap"

.field public static final ENABLE_XOP:Ljava/lang/String; = "ae.com.sun.xml.bind.XOP"

.field public static final IMPROVED_XSI_TYPE_HANDLING:Ljava/lang/String; = "ae.com.sun.xml.bind.improvedXsiTypeHandling"

.field public static final RETAIN_REFERENCE_TO_INFO:Ljava/lang/String; = "retainReferenceToInfo"

.field public static final SUBCLASS_REPLACEMENTS:Ljava/lang/String; = "ae.com.sun.xml.bind.subclassReplacements"

.field public static final SUPRESS_ACCESSOR_WARNINGS:Ljava/lang/String; = "supressAccessorWarnings"

.field public static final TREAT_EVERYTHING_NILLABLE:Ljava/lang/String; = "ae.com.sun.xml.bind.treatEverythingNillable"

.field public static final TYPE_REFERENCES:Ljava/lang/String; = "ae.com.sun.xml.bind.typeReferences"

.field public static final XMLACCESSORFACTORY_SUPPORT:Ljava/lang/String; = "ae.com.sun.xml.bind.XmlAccessorFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 480
    const-class v0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/api/JAXBRIContext;->ANNOTATION_READER:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lae/javax/xml/bind/JAXBContext;-><init>()V

    return-void
.end method

.method public static getBaseType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p1, "baseType"    # Ljava/lang/Class;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .prologue
    .line 423
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-virtual {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getBaseClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static mangleNameToClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .prologue
    .line 378
    sget-object v0, Lae/com/sun/xml/bind/api/impl/NameConverter;->standard:Lae/com/sun/xml/bind/api/impl/NameConverter;

    invoke-interface {v0, p0}, Lae/com/sun/xml/bind/api/impl/NameConverter;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mangleNameToPropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .prologue
    .line 393
    sget-object v0, Lae/com/sun/xml/bind/api/impl/NameConverter;->standard:Lae/com/sun/xml/bind/api/impl/NameConverter;

    invoke-interface {v0, p0}, Lae/com/sun/xml/bind/api/impl/NameConverter;->toPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mangleNameToVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lae/com/sun/xml/bind/api/impl/NameConverter;->standard:Lae/com/sun/xml/bind/api/impl/NameConverter;

    invoke-interface {v0, p0}, Lae/com/sun/xml/bind/api/impl/NameConverter;->toVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Ljava/lang/Class;Ljava/util/Collection;Ljava/lang/String;Z)Lae/com/sun/xml/bind/api/JAXBRIContext;
    .locals 6
    .param p0, "classes"    # [Ljava/lang/Class;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p2, "defaultNamespaceRemap"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p3, "c14nSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Collection",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lae/com/sun/xml/bind/api/JAXBRIContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "typeRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lae/com/sun/xml/bind/api/TypeReference;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lae/com/sun/xml/bind/api/JAXBRIContext;->newInstance([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;)Lae/com/sun/xml/bind/api/JAXBRIContext;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;)Lae/com/sun/xml/bind/api/JAXBRIContext;
    .locals 10
    .param p0, "classes"    # [Ljava/lang/Class;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p3, "defaultNamespaceRemap"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p4, "c14nSupport"    # Z
    .param p5, "ar"    # Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Collection",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;",
            ")",
            "Lae/com/sun/xml/bind/api/JAXBRIContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .local p1, "typeRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lae/com/sun/xml/bind/api/TypeReference;>;"
    .local p2, "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    const/4 v6, 0x0

    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-static/range {v0 .. v9}, Lae/com/sun/xml/bind/v2/ContextFactory;->createContext([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;ZZZZ)Lae/com/sun/xml/bind/api/JAXBRIContext;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;ZZZZ)Lae/com/sun/xml/bind/api/JAXBRIContext;
    .locals 1
    .param p0, "classes"    # [Ljava/lang/Class;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p3, "defaultNamespaceRemap"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p4, "c14nSupport"    # Z
    .param p5, "ar"    # Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .param p6, "xmlAccessorFactorySupport"    # Z
    .param p7, "allNillable"    # Z
    .param p8, "retainPropertyInfo"    # Z
    .param p9, "supressAccessorWarnings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Collection",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;",
            "ZZZZ)",
            "Lae/com/sun/xml/bind/api/JAXBRIContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "typeRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lae/com/sun/xml/bind/api/TypeReference;>;"
    .local p2, "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    invoke-static/range {p0 .. p9}, Lae/com/sun/xml/bind/v2/ContextFactory;->createContext([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;ZZZZ)Lae/com/sun/xml/bind/api/JAXBRIContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract createBridge(Lae/com/sun/xml/bind/api/TypeReference;)Lae/com/sun/xml/bind/api/Bridge;
    .param p1    # Lae/com/sun/xml/bind/api/TypeReference;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
.end method

.method public abstract createBridgeContext()Lae/com/sun/xml/bind/api/BridgeContext;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation
.end method

.method public abstract generateEpisode(Ljavax/xml/transform/Result;)V
.end method

.method public abstract generateSchema(Lae/javax/xml/bind/SchemaOutputResolver;)V
    .param p1    # Lae/javax/xml/bind/SchemaOutputResolver;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBuildId()Ljava/lang/String;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation
.end method

.method public abstract getElementName(Ljava/lang/Class;)Ljavax/xml/namespace/QName;
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract getElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract getElementPropertyAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/api/RawAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TB;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lae/com/sun/xml/bind/api/RawAccessor",
            "<TB;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract getKnownNamespaceURIs()Ljava/util/List;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRuntimeTypeInfoSet()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
.end method

.method public abstract getTypeName(Lae/com/sun/xml/bind/api/TypeReference;)Ljavax/xml/namespace/QName;
    .param p1    # Lae/com/sun/xml/bind/api/TypeReference;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
.end method

.method public abstract hasSwaRef()Z
.end method
