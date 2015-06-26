.class final Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;
.super Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
.source "BridgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OnWire:",
        "Ljava/lang/Object;",
        "InMemory:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/InternalBridge",
        "<TInMemory;>;"
    }
.end annotation


# instance fields
.field private final adapter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWire;TInMemory;>;>;"
        }
    .end annotation
.end field

.field private final core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/InternalBridge",
            "<TOnWire;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/InternalBridge;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/InternalBridge",
            "<TOnWire;>;",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWire;TInMemory;>;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;, "Lae/com/sun/xml/bind/v2/runtime/InternalBridge<TOnWire;>;"
    .local p2, "adapter":Ljava/lang/Class;, "Ljava/lang/Class<+Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TOnWire;TInMemory;>;>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->getContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 81
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    .line 82
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adapter:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method private _adaptM(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "TInMemory;)TOnWire;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/MarshalException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "v":Ljava/lang/Object;, "TInMemory;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adapter:Ljava/lang/Class;

    invoke-virtual {p1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 120
    .local v0, "a":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TOnWire;TInMemory;>;"
    :try_start_0
    invoke-virtual {v0, p2}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;->marshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleError(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 123
    new-instance v2, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v2, v1}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private adaptM(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "m"    # Lae/javax/xml/bind/Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TInMemory;)TOnWire;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "v":Ljava/lang/Object;, "TInMemory;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .end local p1    # "m":Lae/javax/xml/bind/Marshaller;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 107
    .local v0, "serializer":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setThreadAffinity()V

    .line 108
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->pushCoordinator()V

    .line 110
    :try_start_0
    invoke-direct {p0, v0, p2}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->_adaptM(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->popCoordinator()V

    .line 113
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->resetThreadAffinity()V

    return-object v1

    .line 112
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->popCoordinator()V

    .line 113
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->resetThreadAffinity()V

    throw v1
.end method

.method private adaptU(Lae/javax/xml/bind/Unmarshaller;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "_u"    # Lae/javax/xml/bind/Unmarshaller;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "TOnWire;)TInMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "v":Ljava/lang/Object;, "TOnWire;"
    move-object v2, p1

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 150
    .local v2, "u":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    iget-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adapter:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 151
    .local v0, "a":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TOnWire;TInMemory;>;"
    iget-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->setThreadAffinity()V

    .line 152
    iget-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->pushCoordinator()V

    .line 154
    :try_start_0
    invoke-virtual {v0, p2}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;->unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 158
    iget-object v4, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    .line 159
    iget-object v4, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->resetThreadAffinity()V

    return-object v3

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lae/javax/xml/bind/UnmarshalException;

    invoke-direct {v3, v1}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    .line 159
    iget-object v4, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->resetThreadAffinity()V

    throw v3
.end method


# virtual methods
.method public getTypeReference()Lae/com/sun/xml/bind/api/TypeReference;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->getTypeReference()Lae/com/sun/xml/bind/api/TypeReference;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "output"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TInMemory;",
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
    .line 86
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "inMemory":Ljava/lang/Object;, "TInMemory;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptM(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V

    .line 87
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 2
    .param p1, "m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "nsc"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TInMemory;",
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
    .line 90
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "inMemory":Ljava/lang/Object;, "TInMemory;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptM(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V

    .line 91
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .locals 2
    .param p1, "context"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TInMemory;",
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
    .line 102
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "inMemory":Ljava/lang/Object;, "TInMemory;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptM(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 103
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "m"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "output"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TInMemory;",
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
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "inMemory":Ljava/lang/Object;, "TInMemory;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptM(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/w3c/dom/Node;)V

    .line 95
    return-void
.end method

.method public marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "context"    # Lae/javax/xml/bind/Marshaller;
    .param p3, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Marshaller;",
            "TInMemory;",
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
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p2, "inMemory":Ljava/lang/Object;, "TInMemory;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptM(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->marshal(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V

    .line 99
    return-void
.end method

.method marshal(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 2
    .param p2, "out"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInMemory;",
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

    .prologue
    .line 165
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    .local p1, "o":Ljava/lang/Object;, "TInMemory;"
    :try_start_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->_adaptM(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->marshal(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lae/javax/xml/bind/MarshalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "in"    # Lae/javax/xml/stream/XMLStreamReader;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Lae/javax/xml/stream/XMLStreamReader;",
            ")TInMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptU(Lae/javax/xml/bind/Unmarshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Ljava/io/InputStream;",
            ")TInMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptU(Lae/javax/xml/bind/Unmarshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 1
    .param p1, "u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "in"    # Ljavax/xml/transform/Source;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Ljavax/xml/transform/Source;",
            ")TInMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptU(Lae/javax/xml/bind/Unmarshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lae/javax/xml/bind/Unmarshaller;Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 1
    .param p1, "u"    # Lae/javax/xml/bind/Unmarshaller;
    .param p2, "n"    # Lorg/w3c/dom/Node;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/Unmarshaller;",
            "Lorg/w3c/dom/Node;",
            ")TInMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;, "Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter<TOnWire;TInMemory;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->core:Lae/com/sun/xml/bind/v2/runtime/InternalBridge;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/InternalBridge;->unmarshal(Lae/javax/xml/bind/Unmarshaller;Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;->adaptU(Lae/javax/xml/bind/Unmarshaller;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
