.class final Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;
.super Ljava/lang/Object;
.source "DomPostInitAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final node:Lorg/w3c/dom/Node;

.field private final serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;->node:Lorg/w3c/dom/Node;

    .line 67
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 68
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 72
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v2, "declaredPrefixes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;->node:Lorg/w3c/dom/Node;

    .local v4, "n":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 74
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 75
    .local v1, "atts":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_1

    .line 73
    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_0

    .line 76
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 77
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 78
    .local v0, "a":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "nsUri":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v8, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 76
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 84
    const-string v8, "xmlns"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 85
    const-string v6, ""

    .line 87
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 90
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v8, v7, v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->addInscopeBinding(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    .end local v0    # "a":Lorg/w3c/dom/Attr;
    .end local v1    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    .end local v5    # "nsUri":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    return-void
.end method
