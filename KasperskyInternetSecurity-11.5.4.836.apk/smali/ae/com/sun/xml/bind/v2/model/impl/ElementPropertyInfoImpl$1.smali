.class Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;
.super Ljava/util/AbstractList;
.source "ElementPropertyInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
        "<TTypeT;TClassDeclT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;)V
    .locals 0

    .prologue
    .line 77
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TTypeT;TClassDeclT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 77
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl.1;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;->get(I)Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
