.class final Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;
.super Ljava/lang/Object;
.source "StAXPostInitAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final nsc:Ljavax/xml/namespace/NamespaceContext;

.field private final serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

.field private final xew:Lae/javax/xml/stream/XMLEventWriter;

.field private final xsw:Lae/javax/xml/stream/XMLStreamWriter;


# direct methods
.method constructor <init>(Lae/javax/xml/stream/XMLEventWriter;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 1
    .param p1, "xew"    # Lae/javax/xml/stream/XMLEventWriter;
    .param p2, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xsw:Lae/javax/xml/stream/XMLStreamWriter;

    .line 74
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xew:Lae/javax/xml/stream/XMLEventWriter;

    .line 75
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->nsc:Ljavax/xml/namespace/NamespaceContext;

    .line 76
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 77
    return-void
.end method

.method constructor <init>(Lae/javax/xml/stream/XMLStreamWriter;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 1
    .param p1, "xsw"    # Lae/javax/xml/stream/XMLStreamWriter;
    .param p2, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xsw:Lae/javax/xml/stream/XMLStreamWriter;

    .line 67
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xew:Lae/javax/xml/stream/XMLEventWriter;

    .line 68
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->nsc:Ljavax/xml/namespace/NamespaceContext;

    .line 69
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 70
    return-void
.end method

.method constructor <init>(Ljavax/xml/namespace/NamespaceContext;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 1
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;
    .param p2, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xsw:Lae/javax/xml/stream/XMLStreamWriter;

    .line 81
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xew:Lae/javax/xml/stream/XMLEventWriter;

    .line 82
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->nsc:Ljavax/xml/namespace/NamespaceContext;

    .line 83
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 87
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->nsc:Ljavax/xml/namespace/NamespaceContext;

    .line 88
    .local v3, "ns":Ljavax/xml/namespace/NamespaceContext;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xsw:Lae/javax/xml/stream/XMLStreamWriter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xsw:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v6}, Lae/javax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v3

    .line 89
    :cond_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xew:Lae/javax/xml/stream/XMLEventWriter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->xew:Lae/javax/xml/stream/XMLEventWriter;

    invoke-interface {v6}, Lae/javax/xml/stream/XMLEventWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v3

    .line 93
    :cond_1
    if-nez v3, :cond_3

    .line 104
    :cond_2
    return-void

    .line 99
    :cond_3
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v0, v6, Lae/com/sun/xml/bind/v2/runtime/NameList;->namespaceURIs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 100
    .local v4, "nsUri":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "p":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 102
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v6, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->addInscopeBinding(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
