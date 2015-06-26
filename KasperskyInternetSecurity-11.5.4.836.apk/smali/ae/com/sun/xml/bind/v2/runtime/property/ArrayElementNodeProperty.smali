.class final Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementNodeProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;
.source "ArrayElementNodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ListT:Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty",
        "<TBeanT;T",
        "ListT;",
        "TItemT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V
    .locals 0
    .param p1, "p"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .prologue
    .line 62
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementNodeProperty<TBeanT;TListT;TItemT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V

    .line 63
    return-void
.end method


# virtual methods
.method public serializeItem(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 2
    .param p1, "expected"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p3, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            "TItemT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementNodeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementNodeProperty<TBeanT;TListT;TItemT;>;"
    .local p2, "item":Ljava/lang/Object;, "TItemT;"
    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementNodeProperty;->fieldName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    goto :goto_0
.end method
