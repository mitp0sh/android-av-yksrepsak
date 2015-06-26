.class Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;
.super Ljava/lang/Object;
.source "Lister.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;->iterator(Ljava/util/Collection;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;

.field final synthetic val$itr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 291
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;->val$itr:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;->val$itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;->val$itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
