.class Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;
.source "EnumLeafInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/Element;
.implements Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;
.implements Ljava/lang/Iterable;


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
        "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl",
        "<TT;TC;TF;TM;>;",
        "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo",
        "<TT;TC;>;",
        "Lae/com/sun/xml/bind/v2/model/core/Element",
        "<TT;TC;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
        "<TT;TC;TF;TM;>;>;"
    }
.end annotation


# instance fields
.field baseType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field final clazz:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private elementName:Ljavax/xml/namespace/QName;

.field private firstConstant:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field protected tokenStringType:Z

.field private final type:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final typeName:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            "TC;TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p3, "clazz":Ljava/lang/Object;, "TC;"
    .local p4, "type":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 109
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->clazz:Ljava/lang/Object;

    .line 110
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->type:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->parseElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->elementName:Ljavax/xml/namespace/QName;

    .line 116
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->parseTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    .line 120
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v3, Lae/javax/xml/bind/annotation/XmlEnum;

    invoke-interface {v2, v3, p3, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/annotation/XmlEnum;

    .line 121
    .local v1, "xe":Lae/javax/xml/bind/annotation/XmlEnum;
    if-eqz v1, :cond_0

    .line 122
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-string v3, "value"

    invoke-interface {v2, v1, v3}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "base":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v0, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->baseType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 127
    .end local v0    # "base":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    const-class v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->baseType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    goto :goto_0
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;)Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->firstConstant:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    return-object v0
.end method


# virtual methods
.method public asElement()Lae/com/sun/xml/bind/v2/model/core/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->isElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    .end local p0    # "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected calcConstants()V
    .locals 15

    .prologue
    .line 133
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    const/4 v6, 0x0

    .line 136
    .local v6, "last":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    iget-object v12, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v11, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getDeclaredFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 137
    .local v3, "fields":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v12

    invoke-interface {v12, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getFieldType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v13

    const-class v14, Ljava/lang/String;

    invoke-interface {v13, v14}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 139
    iget-object v11, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v11, v11, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v12, Lae/javax/xml/bind/annotation/XmlSchemaType;

    invoke-interface {v11, v12, v2, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lae/javax/xml/bind/annotation/XmlSchemaType;

    .line 140
    .local v9, "schemaTypeAnnotation":Lae/javax/xml/bind/annotation/XmlSchemaType;
    if-eqz v9, :cond_0

    .line 141
    const-string v11, "token"

    invoke-interface {v9}, Lae/javax/xml/bind/annotation/XmlSchemaType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 142
    const/4 v11, 0x1

    iput-boolean v11, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->tokenStringType:Z

    .line 148
    .end local v2    # "f":Ljava/lang/Object;, "TF;"
    .end local v9    # "schemaTypeAnnotation":Lae/javax/xml/bind/annotation/XmlSchemaType;
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    iget-object v12, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v11, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getEnumConstants(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "constants":[Ljava/lang/Object;, "[TF;"
    array-length v11, v1

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 150
    aget-object v0, v1, v4

    .line 151
    .local v0, "constant":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getFieldName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "name":Ljava/lang/String;
    iget-object v11, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v11, v11, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    const-class v12, Lae/javax/xml/bind/annotation/XmlEnumValue;

    invoke-interface {v11, v12, v0, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lae/javax/xml/bind/annotation/XmlEnumValue;

    .line 155
    .local v10, "xev":Lae/javax/xml/bind/annotation/XmlEnumValue;
    if-nez v10, :cond_2

    move-object v7, v8

    .line 158
    .local v7, "literal":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v8, v7, v0, v6}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->createEnumConstant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    move-result-object v6

    .line 149
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 156
    .end local v7    # "literal":Ljava/lang/String;
    :cond_2
    invoke-interface {v10}, Lae/javax/xml/bind/annotation/XmlEnumValue;->value()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "literal":Ljava/lang/String;
    goto :goto_1

    .line 160
    .end local v0    # "constant":Ljava/lang/Object;, "TF;"
    .end local v7    # "literal":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "xev":Lae/javax/xml/bind/annotation/XmlEnumValue;
    :cond_3
    iput-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->firstConstant:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    .line 161
    return-void
.end method

.method public final canBeReferencedByIDREF()Z
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected createEnumConstant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "literal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TF;",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;)",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    .local p3, "constant":Ljava/lang/Object;, "TF;"
    .local p4, "last":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    invoke-direct {v0, p0, p1, p2, p4}, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;Ljava/lang/String;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)V

    return-object v0
.end method

.method public getBaseType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->baseType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public getClazz()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->clazz:Ljava/lang/Object;

    return-object v0
.end method

.method public getConstants()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->firstConstant:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->calcConstants()V

    .line 213
    :cond_0
    return-object p0
.end method

.method public getElementName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->elementName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 2

    .prologue
    .line 207
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubstitutionHead()Lae/com/sun/xml/bind/v2/model/core/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->type:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 191
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public isElement()Z
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->elementName:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimpleType()Z
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isToken()Z
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->tokenStringType:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;-><init>(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;)V

    return-object v0
.end method

.method public link()V
    .locals 0

    .prologue
    .line 219
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->getConstants()Ljava/lang/Iterable;

    .line 220
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->link()V

    .line 221
    return-void
.end method
