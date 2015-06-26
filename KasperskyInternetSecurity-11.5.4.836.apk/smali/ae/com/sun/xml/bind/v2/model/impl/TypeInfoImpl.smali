.class abstract Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;
.super Ljava/lang/Object;
.source "TypeInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
.implements Lae/com/sun/xml/bind/v2/model/core/TypeInfo;


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
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
        "<TTypeT;TClassDeclT;>;",
        "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;"
    }
.end annotation


# instance fields
.field protected builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
        }
    .end annotation
.end field

.field protected final owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
        }
    .end annotation
.end field

.field private final upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V
    .locals 1
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    .line 86
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->typeInfoSet:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    .line 87
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .line 88
    return-void
.end method


# virtual methods
.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    return-object v0
.end method

.method link()V
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    .line 96
    return-void
.end method

.method protected final nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    return-object v0
.end method

.method protected final parseElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClassDeclT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "clazz":Ljava/lang/Object;, "TClassDeclT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v4

    const-class v5, Lae/javax/xml/bind/annotation/XmlRootElement;

    invoke-interface {v4, v5, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlRootElement;

    .line 115
    .local v0, "e":Lae/javax/xml/bind/annotation/XmlRootElement;
    if-nez v0, :cond_0

    .line 116
    const/4 v4, 0x0

    .line 134
    :goto_0
    return-object v4

    .line 118
    :cond_0
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlRootElement;->name()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "local":Ljava/lang/String;
    const-string v4, "##default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    sget-object v4, Lae/com/sun/xml/bind/api/impl/NameConverter;->standard:Lae/com/sun/xml/bind/api/impl/NameConverter;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    invoke-interface {v5, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassShortName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lae/com/sun/xml/bind/api/impl/NameConverter;->toVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_1
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlRootElement;->namespace()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "nsUri":Ljava/lang/String;
    const-string v4, "##default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v4

    const-class v5, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v4, v5, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 127
    .local v3, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v3, :cond_3

    .line 128
    invoke-interface {v3}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v2

    .line 134
    .end local v3    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_2
    :goto_1
    new-instance v4, Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .restart local v3    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_3
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v2, v4, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->defaultNsUri:Ljava/lang/String;

    goto :goto_1
.end method

.method protected final parseTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClassDeclT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "clazz":Ljava/lang/Object;, "TClassDeclT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    const-class v1, Lae/javax/xml/bind/annotation/XmlType;

    invoke-interface {v0, v1, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlType;

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->parseTypeName(Ljava/lang/Object;Lae/javax/xml/bind/annotation/XmlType;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method protected final parseTypeName(Ljava/lang/Object;Lae/javax/xml/bind/annotation/XmlType;)Ljavax/xml/namespace/QName;
    .locals 6
    .param p2, "t"    # Lae/javax/xml/bind/annotation/XmlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClassDeclT;",
            "Lae/javax/xml/bind/annotation/XmlType;",
            ")",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "clazz":Ljava/lang/Object;, "TClassDeclT;"
    const-string v1, "##default"

    .line 154
    .local v1, "nsUri":Ljava/lang/String;
    const-string v0, "##default"

    .line 155
    .local v0, "local":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 156
    invoke-interface {p2}, Lae/javax/xml/bind/annotation/XmlType;->namespace()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-interface {p2}, Lae/javax/xml/bind/annotation/XmlType;->name()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 161
    const/4 v3, 0x0

    .line 178
    :goto_0
    return-object v3

    .line 164
    :cond_1
    const-string v3, "##default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    sget-object v3, Lae/com/sun/xml/bind/api/impl/NameConverter;->standard:Lae/com/sun/xml/bind/api/impl/NameConverter;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v4

    invoke-interface {v4, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassShortName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/api/impl/NameConverter;->toVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_2
    const-string v3, "##default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v3

    const-class v4, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v3, v4, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 171
    .local v2, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v2, :cond_4

    .line 172
    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v1

    .line 178
    .end local v2    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_3
    :goto_1
    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .restart local v2    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_4
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v1, v3, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->defaultNsUri:Ljava/lang/String;

    goto :goto_1
.end method

.method protected final reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    return-object v0
.end method
