.class abstract Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
.source "ERPropertyInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeT:",
        "Ljava/lang/Object;",
        "ClassDeclT:",
        "Ljava/lang/Object;",
        "FieldT:",
        "Ljava/lang/Object;",
        "MethodT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl",
        "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    }
.end annotation


# instance fields
.field private final wrapperNillable:Z

.field private final wrapperRequired:Z

.field private final xmlName:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "classInfo":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p2, "propertySeed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    const/4 v5, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 59
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v4, Lae/javax/xml/bind/annotation/XmlElementWrapper;

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlElementWrapper;

    .line 61
    .local v0, "e":Lae/javax/xml/bind/annotation/XmlElementWrapper;
    const/4 v1, 0x0

    .line 62
    .local v1, "nil":Z
    const/4 v2, 0x0

    .line 63
    .local v2, "required":Z
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->isCollection()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-object v3, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v5, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XML_ELEMENT_WRAPPER_ON_NON_COLLECTION:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v10}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v9}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 80
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->wrapperNillable:Z

    .line 81
    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->wrapperRequired:Z

    .line 82
    return-void

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->calcXmlName(Lae/javax/xml/bind/annotation/XmlElementWrapper;)Ljavax/xml/namespace/QName;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    .line 74
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElementWrapper;->nillable()Z

    move-result v1

    .line 75
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlElementWrapper;->required()Z

    move-result v2

    goto :goto_0

    .line 77
    :cond_2
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    goto :goto_0
.end method


# virtual methods
.method public final getXmlName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public final isCollectionNillable()Z
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->wrapperNillable:Z

    return v0
.end method

.method public final isCollectionRequired()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->wrapperRequired:Z

    return v0
.end method
