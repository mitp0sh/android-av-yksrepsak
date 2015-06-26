.class Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl$1;
.super Ljava/lang/Object;
.source "TypeInfoSetImpl.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
        "<TT;TC;TF;TM;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;)V
    .locals 0

    .prologue
    .line 130
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl.1;"
    new-instance v0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->elementMappings:Ljava/util/Map;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->access$000(Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/util/FlattenIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
