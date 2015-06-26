.class public Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;
.source "ClassInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
.implements Lae/com/sun/xml/bind/v2/model/core/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;,
        Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;,
        Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;,
        Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;,
        Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;,
        Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;
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
        "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl",
        "<TT;TC;TF;TM;>;",
        "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
        "<TT;TC;>;",
        "Lae/com/sun/xml/bind/v2/model/core/Element",
        "<TT;TC;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANNOTATION_NUMBER_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ORDER:[Ljava/lang/String;

.field private static final EMPTY_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field private static final SECONDARY_ANNOTATIONS:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;


# instance fields
.field protected attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private baseClass:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private baseClassComputed:Z

.field protected final clazz:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final elementName:Ljavax/xml/namespace/QName;

.field private factoryMethod:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private hasSubClasses:Z

.field private propOrder:[Ljava/lang/String;

.field private properties:Lcom/sun/istack/FinalArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/istack/FinalArrayList",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private final typeName:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 108
    const-class v12, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v12}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v12

    if-nez v12, :cond_0

    move v12, v13

    :goto_0
    sput-boolean v12, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->$assertionsDisabled:Z

    .line 632
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->values()[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    move-result-object v12

    sput-object v12, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->SECONDARY_ANNOTATIONS:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .line 671
    new-array v12, v14, [Ljava/lang/annotation/Annotation;

    sput-object v12, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->EMPTY_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 676
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->ANNOTATION_NUMBER_MAP:Ljava/util/HashMap;

    .line 678
    const/16 v12, 0xb

    new-array v0, v12, [Ljava/lang/Class;

    const-class v12, Lae/javax/xml/bind/annotation/XmlTransient;

    aput-object v12, v0, v14

    const-class v12, Lae/javax/xml/bind/annotation/XmlAnyAttribute;

    aput-object v12, v0, v13

    const/4 v12, 0x2

    const-class v13, Lae/javax/xml/bind/annotation/XmlAttribute;

    aput-object v13, v0, v12

    const/4 v12, 0x3

    const-class v13, Lae/javax/xml/bind/annotation/XmlValue;

    aput-object v13, v0, v12

    const/4 v12, 0x4

    const-class v13, Lae/javax/xml/bind/annotation/XmlElement;

    aput-object v13, v0, v12

    const/4 v12, 0x5

    const-class v13, Lae/javax/xml/bind/annotation/XmlElements;

    aput-object v13, v0, v12

    const/4 v12, 0x6

    const-class v13, Lae/javax/xml/bind/annotation/XmlElementRef;

    aput-object v13, v0, v12

    const/4 v12, 0x7

    const-class v13, Lae/javax/xml/bind/annotation/XmlElementRefs;

    aput-object v13, v0, v12

    const/16 v12, 0x8

    const-class v13, Lae/javax/xml/bind/annotation/XmlAnyElement;

    aput-object v13, v0, v12

    const/16 v12, 0x9

    const-class v13, Lae/javax/xml/bind/annotation/XmlMixed;

    aput-object v13, v0, v12

    const/16 v12, 0xa

    const-class v13, Lae/com/sun/xml/bind/annotation/OverrideAnnotationOf;

    aput-object v13, v0, v12

    .line 692
    .local v0, "annotations":[Ljava/lang/Class;
    sget-object v9, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->ANNOTATION_NUMBER_MAP:Ljava/util/HashMap;

    .line 695
    .local v9, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v3, v1, v4

    .line 696
    .local v3, "c":Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "annotations":[Ljava/lang/Class;
    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v3    # "c":Ljava/lang/Class;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    :cond_0
    move v12, v14

    .line 108
    goto :goto_0

    .line 699
    .restart local v0    # "annotations":[Ljava/lang/Class;
    .restart local v1    # "arr$":[Ljava/lang/Class;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v6, 0x14

    .line 700
    .local v6, "index":I
    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->SECONDARY_ANNOTATIONS:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .local v1, "arr$":[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    array-length v7, v1

    const/4 v4, 0x0

    move v5, v4

    .end local v1    # "arr$":[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v11, v1, v5

    .line 701
    .local v11, "sa":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    iget-object v2, v11, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->members:[Ljava/lang/Class;

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v8, :cond_2

    aget-object v10, v2, v4

    .line 702
    .local v10, "member":Ljava/lang/Class;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 703
    .end local v10    # "member":Ljava/lang/Class;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 700
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_2

    .line 1335
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v8    # "len$":I
    .end local v11    # "sa":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    :cond_3
    new-array v12, v14, [Ljava/lang/String;

    sput-object v12, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->DEFAULT_ORDER:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V
    .locals 9
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p3, "clazz":Ljava/lang/Object;, "TC;"
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 165
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 146
    iput-boolean v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClassComputed:Z

    .line 148
    iput-boolean v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasSubClasses:Z

    .line 162
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->factoryMethod:Ljava/lang/Object;

    .line 166
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    .line 167
    sget-boolean v3, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 170
    :cond_0
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->parseElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->elementName:Ljavax/xml/namespace/QName;

    .line 173
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v3

    const-class v4, Lae/javax/xml/bind/annotation/XmlType;

    invoke-interface {v3, v4, p3, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/annotation/XmlType;

    .line 174
    .local v1, "t":Lae/javax/xml/bind/annotation/XmlType;
    invoke-virtual {p0, p3, v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->parseTypeName(Ljava/lang/Object;Lae/javax/xml/bind/annotation/XmlType;)Ljavax/xml/namespace/QName;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    .line 176
    if-eqz v1, :cond_7

    .line 177
    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlType;->propOrder()[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "propOrder":[Ljava/lang/String;
    array-length v3, v0

    if-nez v3, :cond_5

    .line 179
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    .line 192
    .end local v0    # "propOrder":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v3

    const-class v4, Lae/javax/xml/bind/annotation/XmlAccessorOrder;

    invoke-interface {v3, v4, p3, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/XmlAccessorOrder;

    .line 193
    .local v2, "xao":Lae/javax/xml/bind/annotation/XmlAccessorOrder;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlAccessorOrder;->value()Lae/javax/xml/bind/annotation/XmlAccessOrder;

    move-result-object v3

    sget-object v4, Lae/javax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    if-ne v3, v4, :cond_1

    .line 194
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    .line 198
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v3

    const-class v4, Lae/javax/xml/bind/annotation/XmlAccessorOrder;

    invoke-interface {v3, v4, p3, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .end local v2    # "xao":Lae/javax/xml/bind/annotation/XmlAccessorOrder;
    check-cast v2, Lae/javax/xml/bind/annotation/XmlAccessorOrder;

    .line 199
    .restart local v2    # "xao":Lae/javax/xml/bind/annotation/XmlAccessorOrder;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlAccessorOrder;->value()Lae/javax/xml/bind/annotation/XmlAccessOrder;

    move-result-object v3

    sget-object v4, Lae/javax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    if-ne v3, v4, :cond_2

    .line 200
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    .line 203
    :cond_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    invoke-interface {v3, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isInterface(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->CANT_HANDLE_INTERFACE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {p1, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 209
    :cond_3
    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasFactoryConstructor(Lae/javax/xml/bind/annotation/XmlType;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 210
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    invoke-interface {v3, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->hasDefaultConstructor(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 211
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    invoke-interface {v3, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isInnerClass(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 212
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->CANT_HANDLE_INNER_CLASS:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {p1, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 220
    :cond_4
    :goto_1
    return-void

    .line 181
    .end local v2    # "xao":Lae/javax/xml/bind/annotation/XmlAccessorOrder;
    .restart local v0    # "propOrder":[Ljava/lang/String;
    :cond_5
    aget-object v3, v0, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 182
    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->DEFAULT_ORDER:[Ljava/lang/String;

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    goto/16 :goto_0

    .line 184
    :cond_6
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    goto/16 :goto_0

    .line 187
    .end local v0    # "propOrder":[Ljava/lang/String;
    :cond_7
    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->DEFAULT_ORDER:[Ljava/lang/String;

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    goto/16 :goto_0

    .line 214
    .restart local v2    # "xao":Lae/javax/xml/bind/annotation/XmlAccessorOrder;
    :cond_8
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->elementName:Ljavax/xml/namespace/QName;

    if-eqz v3, :cond_4

    .line 215
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->NO_DEFAULT_CONSTRUCTOR:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {p1, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .prologue
    .line 108
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)Lcom/sun/istack/FinalArrayList;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .prologue
    .line 108
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    return-object v0
.end method

.method static synthetic access$300()[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->SECONDARY_ANNOTATIONS:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    return-object v0
.end method

.method private addProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;[Ljava/lang/annotation/Annotation;Z)V
    .locals 40
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;[",
            "Ljava/lang/annotation/Annotation;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    const/16 v28, 0x0

    .line 734
    .local v28, "t":Lae/javax/xml/bind/annotation/XmlTransient;
    const/4 v5, 0x0

    .line 735
    .local v5, "aa":Lae/javax/xml/bind/annotation/XmlAnyAttribute;
    const/4 v4, 0x0

    .line 736
    .local v4, "a":Lae/javax/xml/bind/annotation/XmlAttribute;
    const/16 v29, 0x0

    .line 737
    .local v29, "v":Lae/javax/xml/bind/annotation/XmlValue;
    const/4 v10, 0x0

    .line 738
    .local v10, "e1":Lae/javax/xml/bind/annotation/XmlElement;
    const/4 v11, 0x0

    .line 739
    .local v11, "e2":Lae/javax/xml/bind/annotation/XmlElements;
    const/16 v24, 0x0

    .line 740
    .local v24, "r1":Lae/javax/xml/bind/annotation/XmlElementRef;
    const/16 v25, 0x0

    .line 741
    .local v25, "r2":Lae/javax/xml/bind/annotation/XmlElementRefs;
    const/16 v31, 0x0

    .line 742
    .local v31, "xae":Lae/javax/xml/bind/annotation/XmlAnyElement;
    const/16 v21, 0x0

    .line 743
    .local v21, "mx":Lae/javax/xml/bind/annotation/XmlMixed;
    const/16 v23, 0x0

    .line 746
    .local v23, "ov":Lae/com/sun/xml/bind/annotation/OverrideAnnotationOf;
    const/16 v27, 0x0

    .line 749
    .local v27, "secondaryAnnotations":I
    move-object/from16 v7, p2

    .local v7, "arr$":[Ljava/lang/annotation/Annotation;
    :try_start_0
    array-length v0, v7

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    aget-object v6, v7, v15

    .line 750
    .local v6, "ann":Ljava/lang/annotation/Annotation;
    sget-object v32, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->ANNOTATION_NUMBER_MAP:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 751
    .local v17, "index":Ljava/lang/Integer;
    if-nez v17, :cond_0

    .line 749
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 766
    const/16 v32, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v33

    add-int/lit8 v33, v33, -0x14

    shl-int v32, v32, v33

    or-int v27, v27, v32

    goto :goto_1

    .line 753
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlTransient;

    move-object/from16 v28, v0

    goto :goto_1

    .line 754
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAnyAttribute;

    move-object v5, v0

    goto :goto_1

    .line 755
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAttribute;

    move-object v4, v0

    goto :goto_1

    .line 756
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlValue;

    move-object/from16 v29, v0

    goto :goto_1

    .line 757
    :pswitch_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlElement;

    move-object v10, v0

    goto :goto_1

    .line 758
    :pswitch_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlElements;

    move-object v11, v0

    goto :goto_1

    .line 759
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlElementRef;

    move-object/from16 v24, v0

    goto :goto_1

    .line 760
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlElementRefs;

    move-object/from16 v25, v0

    goto :goto_1

    .line 761
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAnyElement;

    move-object/from16 v31, v0

    goto :goto_1

    .line 762
    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/javax/xml/bind/annotation/XmlMixed;

    move-object/from16 v21, v0

    goto/16 :goto_1

    .line 763
    :pswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lae/com/sun/xml/bind/annotation/OverrideAnnotationOf;

    move-object/from16 v23, v0

    goto/16 :goto_1

    .line 773
    .end local v6    # "ann":Ljava/lang/annotation/Annotation;
    .end local v17    # "index":Ljava/lang/Integer;
    :cond_1
    const/4 v13, 0x0

    .line 774
    .local v13, "group":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
    const/4 v14, 0x0

    .line 776
    .local v14, "groupCount":I
    if-eqz v28, :cond_2

    .line 777
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->TRANSIENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 778
    add-int/lit8 v14, v14, 0x1

    .line 780
    :cond_2
    if-eqz v5, :cond_3

    .line 781
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ANY_ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 782
    add-int/lit8 v14, v14, 0x1

    .line 784
    :cond_3
    if-eqz v4, :cond_4

    .line 785
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 786
    add-int/lit8 v14, v14, 0x1

    .line 788
    :cond_4
    if-eqz v29, :cond_5

    .line 789
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->VALUE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 790
    add-int/lit8 v14, v14, 0x1

    .line 792
    :cond_5
    if-nez v10, :cond_6

    if-eqz v11, :cond_7

    .line 793
    :cond_6
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 794
    add-int/lit8 v14, v14, 0x1

    .line 796
    :cond_7
    if-nez v24, :cond_8

    if-nez v25, :cond_8

    if-nez v31, :cond_8

    if-nez v21, :cond_8

    if-eqz v23, :cond_9

    .line 797
    :cond_8
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT_REF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 798
    add-int/lit8 v14, v14, 0x1

    .line 801
    :cond_9
    const/16 v32, 0x1

    move/from16 v0, v32

    if-le v14, v0, :cond_b

    .line 803
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    move-object/from16 v33, v0

    const/16 v32, 0x0

    aput-object v28, v33, v32

    const/16 v32, 0x1

    aput-object v5, v33, v32

    const/16 v32, 0x2

    aput-object v4, v33, v32

    const/16 v32, 0x3

    aput-object v29, v33, v32

    const/16 v34, 0x4

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    move-object/from16 v32, v0

    const/16 v35, 0x0

    aput-object v10, v32, v35

    const/16 v35, 0x1

    aput-object v11, v32, v35

    invoke-static/range {v32 .. v32}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->pickOne([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/annotation/Annotation;

    aput-object v32, v33, v34

    const/16 v34, 0x5

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    move-object/from16 v32, v0

    const/16 v35, 0x0

    aput-object v24, v32, v35

    const/16 v35, 0x1

    aput-object v25, v32, v35

    const/16 v35, 0x2

    aput-object v31, v32, v35

    invoke-static/range {v32 .. v32}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->pickOne([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/annotation/Annotation;

    aput-object v32, v33, v34

    invoke-static/range {v33 .. v33}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->makeSet([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 804
    .local v12, "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    new-instance v32, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;

    move-object/from16 v0, v32

    invoke-direct {v0, v12}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;-><init>(Ljava/util/List;)V

    throw v32
    :try_end_0
    .catch Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 894
    .end local v7    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v12    # "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    .end local v13    # "group":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
    .end local v14    # "groupCount":I
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    :catch_0
    move-exception v30

    .line 896
    .local v30, "x":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;
    move-object/from16 v0, v30

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;->annotations:Ljava/util/List;

    .line 898
    .restart local v12    # "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v34, v0

    new-instance v35, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v33, Lae/com/sun/xml/bind/v2/model/impl/Messages;->MUTUALLY_EXCLUSIVE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v32, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x23

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v36, v32

    const/16 v37, 0x1

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/annotation/Annotation;

    invoke-interface/range {v32 .. v32}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v36, v37

    const/16 v37, 0x2

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/annotation/Annotation;

    invoke-interface/range {v32 .. v32}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v36, v37

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/annotation/Annotation;

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/annotation/Annotation;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    invoke-virtual/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 913
    .end local v12    # "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    .end local v30    # "x":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;
    :cond_a
    :goto_2
    :pswitch_b
    return-void

    .line 807
    .restart local v7    # "arr$":[Ljava/lang/annotation/Annotation;
    .restart local v13    # "group":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
    .restart local v14    # "groupCount":I
    .restart local v15    # "i$":I
    .restart local v18    # "len$":I
    :cond_b
    if-nez v13, :cond_10

    .line 810
    :try_start_1
    sget-boolean v32, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->$assertionsDisabled:Z

    if-nez v32, :cond_c

    if-eqz v14, :cond_c

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32
    :try_end_1
    .catch Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    .end local v7    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v13    # "group":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
    .end local v14    # "groupCount":I
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    :catch_1
    move-exception v9

    .line 907
    .local v9, "e":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v32, v0

    new-instance v33, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v34, Lae/com/sun/xml/bind/v2/model/impl/Messages;->DUPLICATE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    iget-object v0, v9, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;->a1:Ljava/lang/annotation/Annotation;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-virtual/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    iget-object v0, v9, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;->a1:Ljava/lang/annotation/Annotation;

    move-object/from16 v35, v0

    iget-object v0, v9, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;->a2:Ljava/lang/annotation/Annotation;

    move-object/from16 v36, v0

    invoke-direct/range {v33 .. v36}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    invoke-virtual/range {v32 .. v33}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_2

    .line 813
    .end local v9    # "e":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;
    .restart local v7    # "arr$":[Ljava/lang/annotation/Annotation;
    .restart local v13    # "group":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
    .restart local v14    # "groupCount":I
    .restart local v15    # "i$":I
    .restart local v18    # "len$":I
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v32

    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getRawType()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v34

    const-class v35, Ljava/util/Map;

    invoke-interface/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    const-class v32, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v32

    if-nez v32, :cond_f

    .line 815
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->MAP:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 826
    :cond_d
    :goto_3
    iget v0, v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->allowedsecondaryAnnotations:I

    move/from16 v32, v0

    and-int v32, v32, v27

    if-eqz v32, :cond_14

    .line 828
    sget-object v7, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->SECONDARY_ANNOTATIONS:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .local v7, "arr$":[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    array-length v0, v7

    move/from16 v18, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    .end local v7    # "arr$":[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .local v16, "i$":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    aget-object v26, v7, v16

    .line 829
    .local v26, "sa":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->allows(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 828
    .end local v16    # "i$":I
    :cond_e
    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "i$":I
    move/from16 v16, v15

    .end local v15    # "i$":I
    .restart local v16    # "i$":I
    goto :goto_4

    .line 817
    .end local v16    # "i$":I
    .end local v26    # "sa":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    .local v7, "arr$":[Ljava/lang/annotation/Annotation;
    .restart local v15    # "i$":I
    .restart local v18    # "len$":I
    :cond_f
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    goto :goto_3

    .line 818
    :cond_10
    sget-object v32, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 819
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v32

    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getRawType()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v34

    const-class v35, Ljava/util/Map;

    invoke-interface/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    const-class v32, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v32

    if-nez v32, :cond_d

    .line 820
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->MAP:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    goto :goto_3

    .line 831
    .end local v7    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .restart local v16    # "i$":I
    .restart local v26    # "sa":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    :cond_11
    move-object/from16 v0, v26

    iget-object v8, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->members:[Ljava/lang/Class;

    .local v8, "arr$":[Ljava/lang/Class;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v15, 0x0

    .end local v16    # "i$":I
    .restart local v15    # "i$":I
    :goto_5
    move/from16 v0, v19

    if-ge v15, v0, :cond_e

    aget-object v20, v8, v15

    .line 832
    .local v20, "m":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v22

    .line 833
    .local v22, "offender":Ljava/lang/annotation/Annotation;
    if-eqz v22, :cond_12

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v32, v0

    new-instance v33, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v34, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ANNOTATION_NOT_ALLOWED:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-virtual/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual/range {v32 .. v33}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_2

    .line 831
    :cond_12
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 842
    .end local v8    # "arr$":[Ljava/lang/Class;
    .end local v15    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "m":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v22    # "offender":Ljava/lang/annotation/Annotation;
    .end local v26    # "sa":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    .restart local v16    # "i$":I
    :cond_13
    sget-boolean v32, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->$assertionsDisabled:Z

    if-nez v32, :cond_14

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 846
    .end local v16    # "i$":I
    :cond_14
    sget-object v32, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    invoke-virtual {v13}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v33

    aget v32, v32, v33

    packed-switch v32, :pswitch_data_1

    .line 892
    sget-boolean v32, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->$assertionsDisabled:Z

    if-nez v32, :cond_a

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 851
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v32, v0

    if-eqz v32, :cond_15

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v32, v0

    new-instance v33, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v34, Lae/com/sun/xml/bind/v2/model/impl/Messages;->TWO_ATTRIBUTE_WILDCARDS:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClazz()Ljava/lang/Object;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-virtual/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v5, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v32 .. v33}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_2

    .line 857
    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    .line 859
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->inheritsAttributeWildcard()Z

    move-result v32

    if-eqz v32, :cond_16

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v32, v0

    new-instance v33, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v34, Lae/com/sun/xml/bind/v2/model/impl/Messages;->SUPER_CLASS_HAS_WILDCARD:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getInheritedAttributeWildcard()Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v5, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v32 .. v33}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_2

    .line 867
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v32

    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getRawType()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v34

    const-class v35, Ljava/util/Map;

    invoke-interface/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_a

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v32, v0

    new-instance v33, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v34, Lae/com/sun/xml/bind/v2/model/impl/Messages;->INVALID_ATTRIBUTE_WILDCARD_TYPE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v37

    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getRawType()Ljava/lang/Object;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-virtual/range {v34 .. v35}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getInheritedAttributeWildcard()Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v5, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v32 .. v33}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_2

    .line 877
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createAttributeProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 880
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createValueProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 883
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createElementProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 886
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createReferenceProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 889
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createMapProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 846
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private checkConflict(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .param p2, "b"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;
        }
    .end annotation

    .prologue
    .line 708
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 709
    :cond_0
    if-eqz p1, :cond_1

    .line 710
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;

    invoke-direct {v0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V

    throw v0

    .line 711
    :cond_1
    return-void
.end method

.method private collectGetterSetters(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TM;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TM;>;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "c":Ljava/lang/Object;, "TC;"
    .local p2, "getters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TM;>;"
    .local p3, "setters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TM;>;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1031
    .local v17, "sc":Ljava/lang/Object;, "TC;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->shouldRecurseSuperClass(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1032
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->collectGetterSetters(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V

    .line 1034
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getDeclaredMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v13

    .line 1035
    .local v13, "methods":Ljava/util/Collection;, "Ljava/util/Collection<+TM;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1036
    .local v4, "allSetters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<TM;>;>;"
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1037
    .local v12, "method":Ljava/lang/Object;, "TM;"
    const/16 v20, 0x0

    .line 1039
    .local v20, "used":Z
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isBridgeMethod(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1043
    .local v14, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v5, v0

    .line 1045
    .local v5, "arity":I
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isStaticMethod(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1046
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->ensureNoAnnotation(Ljava/lang/Object;)V

    goto :goto_0

    .line 1051
    :cond_2
    invoke-static {v14}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getPropertyNameFromGetMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1052
    .local v15, "propName":Ljava/lang/String;
    if-eqz v15, :cond_3

    if-nez v5, :cond_3

    .line 1053
    move-object/from16 v0, p2

    invoke-interface {v0, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    const/16 v20, 0x1

    .line 1058
    :cond_3
    invoke-static {v14}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getPropertyNameFromSetMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1059
    if-eqz v15, :cond_5

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_5

    .line 1060
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 1061
    .local v16, "propSetters":Ljava/util/List;, "Ljava/util/List<TM;>;"
    if-nez v16, :cond_4

    .line 1062
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "propSetters":Ljava/util/List;, "Ljava/util/List<TM;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    .restart local v16    # "propSetters":Ljava/util/List;, "Ljava/util/List<TM;>;"
    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    const/16 v20, 0x1

    .line 1069
    .end local v16    # "propSetters":Ljava/util/List;, "Ljava/util/List<TM;>;"
    :cond_5
    if-nez v20, :cond_1

    .line 1070
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->ensureNoAnnotation(Ljava/lang/Object;)V

    goto :goto_0

    .line 1074
    .end local v5    # "arity":I
    .end local v12    # "method":Ljava/lang/Object;, "TM;"
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "propName":Ljava/lang/String;
    .end local v20    # "used":Z
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1075
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TM;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1076
    .restart local v15    # "propName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 1077
    .local v8, "getter":Ljava/lang/Object;, "TM;"
    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 1078
    .restart local v16    # "propSetters":Ljava/util/List;, "Ljava/util/List<TM;>;"
    if-eqz v16, :cond_7

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1083
    .local v9, "getterType":Ljava/lang/Object;, "TT;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 1084
    .local v18, "setter":Ljava/lang/Object;, "TM;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v19, v21, v22

    .line 1085
    .local v19, "setterType":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1086
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1093
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TM;>;"
    .end local v8    # "getter":Ljava/lang/Object;, "TM;"
    .end local v9    # "getterType":Ljava/lang/Object;, "TT;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "propName":Ljava/lang/String;
    .end local v16    # "propSetters":Ljava/util/List;, "Ljava/util/List<TM;>;"
    .end local v18    # "setter":Ljava/lang/Object;, "TM;"
    .end local v19    # "setterType":Ljava/lang/Object;, "TT;"
    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1094
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<TM;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1096
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<TM;>;>;"
    :cond_a
    return-void
.end method

.method private ensureNoAnnotation(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "method":Ljava/lang/Object;, "TM;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v5

    invoke-interface {v5, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getAllMethodAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 1132
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 1133
    .local v0, "a":Ljava/lang/annotation/Annotation;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->isJAXBAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1134
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v7, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ANNOTATION_ON_WRONG_METHOD:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 1140
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    return-void

    .line 1132
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private findFieldProperties(Ljava/lang/Object;Lae/javax/xml/bind/annotation/XmlAccessType;)V
    .locals 15
    .param p2, "at"    # Lae/javax/xml/bind/annotation/XmlAccessType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lae/javax/xml/bind/annotation/XmlAccessType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "c":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 377
    .local v6, "sc":Ljava/lang/Object;, "TC;"
    invoke-direct {p0, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->shouldRecurseSuperClass(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 378
    move-object/from16 v0, p2

    invoke-direct {p0, v6, v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->findFieldProperties(Ljava/lang/Object;Lae/javax/xml/bind/annotation/XmlAccessType;)V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getDeclaredFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 382
    .local v2, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    invoke-interface {v9, v2, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getAllFieldAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 383
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    const-class v10, Lae/com/sun/xml/bind/annotation/OverrideAnnotationOf;

    invoke-interface {v9, v10, v2}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v4

    .line 385
    .local v4, "isDummy":Z
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    invoke-interface {v9, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isTransient(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 387
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasJAXBAnnotation([Ljava/lang/annotation/Annotation;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 388
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v10, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v11, Lae/com/sun/xml/bind/v2/model/impl/Messages;->TRANSIENT_FIELD_NOT_BINDABLE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v14

    invoke-interface {v14, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getFieldName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getSomeJAXBAnnotation([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    invoke-interface {v9, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isStaticField(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 394
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasJAXBAnnotation([Ljava/lang/annotation/Annotation;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 395
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createFieldSeed(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v1, v10}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->addProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;[Ljava/lang/annotation/Annotation;Z)V

    goto :goto_0

    .line 397
    :cond_3
    sget-object v9, Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;

    move-object/from16 v0, p2

    if-eq v0, v9, :cond_5

    sget-object v9, Lae/javax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Lae/javax/xml/bind/annotation/XmlAccessType;

    move-object/from16 v0, p2

    if-ne v0, v9, :cond_4

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    invoke-interface {v9, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isPublicField(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasJAXBAnnotation([Ljava/lang/annotation/Annotation;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 400
    :cond_5
    if-eqz v4, :cond_8

    .line 401
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v8

    .line 402
    .local v8, "top":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    :goto_1
    if-eqz v8, :cond_6

    const-string v9, "content"

    invoke-interface {v8, v9}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v9

    if-nez v9, :cond_6

    .line 403
    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getBaseClass()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v8

    goto :goto_1

    .line 405
    :cond_6
    const-string v9, "content"

    invoke-interface {v8, v9}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v5

    check-cast v5, Lae/com/sun/xml/bind/v2/model/impl/DummyPropertyInfo;

    .line 406
    .local v5, "prop":Lae/com/sun/xml/bind/v2/model/impl/DummyPropertyInfo;
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createFieldSeed(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v7

    .line 407
    .local v7, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    invoke-virtual {p0, v7}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createReferenceProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;

    move-result-object v9

    invoke-interface {v5, v9}, Lae/com/sun/xml/bind/v2/model/impl/DummyPropertyInfo;->addType(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)V

    .line 412
    .end local v5    # "prop":Lae/com/sun/xml/bind/v2/model/impl/DummyPropertyInfo;
    .end local v7    # "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .end local v8    # "top":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->checkFieldXmlLocation(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 409
    :cond_8
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createFieldSeed(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v1, v10}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->addProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;[Ljava/lang/annotation/Annotation;Z)V

    goto :goto_2

    .line 415
    .end local v1    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v2    # "f":Ljava/lang/Object;, "TF;"
    .end local v4    # "isDummy":Z
    :cond_9
    return-void
.end method

.method private findGetterSetterProperties(Lae/javax/xml/bind/annotation/XmlAccessType;)V
    .locals 24
    .param p1, "at"    # Lae/javax/xml/bind/annotation/XmlAccessType;

    .prologue
    .line 942
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 943
    .local v7, "getters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TM;>;"
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 945
    .local v15, "setters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TM;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    .line 947
    .local v3, "c":Ljava/lang/Object;, "TC;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7, v15}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->collectGetterSetters(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 951
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->shouldRecurseSuperClass(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 955
    new-instance v4, Ljava/util/TreeSet;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 956
    .local v4, "complete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 958
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->resurrect(Ljava/util/Map;Ljava/util/Set;)V

    .line 959
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->resurrect(Ljava/util/Map;Ljava/util/Set;)V

    .line 962
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 963
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 964
    .local v6, "getter":Ljava/lang/Object;, "TM;"
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 966
    .local v14, "setter":Ljava/lang/Object;, "TM;"
    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v16

    new-instance v17, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v6, v1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getAllMethodAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 967
    .local v5, "ga":[Ljava/lang/annotation/Annotation;
    :goto_1
    if-eqz v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v16

    new-instance v17, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getAllMethodAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;

    move-result-object v13

    .line 969
    .local v13, "sa":[Ljava/lang/annotation/Annotation;
    :goto_2
    invoke-static {v5}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasJAXBAnnotation([Ljava/lang/annotation/Annotation;)Z

    move-result v16

    if-nez v16, :cond_2

    invoke-static {v13}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasJAXBAnnotation([Ljava/lang/annotation/Annotation;)Z

    move-result v16

    if-eqz v16, :cond_9

    :cond_2
    const/4 v8, 0x1

    .line 970
    .local v8, "hasAnnotation":Z
    :goto_3
    const/4 v10, 0x0

    .line 971
    .local v10, "isOverriding":Z
    if-nez v8, :cond_3

    .line 974
    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isOverriding(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v14, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isOverriding(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/4 v10, 0x1

    .line 978
    :cond_3
    :goto_4
    sget-object v16, Lae/javax/xml/bind/annotation/XmlAccessType;->PROPERTY:Lae/javax/xml/bind/annotation/XmlAccessType;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_4

    if-eqz v10, :cond_6

    :cond_4
    sget-object v16, Lae/javax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Lae/javax/xml/bind/annotation/XmlAccessType;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->isConsideredPublic(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->isConsideredPublic(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz v10, :cond_6

    :cond_5
    if-eqz v8, :cond_1

    .line 982
    :cond_6
    if-eqz v6, :cond_b

    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-interface/range {v16 .. v18}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    move-object/from16 v16, v0

    new-instance v17, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v18, Lae/com/sun/xml/bind/v2/model/impl/Messages;->GETTER_SETTER_INCOMPATIBLE_TYPE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-interface/range {v21 .. v22}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    new-instance v20, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v14, v2}, Lae/com/sun/xml/bind/v2/model/annotation/MethodLocatable;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    invoke-direct/range {v17 .. v20}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual/range {v16 .. v17}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto/16 :goto_0

    .line 966
    .end local v5    # "ga":[Ljava/lang/annotation/Annotation;
    .end local v8    # "hasAnnotation":Z
    .end local v10    # "isOverriding":Z
    .end local v13    # "sa":[Ljava/lang/annotation/Annotation;
    :cond_7
    sget-object v5, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->EMPTY_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    goto/16 :goto_1

    .line 967
    .restart local v5    # "ga":[Ljava/lang/annotation/Annotation;
    :cond_8
    sget-object v13, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->EMPTY_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    goto/16 :goto_2

    .line 969
    .restart local v13    # "sa":[Ljava/lang/annotation/Annotation;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 974
    .restart local v8    # "hasAnnotation":Z
    .restart local v10    # "isOverriding":Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 997
    :cond_b
    array-length v0, v5

    move/from16 v16, v0

    if-nez v16, :cond_c

    .line 998
    move-object v12, v13

    .line 1008
    .local v12, "r":[Ljava/lang/annotation/Annotation;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->createAccessorSeed(Ljava/lang/Object;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v12, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->addProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;[Ljava/lang/annotation/Annotation;Z)V

    goto/16 :goto_0

    .line 1000
    .end local v12    # "r":[Ljava/lang/annotation/Annotation;
    :cond_c
    array-length v0, v13

    move/from16 v16, v0

    if-nez v16, :cond_d

    .line 1001
    move-object v12, v5

    .restart local v12    # "r":[Ljava/lang/annotation/Annotation;
    goto :goto_5

    .line 1003
    .end local v12    # "r":[Ljava/lang/annotation/Annotation;
    :cond_d
    array-length v0, v5

    move/from16 v16, v0

    array-length v0, v13

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    new-array v12, v0, [Ljava/lang/annotation/Annotation;

    .line 1004
    .restart local v12    # "r":[Ljava/lang/annotation/Annotation;
    const/16 v16, 0x0

    const/16 v17, 0x0

    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v5, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v13, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 1012
    .end local v5    # "ga":[Ljava/lang/annotation/Annotation;
    .end local v6    # "getter":Ljava/lang/Object;, "TM;"
    .end local v8    # "hasAnnotation":Z
    .end local v10    # "isOverriding":Z
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "r":[Ljava/lang/annotation/Annotation;
    .end local v13    # "sa":[Ljava/lang/annotation/Annotation;
    .end local v14    # "setter":Ljava/lang/Object;, "TM;"
    :cond_e
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1013
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1023
    return-void
.end method

.method private getAccessType()Lae/javax/xml/bind/annotation/XmlAccessType;
    .locals 2

    .prologue
    .line 459
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const-class v1, Lae/javax/xml/bind/annotation/XmlAccessorType;

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClassOrPackageAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAccessorType;

    .line 460
    .local v0, "xat":Lae/javax/xml/bind/annotation/XmlAccessorType;
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlAccessorType;->value()Lae/javax/xml/bind/annotation/XmlAccessType;

    move-result-object v1

    .line 463
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Lae/javax/xml/bind/annotation/XmlAccessType;

    goto :goto_0
.end method

.method private getAccessorOrder()Lae/javax/xml/bind/annotation/XmlAccessOrder;
    .locals 2

    .prologue
    .line 470
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const-class v1, Lae/javax/xml/bind/annotation/XmlAccessorOrder;

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getClassOrPackageAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAccessorOrder;

    .line 471
    .local v0, "xao":Lae/javax/xml/bind/annotation/XmlAccessorOrder;
    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lae/javax/xml/bind/annotation/XmlAccessorOrder;->value()Lae/javax/xml/bind/annotation/XmlAccessOrder;

    move-result-object v1

    .line 474
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    goto :goto_0
.end method

.method private getClassOrPackageAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v1, p1, v2, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 448
    .local v0, "t":Ljava/lang/annotation/Annotation;, "TT;"
    if-eqz v0, :cond_0

    .line 451
    .end local v0    # "t":Ljava/lang/annotation/Annotation;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "t":Ljava/lang/annotation/Annotation;, "TT;"
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v1, p1, v2, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method private getInheritedAttributeWildcard()Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    .local v0, "c":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1244
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    .line 1246
    :goto_1
    return-object v1

    .line 1243
    :cond_0
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    goto :goto_0

    .line 1246
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getPropertyNameFromGetMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 1171
    const-string v0, "get"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1172
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1175
    :goto_0
    return-object v0

    .line 1173
    :cond_0
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1174
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPropertyNameFromSetMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 1185
    const-string v0, "set"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1186
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSomeJAXBAnnotation([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 5
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 1157
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1158
    .local v0, "a":Ljava/lang/annotation/Annotation;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->isJAXBAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1160
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v0

    .line 1157
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1160
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hasFactoryConstructor(Lae/javax/xml/bind/annotation/XmlType;)Z
    .locals 12
    .param p1, "t"    # Lae/javax/xml/bind/annotation/XmlType;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1297
    if-nez p1, :cond_0

    .line 1323
    :goto_0
    return v5

    .line 1299
    :cond_0
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlType;->factoryMethod()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v6

    const-string v7, "factoryClass"

    invoke-interface {v6, p1, v7}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1301
    .local v0, "fClass":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1302
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    const-class v8, Lae/javax/xml/bind/annotation/XmlType$DEFAULT;

    invoke-interface {v7, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1303
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->use(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1305
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    invoke-interface {v7, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getDeclaredMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1307
    .local v2, "m":Ljava/lang/Object;, "TM;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    invoke-interface {v7, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v8

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->use(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isStaticMethod(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1311
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->factoryMethod:Ljava/lang/Object;

    .line 1315
    .end local v2    # "m":Ljava/lang/Object;, "TM;"
    :cond_3
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->factoryMethod:Ljava/lang/Object;

    if-nez v6, :cond_4

    .line 1316
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v8, Lae/com/sun/xml/bind/v2/model/impl/Messages;->NO_FACTORY_METHOD:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v10

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v3, v9, v4

    invoke-virtual {v8, v9}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 1323
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->factoryMethod:Ljava/lang/Object;

    if-eqz v6, :cond_6

    :goto_2
    move v5, v4

    goto/16 :goto_0

    .line 1319
    :cond_5
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v7

    const-class v8, Lae/javax/xml/bind/annotation/XmlType$DEFAULT;

    invoke-interface {v7, v8}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1320
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v8, Lae/com/sun/xml/bind/v2/model/impl/Messages;->FACTORY_CLASS_NEEDS_FACTORY_METHOD:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v10

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    invoke-interface {v11, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, v9}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_1

    :cond_6
    move v4, v5

    .line 1323
    goto :goto_2
.end method

.method private static hasJAXBAnnotation([Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 1153
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getSomeJAXBAnnotation([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConsideredPublic(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    .prologue
    .line 1110
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "m":Ljava/lang/Object;, "TM;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isPublicMethod(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJAXBAnnotation(Ljava/lang/annotation/Annotation;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 1146
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->ANNOTATION_NUMBER_MAP:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static varargs makeSet([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "args":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v3}, Lcom/sun/istack/FinalArrayList;-><init>()V

    .line 584
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 585
    .local v0, "arg":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "arg":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v3
.end method

.method private static varargs pickOne([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "args":[Ljava/lang/Object;, "[TT;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 577
    .local v0, "arg":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 579
    .end local v0    # "arg":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v0

    .line 576
    .restart local v0    # "arg":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    .end local v0    # "arg":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private resurrect(Ljava/util/Map;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TM;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1118
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TM;>;"
    .local p2, "complete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1119
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TM;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1121
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getAllMethodAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasJAXBAnnotation([Ljava/lang/annotation/Annotation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1124
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TM;>;"
    :cond_1
    return-void
.end method

.method private shouldRecurseSuperClass(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 1102
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "sc":Ljava/lang/Object;, "TC;"
    if-eqz p1, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->isReplaced(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    const-class v1, Lae/javax/xml/bind/annotation/XmlTransient;

    invoke-interface {v0, p1, v1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasClassAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 298
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->isElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    .end local p0    # "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public canBeReferencedByIDREF()Z
    .locals 5

    .prologue
    .line 278
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 279
    .local v2, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v3

    sget-object v4, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne v3, v4, :cond_0

    .line 280
    const/4 v3, 0x1

    .line 286
    .end local v2    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :goto_0
    return v3

    .line 282
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    .line 283
    .local v0, "base":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->canBeReferencedByIDREF()Z

    move-result v3

    goto :goto_0

    .line 286
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected checkFieldXmlLocation(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    return-void
.end method

.method protected createAccessorSeed(Ljava/lang/Object;Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "getter":Ljava/lang/Object;, "TM;"
    .local p2, "setter":Ljava/lang/Object;, "TM;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;

    invoke-direct {v0, p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createAttributeProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;)",
            "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 920
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected createElementProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected createFieldSeed(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 1197
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createMapProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;)",
            "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 932
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected createReferenceProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method protected createValueProperty(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<TT;TC;TF;TM;>;)",
            "Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    return-object v0
.end method

.method public final declaresAttributeWildcard()Z
    .locals 1

    .prologue
    .line 1236
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->attributeWildcard:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getBaseClass()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 223
    iget-boolean v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClassComputed:Z

    if-nez v2, :cond_1

    .line 225
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 226
    .local v1, "s":Ljava/lang/Object;, "TC;"
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 227
    :cond_0
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClass:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 237
    :goto_0
    iput-boolean v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClassComputed:Z

    .line 239
    .end local v1    # "s":Ljava/lang/Object;, "TC;"
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClass:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    return-object v2

    .line 229
    .restart local v1    # "s":Ljava/lang/Object;, "TC;"
    :cond_2
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-virtual {v2, v1, v4, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;ZLae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    .line 230
    .local v0, "b":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    instance-of v2, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    if-eqz v2, :cond_3

    .line 231
    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .end local v0    # "b":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClass:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 232
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClass:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iput-boolean v4, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasSubClasses:Z

    goto :goto_0

    .line 234
    .restart local v0    # "b":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_3
    iput-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->baseClass:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    goto :goto_0
.end method

.method public final getClazz()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    return-object v0
.end method

.method public final getElementName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 1250
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->elementName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getFactoryMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1327
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->factoryMethod:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 2

    .prologue
    .line 1285
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const/4 v11, 0x0

    .line 305
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    .line 370
    :goto_0
    return-object v7

    .line 308
    :cond_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getAccessType()Lae/javax/xml/bind/annotation/XmlAccessType;

    move-result-object v1

    .line 310
    .local v1, "at":Lae/javax/xml/bind/annotation/XmlAccessType;
    new-instance v7, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v7}, Lcom/sun/istack/FinalArrayList;-><init>()V

    iput-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    .line 312
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-direct {p0, v7, v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->findFieldProperties(Ljava/lang/Object;Lae/javax/xml/bind/annotation/XmlAccessType;)V

    .line 314
    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->findGetterSetterProperties(Lae/javax/xml/bind/annotation/XmlAccessType;)V

    .line 316
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    sget-object v8, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->DEFAULT_ORDER:[Ljava/lang/String;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    if-nez v7, :cond_4

    .line 317
    :cond_1
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getAccessorOrder()Lae/javax/xml/bind/annotation/XmlAccessOrder;

    move-result-object v0

    .line 318
    .local v0, "ao":Lae/javax/xml/bind/annotation/XmlAccessOrder;
    sget-object v7, Lae/javax/xml/bind/annotation/XmlAccessOrder;->ALPHABETICAL:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    if-ne v0, v7, :cond_2

    .line 319
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 331
    .end local v0    # "ao":Lae/javax/xml/bind/annotation/XmlAccessOrder;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 332
    .local v6, "vp":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    const/4 v2, 0x0

    .line 334
    .local v2, "ep":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v7}, Lcom/sun/istack/FinalArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .line 335
    .local v4, "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    sget-object v7, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v8

    invoke-virtual {v8}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 357
    sget-boolean v7, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 322
    .end local v2    # "ep":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    .end local v6    # "vp":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    :cond_4
    new-instance v5, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;

    invoke-direct {v5, p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)V

    .line 323
    .local v5, "sorter":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>.PropertySorter;"
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v7}, Lcom/sun/istack/FinalArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .line 324
    .restart local v4    # "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    # invokes: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->checkedGet(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I
    invoke-static {v5, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->access$000(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I

    goto :goto_3

    .line 326
    .end local v4    # "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    :cond_5
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    invoke-static {v7, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 327
    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->checkUnusedProperties()V

    goto :goto_1

    .line 339
    .end local v5    # "sorter":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>.PropertySorter;"
    .restart local v2    # "ep":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    .restart local v4    # "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    .restart local v6    # "vp":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    :pswitch_1
    move-object v2, v4

    .line 340
    goto :goto_2

    .line 342
    :pswitch_2
    if-eqz v6, :cond_6

    .line 344
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v8, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v9, Lae/com/sun/xml/bind/v2/model/impl/Messages;->MULTIPLE_VALUE_PROPERTY:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6, v4}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 348
    :cond_6
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 349
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v8, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v9, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLVALUE_IN_DERIVED_TYPE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 352
    :cond_7
    move-object v6, v4

    .line 353
    goto :goto_2

    .line 361
    .end local v4    # "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    .line 363
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v8, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v9, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ELEMENT_AND_VALUE_PROPERTY:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 370
    :cond_9
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    goto/16 :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 431
    .local v1, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    .end local v1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getScope()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSubstitutionHead()Lae/com/sun/xml/bind/v2/model/core/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    .line 249
    .local v0, "c":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->isElement()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_0
    return-object v0
.end method

.method public final getType()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->use(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 1254
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public bridge synthetic getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v0

    return-object v0
.end method

.method public final hasAttributeWildcard()Z
    .locals 1

    .prologue
    .line 1228
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->declaresAttributeWildcard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->inheritsAttributeWildcard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 568
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v0}, Lcom/sun/istack/FinalArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSubClasses()Z
    .locals 1

    .prologue
    .line 1224
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasSubClasses:Z

    return v0
.end method

.method public final hasValueProperty()Z
    .locals 5

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const/4 v3, 0x1

    .line 418
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getBaseClass()Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    move-result-object v0

    .line 419
    .local v0, "bc":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->hasValueProperty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    :goto_0
    return v3

    .line 422
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 423
    .local v2, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    instance-of v4, v2, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;

    if-eqz v4, :cond_1

    goto :goto_0

    .line 426
    .end local v2    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final inheritsAttributeWildcard()Z
    .locals 1

    .prologue
    .line 1232
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getInheritedAttributeWildcard()Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAbstract()Z
    .locals 2

    .prologue
    .line 1212
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isAbstract(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isElement()Z
    .locals 1

    .prologue
    .line 1208
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->elementName:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFinal()Z
    .locals 2

    .prologue
    .line 1220
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isFinal(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOrdered()Z
    .locals 1

    .prologue
    .line 1216
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSimpleType()Z
    .locals 5

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1258
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperties()Ljava/util/List;

    move-result-object v0

    .line 1259
    .local v0, "props":Ljava/util/List;, "Ljava/util/List<+Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1260
    :goto_0
    return v3

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v1

    sget-object v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method link()V
    .locals 10

    .prologue
    .line 1268
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->getProperties()Ljava/util/List;

    .line 1271
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1272
    .local v1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;>;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v4}, Lcom/sun/istack/FinalArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .line 1273
    .local v3, "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->link()V

    .line 1274
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .line 1275
    .local v2, "old":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    if-eqz v2, :cond_0

    .line 1276
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->PROPERTY_COLLISION:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0

    .line 1281
    .end local v2    # "old":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    .end local v3    # "p":Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl<TT;TC;TF;TM;>;"
    :cond_1
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->link()V

    .line 1282
    return-void
.end method

.method public readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
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
    .line 294
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1332
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->clazz:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
