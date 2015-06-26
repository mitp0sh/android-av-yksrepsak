.class public abstract Lae/com/sun/xml/bind/api/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 0
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 84
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 86
    return-void
.end method

.method private exit(Ljava/lang/Object;Lae/javax/xml/bind/Unmarshaller;)Ljava/lang/Object;
    .locals 1
    .param p2, "u"    # Lae/javax/xml/bind/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/javax/xml/bind/Unmarshaller;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lae/javax/xml/bind/Unmarshaller;->setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V

    .line 209
    iget-object v0, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->unmarshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v0, p2}, Lcom/sun/istack/Pool;->recycle(Ljava/lang/Object;)V

    .line 210
    return-object p1
.end method


# virtual methods
.method public getContext()Lae/com/sun/xml/bind/api/JAXBRIContext;
    .locals 1
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    return-object v0
.end method

.method public abstract getTypeReference()Lae/com/sun/xml/bind/api/TypeReference;
.end method

.method public final marshal(Lae/com/sun/xml/bind/api/BridgeContext;Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p3, "output"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "TT;",
            "Lae/javax/xml/stream/XMLStreamWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {p0, v0, p2, p3}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V

    .line 119
    return-void
.end method

.method public final marshal(Lae/com/sun/xml/bind/api/BridgeContext;Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "TT;",
            "Ljava/io/OutputStream;",
            "Ljavax/xml/namespace/NamespaceContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {p0, v0, p2, p3, p4}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V

    .line 153
    return-void
.end method

.method public final marshal(Lae/com/sun/xml/bind/api/BridgeContext;Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p3, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "TT;",
            "Ljavax/xml/transform/Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {p0, v0, p2, p3}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 202
    return-void
.end method

.method public final marshal(Lae/com/sun/xml/bind/api/BridgeContext;Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p3, "output"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "TT;",
            "Lorg/w3c/dom/Node;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {p0, v0, p2, p3}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/w3c/dom/Node;)V

    .line 166
    return-void
.end method

.method public final marshal(Lae/com/sun/xml/bind/api/BridgeContext;Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p3, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "TT;",
            "Lorg/xml/sax/ContentHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {p0, v0, p2, p3}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V

    .line 189
    return-void
.end method

.method public abstract marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V
    .param p1    # Lae/javax/xml/bind/Marshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Lae/javax/xml/stream/XMLStreamWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V
    .param p1    # Lae/javax/xml/bind/Marshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Ljava/io/OutputStream;",
            "Ljavax/xml/namespace/NamespaceContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .param p1    # Lae/javax/xml/bind/Marshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Ljavax/xml/transform/Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .param p1    # Lae/javax/xml/bind/Marshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Lorg/w3c/dom/Node;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    .param p1    # Lae/javax/xml/bind/Marshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TT;",
            "Lorg/xml/sax/ContentHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public final marshal(Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .param p2, "output"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/javax/xml/stream/XMLStreamWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 108
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V
    .locals 2
    .param p2, "output"    # Lae/javax/xml/stream/XMLStreamWriter;
    .param p3, "am"    # Lae/javax/xml/bind/attachment/AttachmentMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/javax/xml/stream/XMLStreamWriter;",
            "Lae/javax/xml/bind/attachment/AttachmentMarshaller;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Marshaller;

    .line 111
    .local v0, "m":Lae/javax/xml/bind/Marshaller;
    invoke-interface {v0, p3}, Lae/javax/xml/bind/Marshaller;->setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 112
    invoke-virtual {p0, v0, p1, p2}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V

    .line 113
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lae/javax/xml/bind/Marshaller;->setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 114
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1, v0}, Lcom/sun/istack/Pool;->recycle(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            "Ljavax/xml/namespace/NamespaceContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 139
    return-void
.end method

.method public marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V
    .locals 2
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;
    .param p4, "am"    # Lae/javax/xml/bind/attachment/AttachmentMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            "Ljavax/xml/namespace/NamespaceContext;",
            "Lae/javax/xml/bind/attachment/AttachmentMarshaller;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Marshaller;

    .line 145
    .local v0, "m":Lae/javax/xml/bind/Marshaller;
    invoke-interface {v0, p4}, Lae/javax/xml/bind/Marshaller;->setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 146
    invoke-virtual {p0, v0, p1, p2, p3}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V

    .line 147
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lae/javax/xml/bind/Marshaller;->setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 148
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1, v0}, Lcom/sun/istack/Pool;->recycle(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .locals 2
    .param p2, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavax/xml/transform/Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Marshaller;

    .line 197
    .local v0, "m":Lae/javax/xml/bind/Marshaller;
    invoke-virtual {p0, v0, p1, p2}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 198
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1, v0}, Lcom/sun/istack/Pool;->recycle(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p2, "output"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/w3c/dom/Node;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Marshaller;

    .line 160
    .local v0, "m":Lae/javax/xml/bind/Marshaller;
    invoke-virtual {p0, v0, p1, p2}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/w3c/dom/Node;)V

    .line 161
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1, v0}, Lcom/sun/istack/Pool;->recycle(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p2, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/xml/sax/ContentHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 176
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V
    .locals 2
    .param p2, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "am"    # Lae/javax/xml/bind/attachment/AttachmentMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/xml/sax/ContentHandler;",
            "Lae/javax/xml/bind/attachment/AttachmentMarshaller;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Marshaller;

    .line 182
    .local v0, "m":Lae/javax/xml/bind/Marshaller;
    invoke-interface {v0, p3}, Lae/javax/xml/bind/Marshaller;->setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 183
    invoke-virtual {p0, v0, p1, p2}, Lae/com/sun/xml/bind/api/Bridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V

    .line 184
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lae/javax/xml/bind/Marshaller;->setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 185
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1, v0}, Lcom/sun/istack/Pool;->recycle(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public final unmarshal(Lae/com/sun/xml/bind/api/BridgeContext;Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "in"    # Lae/javax/xml/stream/XMLStreamReader;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "Lae/javax/xml/stream/XMLStreamReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {p0, v0, p2}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Lae/com/sun/xml/bind/api/BridgeContext;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "in"    # Ljava/io/InputStream;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {p0, v0, p2}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Lae/com/sun/xml/bind/api/BridgeContext;Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "in"    # Ljavax/xml/transform/Source;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "Ljavax/xml/transform/Source;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {p0, v0, p2}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Lae/com/sun/xml/bind/api/BridgeContext;Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/api/BridgeContext;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "n"    # Lorg/w3c/dom/Node;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/api/BridgeContext;",
            "Lorg/w3c/dom/Node;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    .end local p1    # "context":Lae/com/sun/xml/bind/api/BridgeContext;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {p0, v0, p2}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract unmarshal(Lae/javax/xml/bind/Unmarshaller;Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .param p1    # Lae/javax/xml/bind/Unmarshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2    # Lae/javax/xml/stream/XMLStreamReader;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Lae/javax/xml/stream/XMLStreamReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljava/io/InputStream;)Ljava/lang/Object;
    .param p1    # Lae/javax/xml/bind/Unmarshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .param p1    # Lae/javax/xml/bind/Unmarshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/xml/transform/Source;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Ljavax/xml/transform/Source;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Lae/javax/xml/bind/Unmarshaller;Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .param p1    # Lae/javax/xml/bind/Unmarshaller;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/w3c/dom/Node;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Lorg/w3c/dom/Node;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public final unmarshal(Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lae/javax/xml/stream/XMLStreamReader;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/stream/XMLStreamReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/stream/XMLStreamReader;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Lae/javax/xml/stream/XMLStreamReader;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lae/javax/xml/stream/XMLStreamReader;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "au"    # Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/stream/XMLStreamReader;",
            "Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->unmarshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Unmarshaller;

    .line 237
    .local v0, "u":Lae/javax/xml/bind/Unmarshaller;
    invoke-interface {v0, p2}, Lae/javax/xml/bind/Unmarshaller;->setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V

    .line 238
    invoke-virtual {p0, v0, p1}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lae/com/sun/xml/bind/api/Bridge;->exit(Ljava/lang/Object;Lae/javax/xml/bind/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final unmarshal(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->unmarshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Unmarshaller;

    .line 295
    .local v0, "u":Lae/javax/xml/bind/Unmarshaller;
    invoke-virtual {p0, v0, p1}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lae/com/sun/xml/bind/api/Bridge;->exit(Ljava/lang/Object;Lae/javax/xml/bind/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljavax/xml/transform/Source;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/transform/Source;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Ljavax/xml/transform/Source;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Ljavax/xml/transform/Source;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljavax/xml/transform/Source;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "au"    # Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/transform/Source;",
            "Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->unmarshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Unmarshaller;

    .line 269
    .local v0, "u":Lae/javax/xml/bind/Unmarshaller;
    invoke-interface {v0, p2}, Lae/javax/xml/bind/Unmarshaller;->setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V

    .line 270
    invoke-virtual {p0, v0, p1}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lae/com/sun/xml/bind/api/Bridge;->exit(Ljava/lang/Object;Lae/javax/xml/bind/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final unmarshal(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lorg/w3c/dom/Node;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Lorg/w3c/dom/Node;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)Ljava/lang/Object;
    .locals 2
    .param p1, "n"    # Lorg/w3c/dom/Node;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "au"    # Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lae/com/sun/xml/bind/api/Bridge;, "Lae/com/sun/xml/bind/api/Bridge<TT;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/Bridge;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->unmarshallerPool:Lcom/sun/istack/Pool;

    invoke-interface {v1}, Lcom/sun/istack/Pool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/Unmarshaller;

    .line 324
    .local v0, "u":Lae/javax/xml/bind/Unmarshaller;
    invoke-interface {v0, p2}, Lae/javax/xml/bind/Unmarshaller;->setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V

    .line 325
    invoke-virtual {p0, v0, p1}, Lae/com/sun/xml/bind/api/Bridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lae/com/sun/xml/bind/api/Bridge;->exit(Ljava/lang/Object;Lae/javax/xml/bind/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
