.class Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;
.super Ljava/lang/Object;
.source "TypeRefImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/TypeRef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeT:",
        "Ljava/lang/Object;",
        "ClassDeclT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
        "<TTypeT;TClassDeclT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private final elementName:Ljavax/xml/namespace/QName;

.field private final isNillable:Z

.field protected final owner:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl",
            "<TTypeT;TClassDeclT;**>;"
        }
    .end annotation
.end field

.field private ref:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;Ljavax/xml/namespace/QName;Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1
    .param p2, "elementName"    # Ljavax/xml/namespace/QName;
    .param p4, "isNillable"    # Z
    .param p5, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl",
            "<TTypeT;TClassDeclT;**>;",
            "Ljavax/xml/namespace/QName;",
            "TTypeT;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    .local p1, "owner":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl<TTypeT;TClassDeclT;**>;"
    .local p3, "type":Ljava/lang/Object;, "TTypeT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    .line 62
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->elementName:Ljavax/xml/namespace/QName;

    .line 63
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->type:Ljava/lang/Object;

    .line 64
    iput-boolean p4, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->isNillable:Z

    .line 65
    iput-object p5, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->defaultValue:Ljava/lang/String;

    .line 66
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_1
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_2
    return-void
.end method

.method private calcRef()V
    .locals 3

    .prologue
    .line 96
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->type:Ljava/lang/Object;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->ref:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 97
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->ref:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    return-object v0
.end method

.method public getTagName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->elementName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->ref:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->calcRef()V

    .line 74
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->ref:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public isNillable()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->isNillable:Z

    return v0
.end method

.method protected link()V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;, "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl<TTypeT;TClassDeclT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->calcRef()V

    .line 92
    return-void
.end method
