.class final Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;
.super Ljava/lang/Object;
.source "AdaptedLister.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
        "<TOnWireItemT;>;"
    }
.end annotation


# instance fields
.field private final core:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<TInMemItemT;>;"
        }
    .end annotation
.end field

.field private final serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p3, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<TInMemItemT;>;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>.ListIteratorImpl;"
    .local p2, "core":Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator<TInMemItemT;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    .line 103
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 104
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>.ListIteratorImpl;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOnWireItemT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>.ListIteratorImpl;"
    const/4 v2, 0x0

    .line 111
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "next":Ljava/lang/Object;, "TInMemItemT;"
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;

    # invokes: Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->getAdapter()Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->access$000(Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;->marshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v3, v2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
