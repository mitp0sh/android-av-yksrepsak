.class abstract Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
.super Ljava/lang/Object;
.source "PropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
.implements Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl$1;
    }
.end annotation

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
        "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
        "<TT;TC;>;",
        "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
        "Ljava/lang/Comparable",
        "<",
        "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private final expectedMimeType:Ljavax/activation/MimeType;

.field private final id:Lae/com/sun/xml/bind/v2/model/core/ID;

.field private final inlineBinary:Z

.field private final isCollection:Z

.field protected final parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private final schemaType:Ljavax/xml/namespace/QName;

.field protected final seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 12
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "parent":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "spi":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    .line 100
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 102
    if-nez p1, :cond_0

    .line 110
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 112
    :cond_0
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    iget-object v8, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-static {v5, v8}, Lae/com/sun/xml/bind/v2/model/impl/Util;->calcExpectedMediaType(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;)Ljavax/activation/MimeType;

    move-result-object v1

    .line 113
    .local v1, "mt":Ljavax/activation/MimeType;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v5

    iget-boolean v5, v5, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->canHaveXmlMimeType:Z

    if-nez v5, :cond_1

    .line 114
    iget-object v5, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v8, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v9, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ILLEGAL_ANNOTATION:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v10, v7, [Ljava/lang/Object;

    const-class v11, Lae/javax/xml/bind/annotation/XmlMimeType;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v11, Lae/javax/xml/bind/annotation/XmlMimeType;

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v8}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 118
    const/4 v1, 0x0

    .line 120
    :cond_1
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->expectedMimeType:Ljavax/activation/MimeType;

    .line 121
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v8, Lae/javax/xml/bind/annotation/XmlInlineBinaryData;

    invoke-interface {v5, v8}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    iput-boolean v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->inlineBinary:Z

    .line 123
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getRawType()Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getApplicableAdapter(Ljava/lang/Object;)Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-result-object v3

    .line 127
    .local v3, "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v3, :cond_3

    .line 128
    iput-boolean v6, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isCollection:Z

    .line 129
    new-instance v5, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .line 163
    :cond_2
    :goto_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->calcId()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v5

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->id:Lae/com/sun/xml/bind/v2/model/core/ID;

    .line 164
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v5

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    iget-object v7, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v6, v7, v8, p0}, Lae/com/sun/xml/bind/v2/model/impl/Util;->calcSchemaType(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljavax/xml/namespace/QName;

    move-result-object v5

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->schemaType:Ljavax/xml/namespace/QName;

    .line 166
    return-void

    .line 133
    :cond_3
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v8

    const-class v9, Ljava/util/Collection;

    invoke-interface {v8, v9}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v2, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    invoke-interface {v5, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isArrayButNotByteArray(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isCollection:Z

    .line 136
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getApplicableAdapter(Ljava/lang/Object;)Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-result-object v3

    .line 137
    if-nez v3, :cond_7

    .line 139
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v8, Lae/javax/xml/bind/annotation/XmlAttachmentRef;

    invoke-interface {v5, v8}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lae/javax/xml/bind/annotation/XmlAttachmentRef;

    .line 140
    .local v4, "xsa":Lae/javax/xml/bind/annotation/XmlAttachmentRef;
    if-eqz v4, :cond_6

    .line 141
    iget-object v5, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iput-boolean v7, v5, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->hasSwaRef:Z

    .line 142
    new-instance v5, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    const-class v7, Lae/com/sun/xml/bind/v2/runtime/SwaRefAdapter;

    invoke-interface {v6, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    goto :goto_0

    .end local v4    # "xsa":Lae/javax/xml/bind/annotation/XmlAttachmentRef;
    :cond_5
    move v5, v6

    .line 133
    goto :goto_1

    .line 144
    .restart local v4    # "xsa":Lae/javax/xml/bind/annotation/XmlAttachmentRef;
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .line 148
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v8, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-interface {v5, v8}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    .end local v3    # "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    check-cast v3, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 149
    .restart local v3    # "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v5

    const-string v8, "value"

    invoke-interface {v5, v3, v8}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "ad":Ljava/lang/Object;, "TT;"
    iget-object v5, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v8, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v9, Lae/com/sun/xml/bind/v2/model/impl/Messages;->UNMATCHABLE_ADAPTER:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v7

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6, v3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v8}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "ad":Ljava/lang/Object;, "TT;"
    .end local v4    # "xsa":Lae/javax/xml/bind/annotation/XmlAttachmentRef;
    :cond_7
    new-instance v5, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    goto/16 :goto_0
.end method

.method private calcId()Lae/com/sun/xml/bind/v2/model/core/ID;
    .locals 6

    .prologue
    .line 271
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v1, Lae/javax/xml/bind/annotation/XmlID;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ID_MUST_BE_STRING:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-direct {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 277
    :cond_0
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    .line 282
    :goto_0
    return-object v0

    .line 279
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v1, Lae/javax/xml/bind/annotation/XmlIDREF;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    goto :goto_0

    .line 282
    :cond_2
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->NONE:Lae/com/sun/xml/bind/v2/model/core/ID;

    goto :goto_0
.end method

.method private calcXmlName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;

    .prologue
    .line 361
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-static {}, Lae/com/sun/xml/bind/v2/TODO;->checkSpec()V

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "##default"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object p2

    .line 364
    :cond_1
    const-string v2, "##default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v2

    const-class v3, Lae/javax/xml/bind/annotation/XmlSchema;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 368
    .local v1, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v1, :cond_4

    .line 369
    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl$1;->$SwitchMap$ae$javax$xml$bind$annotation$XmlNsForm:[I

    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlSchema;->elementFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v3

    invoke-virtual {v3}, Lae/javax/xml/bind/annotation/XmlNsForm;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 387
    .end local v1    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_2
    :goto_0
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 371
    .restart local v1    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :pswitch_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 372
    .local v0, "typeName":Ljavax/xml/namespace/QName;
    if-eqz v0, :cond_3

    .line 373
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    .line 376
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 377
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object p1, v2, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->defaultNsUri:Ljava/lang/String;

    goto :goto_0

    .line 375
    :cond_3
    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 381
    .end local v0    # "typeName":Ljavax/xml/namespace/QName;
    :pswitch_1
    const-string p1, ""

    goto :goto_0

    .line 384
    :cond_4
    const-string p1, ""

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getApplicableAdapter(Ljava/lang/Object;)Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v8, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-interface {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 227
    .local v2, "jta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isApplicable(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v2

    .line 250
    :cond_0
    :goto_0
    return-object v6

    .line 231
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v7

    const-class v8, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v9, v9, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v7, v8, v9, v10}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;

    .line 232
    .local v3, "jtas":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;
    if-eqz v3, :cond_2

    .line 233
    invoke-interface {v3}, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;->value()[Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-result-object v0

    .local v0, "arr$":[Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v6, v0, v1

    .line 234
    .local v6, "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    invoke-direct {p0, v6, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isApplicable(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "arr$":[Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    :cond_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v7

    const-class v8, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v9, v9, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v7, v8, v9, v10}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .end local v2    # "jta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    check-cast v2, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 239
    .restart local v2    # "jta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    invoke-direct {p0, v2, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isApplicable(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v2

    .line 240
    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    invoke-interface {v7, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 244
    .local v5, "refType":Ljava/lang/Object;, "TC;"
    if-eqz v5, :cond_4

    .line 245
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v7

    const-class v8, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v7, v8, v5, v9}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .end local v2    # "jta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    check-cast v2, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 246
    .restart local v2    # "jta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v2, :cond_4

    invoke-direct {p0, v2, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isApplicable(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v6, v2

    .line 247
    goto :goto_0

    .line 250
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isApplicable(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "jta"    # Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "declaredType":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    .line 210
    if-nez p1, :cond_1

    const/4 v4, 0x0

    .line 222
    :cond_0
    :goto_0
    return v4

    .line 212
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v5

    const-string v6, "type"

    invoke-interface {v5, p1, v6}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 213
    .local v3, "type":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    invoke-interface {v5, p2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v5

    const-string v6, "value"

    invoke-interface {v5, p1, v6}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "ad":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    const-class v7, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    invoke-interface {v6, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "ba":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    invoke-interface {v5, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isParameterizedType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "inMemType":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v4

    invoke-interface {v4, p2, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method protected final calcXmlName(Lae/javax/xml/bind/annotation/XmlElement;)Ljavax/xml/namespace/QName;
    .locals 2
    .param p1, "e"    # Lae/javax/xml/bind/annotation/XmlElement;

    .prologue
    .line 343
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    if-eqz p1, :cond_0

    .line 344
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElement;->namespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->calcXmlName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "##default"

    const-string v1, "##default"

    invoke-direct {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->calcXmlName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    goto :goto_0
.end method

.method protected final calcXmlName(Lae/javax/xml/bind/annotation/XmlElementWrapper;)Ljavax/xml/namespace/QName;
    .locals 2
    .param p1, "e"    # Lae/javax/xml/bind/annotation/XmlElementWrapper;

    .prologue
    .line 353
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    if-eqz p1, :cond_0

    .line 354
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementWrapper;->namespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementWrapper;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->calcXmlName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "##default"

    const-string v1, "##default"

    invoke-direct {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->calcXmlName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public compareTo(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I
    .locals 2
    .param p1, "that"    # Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .prologue
    .line 391
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->compareTo(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I

    move-result v0

    return v0
.end method

.method public final displayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    return-object v0
.end method

.method public final getExpectedMimeType()Ljavax/activation/MimeType;
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->expectedMimeType:Ljavax/activation/MimeType;

    return-object v0
.end method

.method public getIndividualType()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    iget-object v1, v2, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getRawType()Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, "raw":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isCollection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    invoke-interface {v2, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isArrayButNotByteArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    invoke-interface {v2, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getComponentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    const-class v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, "bt":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    invoke-interface {v2, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isParameterizedType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1

    .prologue
    .line 328
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getRawType()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSchemaType()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 295
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->schemaType:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    return-object v0
.end method

.method public final hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final id()Lae/com/sun/xml/bind/v2/model/core/ID;
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->id:Lae/com/sun/xml/bind/v2/model/core/ID;

    return-object v0
.end method

.method public final inlineBinaryData()Z
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->inlineBinary:Z

    return v0
.end method

.method public final isCollection()Z
    .locals 1

    .prologue
    .line 299
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->isCollection:Z

    return v0
.end method

.method protected link()V
    .locals 9

    .prologue
    .line 308
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->id:Lae/com/sun/xml/bind/v2/model/core/ID;

    sget-object v3, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne v2, v3, :cond_1

    .line 310
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->ref()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    .line 311
    .local v1, "ti":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<TT;TC;>;"
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/TypeInfo;->canBeReferencedByIDREF()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->INVALID_IDREF:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v7, v7, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/TypeInfo;->getType()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ti":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<TT;TC;>;"
    :cond_1
    return-void
.end method

.method protected final nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parent()Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    return-object v0
.end method

.method public final readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method protected final reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    return-object v0
.end method
