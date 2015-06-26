.class Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;
.source "AttributePropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl$1;
    }
.end annotation

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
        "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl",
        "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;",
        "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo",
        "<TTypeT;TClassDeclT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final isRequired:Z

.field private final xmlName:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 3
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
    .line 63
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "parent":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 64
    const-class v1, Lae/javax/xml/bind/annotation/XmlAttribute;

    invoke-interface {p2, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAttribute;

    .line 65
    .local v0, "att":Lae/javax/xml/bind/annotation/XmlAttribute;
    sget-boolean v1, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 67
    :cond_0
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlAttribute;->required()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->isRequired:Z

    .line 71
    :goto_0
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->calcXmlName(Lae/javax/xml/bind/annotation/XmlAttribute;)Ljavax/xml/namespace/QName;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    .line 72
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v1

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isPrimitive(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->isRequired:Z

    goto :goto_0
.end method

.method private calcXmlName(Lae/javax/xml/bind/annotation/XmlAttribute;)Ljavax/xml/namespace/QName;
    .locals 6
    .param p1, "att"    # Lae/javax/xml/bind/annotation/XmlAttribute;

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlAttribute;->namespace()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "uri":Ljava/lang/String;
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlAttribute;->name()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "local":Ljava/lang/String;
    const-string v3, "##default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    sget-object v3, Lae/com/sun/xml/bind/api/impl/NameConverter;->standard:Lae/com/sun/xml/bind/api/impl/NameConverter;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/api/impl/NameConverter;->toVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    const-string v3, "##default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v3

    const-class v4, Lae/javax/xml/bind/annotation/XmlSchema;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 88
    .local v2, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v2, :cond_2

    .line 89
    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl$1;->$SwitchMap$ae$javax$xml$bind$annotation$XmlNsForm:[I

    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlSchema;->attributeFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v4

    invoke-virtual {v4}, Lae/javax/xml/bind/annotation/XmlNsForm;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 103
    .end local v2    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_1
    :goto_0
    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 91
    .restart local v2    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :pswitch_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 93
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v3, v3, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v1, v3, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->defaultNsUri:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v1, ""

    goto :goto_0

    .line 100
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getXmlName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->isRequired:Z

    return v0
.end method

.method public final kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method
