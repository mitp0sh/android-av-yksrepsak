.class abstract Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
.source "SingleTypePropertyInfoImpl.java"


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
        "<TT;TC;TF;TM;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

.field private type:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 2
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
    .line 75
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "classInfo":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>;"
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 76
    instance-of v1, p0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    if-eqz v1, :cond_1

    .line 77
    check-cast p2, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    .end local p2    # "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 78
    .local v0, "rawAcc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->isCollection()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    .line 81
    check-cast v1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->adapt(Lae/com/sun/xml/bind/v2/model/core/Adapter;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 82
    :cond_0
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 85
    .end local v0    # "rawAcc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :goto_0
    return-void

    .line 84
    .restart local p2    # "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TT;TC;TF;TM;>;"
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    goto :goto_0
.end method


# virtual methods
.method public getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method

.method public getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    return-object p0
.end method

.method public getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    if-nez v0, :cond_1

    .line 93
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this method must be called during the build stage"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 96
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 140
    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createTransducer(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 141
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->STRING:Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 147
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    return-object v0
.end method

.method public link()V
    .locals 5

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    const/4 v4, 0x0

    .line 104
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->link()V

    .line 106
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/NonElement;->ANYTYPE_NAME:Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->type:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v0

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/Messages;->SIMPLE_TYPE_IS_REQUIRED:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-direct {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->isCollection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->seed:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    const-class v1, Lae/javax/xml/bind/annotation/XmlList;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLLIST_ON_SINGLE_PROPERTY:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 118
    :cond_1
    return-void
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->ref()Ljava/util/List;

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
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
