.class Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;
.source "ElementPropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;


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
        "Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl",
        "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;",
        "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo",
        "<TTypeT;TClassDeclT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private isRequired:Ljava/lang/Boolean;

.field private final isValueList:Z

.field private final ref:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TTypeT;TClassDeclT;>;>;"
        }
    .end annotation
.end field

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl",
            "<TTypeT;TClassDeclT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 2
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
    .line 101
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "parent":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p2, "propertySeed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 77
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->ref:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v1, Lae/javax/xml/bind/annotation/XmlList;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isValueList:Z

    .line 105
    return-void
.end method

.method private getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    const-string v0, "\u0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 p1, 0x0

    .line 160
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected createTypeRef(Ljavax/xml/namespace/QName;Ljava/lang/Object;ZLjava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;
    .locals 6
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .param p3, "isNillable"    # Z
    .param p4, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "TTypeT;Z",
            "Ljava/lang/String;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p2, "type":Ljava/lang/Object;, "TTypeT;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;Ljavax/xml/namespace/QName;Ljava/lang/Object;ZLjava/lang/String;)V

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl",
            "<TTypeT;TClassDeclT;>;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    if-nez v11, :cond_a

    .line 109
    new-instance v11, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v11}, Lcom/sun/istack/FinalArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "ann":[Lae/javax/xml/bind/annotation/XmlElement;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v12, Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v11, v12}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lae/javax/xml/bind/annotation/XmlElement;

    .line 113
    .local v9, "xe":Lae/javax/xml/bind/annotation/XmlElement;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v12, Lae/javax/xml/bind/annotation/XmlElements;

    invoke-interface {v11, v12}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lae/javax/xml/bind/annotation/XmlElements;

    .line 115
    .local v10, "xes":Lae/javax/xml/bind/annotation/XmlElements;
    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v11, v11, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v12, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/Messages;->MUTUALLY_EXCLUSIVE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x23

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-interface {v9}, Lae/javax/xml/bind/annotation/XmlElement;->annotationType()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-interface {v10}, Lae/javax/xml/bind/annotation/XmlElements;->annotationType()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v9, v10}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v11, v12}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 123
    :cond_0
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    .line 125
    if-eqz v9, :cond_5

    .line 126
    const/4 v11, 0x1

    new-array v1, v11, [Lae/javax/xml/bind/annotation/XmlElement;

    .end local v1    # "ann":[Lae/javax/xml/bind/annotation/XmlElement;
    const/4 v11, 0x0

    aput-object v9, v1, v11

    .line 131
    .restart local v1    # "ann":[Lae/javax/xml/bind/annotation/XmlElement;
    :cond_1
    :goto_0
    if-nez v1, :cond_6

    .line 133
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v7

    .line 134
    .local v7, "t":Ljava/lang/Object;, "TTypeT;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-interface {v11, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isPrimitive(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isCollection()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 135
    :cond_2
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    .line 137
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    const/4 v11, 0x0

    check-cast v11, Lae/javax/xml/bind/annotation/XmlElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->calcXmlName(Lae/javax/xml/bind/annotation/XmlElement;)Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isCollection()Z

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7, v13, v14}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->createTypeRef(Ljavax/xml/namespace/QName;Ljava/lang/Object;ZLjava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v7    # "t":Ljava/lang/Object;, "TTypeT;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    .line 151
    sget-boolean v11, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->$assertionsDisabled:Z

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 128
    :cond_5
    if-eqz v10, :cond_1

    .line 129
    invoke-interface {v10}, Lae/javax/xml/bind/annotation/XmlElements;->value()[Lae/javax/xml/bind/annotation/XmlElement;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_6
    move-object v2, v1

    .local v2, "arr$":[Lae/javax/xml/bind/annotation/XmlElement;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v4, v2, v3

    .line 141
    .local v4, "item":Lae/javax/xml/bind/annotation/XmlElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->calcXmlName(Lae/javax/xml/bind/annotation/XmlElement;)Ljavax/xml/namespace/QName;

    move-result-object v6

    .line 142
    .local v6, "name":Ljavax/xml/namespace/QName;
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v11

    const-string v12, "type"

    invoke-interface {v11, v4, v12}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 143
    .local v8, "type":Ljava/lang/Object;, "TTypeT;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v12

    const-class v13, Lae/javax/xml/bind/annotation/XmlElement$DEFAULT;

    invoke-interface {v12, v13}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v8, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 144
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v8

    .line 145
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-interface {v11, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isPrimitive(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isCollection()Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    invoke-interface {v4}, Lae/javax/xml/bind/annotation/XmlElement;->required()Z

    move-result v11

    if-nez v11, :cond_9

    .line 146
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    .line 147
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    invoke-interface {v4}, Lae/javax/xml/bind/annotation/XmlElement;->nillable()Z

    move-result v12

    invoke-interface {v4}, Lae/javax/xml/bind/annotation/XmlElement;->defaultValue()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v12, v13}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->createTypeRef(Ljavax/xml/namespace/QName;Ljava/lang/Object;ZLjava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    .end local v1    # "ann":[Lae/javax/xml/bind/annotation/XmlElement;
    .end local v2    # "arr$":[Lae/javax/xml/bind/annotation/XmlElement;
    .end local v3    # "i$":I
    .end local v4    # "item":Lae/javax/xml/bind/annotation/XmlElement;
    .end local v5    # "len$":I
    .end local v6    # "name":Ljavax/xml/namespace/QName;
    .end local v8    # "type":Ljava/lang/Object;, "TTypeT;"
    .end local v9    # "xe":Lae/javax/xml/bind/annotation/XmlElement;
    .end local v10    # "xes":Lae/javax/xml/bind/annotation/XmlElements;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    return-object v11
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getTypes()Ljava/util/List;

    .line 177
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isRequired:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isValueList()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isValueList:Z

    return v0
.end method

.method public final kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method protected link()V
    .locals 9

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    const/4 v8, 0x0

    .line 189
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ERPropertyInfoImpl;->link()V

    .line 190
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;

    .line 191
    .local v1, "ref":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->link()V

    goto :goto_0

    .line 194
    .end local v1    # "ref":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isValueList()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v2

    sget-object v3, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-eq v2, v3, :cond_2

    .line 201
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->types:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;

    .line 202
    .restart local v1    # "ref":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->isSimpleType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLLIST_NEEDS_SIMPLETYPE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v7

    invoke-interface {v7}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getType()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 211
    .end local v1    # "ref":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    :cond_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->isCollection()Z

    move-result v2

    if-nez v2, :cond_3

    .line 212
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLLIST_ON_SINGLE_PROPERTY:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 216
    :cond_3
    return-void
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->ref()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ref()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TTypeT;TClassDeclT;>;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->ref:Ljava/util/List;

    return-object v0
.end method
