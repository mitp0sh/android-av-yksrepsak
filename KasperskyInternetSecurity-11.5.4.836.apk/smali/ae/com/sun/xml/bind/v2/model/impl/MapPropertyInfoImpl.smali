.class Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
.source "MapPropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;


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
        "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl",
        "<TT;TC;TF;TM;>;",
        "Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo",
        "<TT;TC;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final keyType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private keyTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private nil:Z

.field private final valueType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private valueTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private final xmlName:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 8
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "ci":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 73
    const-class v3, Lae/javax/xml/bind/annotation/XmlElementWrapper;

    invoke-interface {p2, v3}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/XmlElementWrapper;

    .line 74
    .local v2, "xe":Lae/javax/xml/bind/annotation/XmlElementWrapper;
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->calcXmlName(Lae/javax/xml/bind/annotation/XmlElementWrapper;)Ljavax/xml/namespace/QName;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    .line 75
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlElementWrapper;->nillable()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nil:Z

    .line 77
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getRawType()Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "raw":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    const-class v7, Ljava/util/Map;

    invoke-interface {v6, v7}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "bt":Ljava/lang/Object;, "TT;"
    sget-boolean v3, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .end local v0    # "bt":Ljava/lang/Object;, "TT;"
    .end local v1    # "raw":Ljava/lang/Object;, "TT;"
    :cond_0
    move v3, v5

    .line 75
    goto :goto_0

    .line 81
    .restart local v0    # "bt":Ljava/lang/Object;, "TT;"
    .restart local v1    # "raw":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    invoke-interface {v3, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isParameterizedType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    invoke-interface {v3, v0, v5}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->keyType:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->valueType:Ljava/lang/Object;

    .line 87
    :goto_1
    return-void

    .line 85
    :cond_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->valueType:Ljava/lang/Object;

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->keyType:Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public getKeyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->keyTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->keyType:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getTarget(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->keyTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 108
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->keyTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public getTarget(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this method must be called during the build stage"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->valueTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->valueType:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getTarget(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->valueTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 114
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->valueTypeInfo:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public getXmlName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->xmlName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public isCollectionNillable()Z
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->nil:Z

    return v0
.end method

.method public final kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->MAP:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public ref()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl<TT;TC;TF;TM;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/core/NonElement;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getKeyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getValueType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
