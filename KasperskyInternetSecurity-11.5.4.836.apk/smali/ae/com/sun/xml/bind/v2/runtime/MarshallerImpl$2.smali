.class Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$2;
.super Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;
.source "MarshallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p2, "x0"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 309
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method


# virtual methods
.method public endDocument(Z)V
    .locals 1
    .param p1, "fragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->endDocument(Z)V

    .line 317
    return-void
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V
    .locals 1
    .param p1, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "fragment"    # Z
    .param p3, "nsUriIndex2prefixIndex"    # [I
    .param p4, "nsContext"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 313
    return-void
.end method
