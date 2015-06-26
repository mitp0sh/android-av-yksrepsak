.class public Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;
.source "BuiltinLeafInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/BuiltinLeafInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeT:",
        "Ljava/lang/Object;",
        "ClassDeclT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl",
        "<TTypeT;TClassDeclT;>;",
        "Lae/com/sun/xml/bind/v2/model/core/BuiltinLeafInfo",
        "<TTypeT;TClassDeclT;>;"
    }
.end annotation


# instance fields
.field private final typeNames:[Ljavax/xml/namespace/QName;


# direct methods
.method protected varargs constructor <init>(Ljava/lang/Object;[Ljavax/xml/namespace/QName;)V
    .locals 1
    .param p2, "typeNames"    # [Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeT;[",
            "Ljavax/xml/namespace/QName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    .local p1, "type":Ljava/lang/Object;, "TTypeT;"
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;-><init>(Ljava/lang/Object;Ljavax/xml/namespace/QName;)V

    .line 65
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;->typeNames:[Ljavax/xml/namespace/QName;

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createLeaves(Lae/com/sun/xml/bind/v2/model/nav/Navigator;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TypeT:",
            "Ljava/lang/Object;",
            "ClassDeclT:",
            "Ljava/lang/Object;",
            ">(",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TTypeT;TClassDeclT;**>;)",
            "Ljava/util/Map",
            "<TTypeT;",
            "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl",
            "<TTypeT;TClassDeclT;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TTypeT;TClassDeclT;**>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v2, "leaves":Ljava/util/Map;, "Ljava/util/Map<TTypeT;Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;>;"
    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->builtinBeanInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;

    .line 109
    .local v1, "leaf":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;"
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->getClazz()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p0, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    .local v3, "t":Ljava/lang/Object;, "TTypeT;"
    new-instance v4, Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->getTypeNames()[Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;-><init>(Ljava/lang/Object;[Ljavax/xml/namespace/QName;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    .end local v1    # "leaf":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;"
    .end local v3    # "t":Ljava/lang/Object;, "TTypeT;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final asElement()Lae/com/sun/xml/bind/v2/model/core/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getElementName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->getType()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeNames()[Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;->typeNames:[Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public bridge synthetic getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v0

    return-object v0
.end method

.method public final isElement()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isSimpleType()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->isSimpleType()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl<TTypeT;TClassDeclT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
