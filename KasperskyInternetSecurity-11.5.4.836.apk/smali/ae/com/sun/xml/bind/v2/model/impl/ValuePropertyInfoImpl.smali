.class Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;
.source "ValuePropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;


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
        "Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl",
        "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;",
        "Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo",
        "<TTypeT;TClassDeclT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 0
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
    .line 57
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "parent":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/SingleTypePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 58
    return-void
.end method


# virtual methods
.method public kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ValuePropertyInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method
