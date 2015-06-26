.class public Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;
.source "ArrayInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;
.implements Lae/com/sun/xml/bind/v2/runtime/Location;


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
        "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl",
        "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;",
        "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo",
        "<TTypeT;TClassDeclT;>;",
        "Lae/com/sun/xml/bind/v2/runtime/Location;"
    }
.end annotation


# instance fields
.field private final arrayType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeT;"
        }
    .end annotation
.end field

.field private final itemType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation
.end field

.field private final typeName:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;)V
    .locals 7
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            "TTypeT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p3, "arrayType":Ljava/lang/Object;, "TTypeT;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 76
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->arrayType:Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    invoke-interface {v2, p3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getComponentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "componentType":Ljava/lang/Object;, "TTypeT;"
    invoke-virtual {p1, v0, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->itemType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 80
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->itemType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 81
    .local v1, "n":Ljavax/xml/namespace/QName;
    if-nez v1, :cond_0

    .line 82
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ANONYMOUS_ARRAY_ITEM:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v6

    invoke-interface {v6, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {p1, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 84
    new-instance v1, Ljavax/xml/namespace/QName;

    .end local v1    # "n":Ljavax/xml/namespace/QName;
    const-string v2, "#dummy"

    invoke-direct {v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v1    # "n":Ljavax/xml/namespace/QName;
    :cond_0
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->calcArrayTypeName(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    .line 87
    return-void
.end method

.method public static calcArrayTypeName(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;
    .locals 4
    .param p0, "n"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 94
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "this URI"

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/TODO;->checkSpec(Ljava/lang/String;)V

    .line 96
    const-string v0, "http://jaxb.dev.java.net/array"

    .line 99
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljavax/xml/namespace/QName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Array"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 98
    .end local v0    # "uri":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "uri":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final canBeReferencedByIDREF()Z
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getItemType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->itemType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 0

    .prologue
    .line 129
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    return-object p0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->arrayType:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public bridge synthetic getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v0

    return-object v0
.end method

.method public isSimpleType()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ArrayInfoImpl;->arrayType:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
