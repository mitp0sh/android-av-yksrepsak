.class abstract Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
.super Lae/com/sun/xml/bind/api/Bridge;
.source "InternalBridge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/api/Bridge",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 0
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 57
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;, "Lae/com/sun/xml/bind/v2/runtime/InternalBridge<TT;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/api/Bridge;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Lae/com/sun/xml/bind/api/JAXBRIContext;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;, "Lae/com/sun/xml/bind/v2/runtime/InternalBridge<TT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->getContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;, "Lae/com/sun/xml/bind/v2/runtime/InternalBridge<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    return-object v0
.end method

.method abstract marshal(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
