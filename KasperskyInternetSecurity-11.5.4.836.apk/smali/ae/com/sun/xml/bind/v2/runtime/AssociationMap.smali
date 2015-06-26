.class public final Lae/com/sun/xml/bind/v2/runtime/AssociationMap;
.super Ljava/lang/Object;
.source "AssociationMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XmlNode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final byElement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TXmlNode;",
            "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry",
            "<TXmlNode;>;>;"
        }
    .end annotation
.end field

.field private final byPeer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry",
            "<TXmlNode;>;>;"
        }
    .end annotation
.end field

.field private final usedNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TXmlNode;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->usedNodes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addInner(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p2, "inner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    .local p1, "element":Ljava/lang/Object;, "TXmlNode;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .line 87
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    if-eqz v0, :cond_3

    .line 88
    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$000(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer:Ljava/util/Map;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$000(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    # setter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;
    invoke-static {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$002(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .line 100
    .local v1, "old":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    if-eqz v1, :cond_2

    .line 101
    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$200(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer:Ljava/util/Map;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$200(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$100(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$100(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    return-void

    .line 92
    .end local v1    # "old":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    :cond_3
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .end local v0    # "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;-><init>()V

    .line 93
    .restart local v0    # "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    # setter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;
    invoke-static {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$102(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    # setter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;
    invoke-static {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$002(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addOuter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p2, "outer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    .local p1, "element":Ljava/lang/Object;, "TXmlNode;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .line 111
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    if-eqz v0, :cond_2

    .line 112
    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$200(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer:Ljava/util/Map;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$200(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    # setter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$202(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .line 124
    .local v1, "old":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    if-eqz v1, :cond_1

    .line 125
    const/4 v2, 0x0

    # setter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$202(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$000(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 129
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$100(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    return-void

    .line 116
    .end local v1    # "old":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    :cond_2
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .end local v0    # "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;-><init>()V

    .line 117
    .restart local v0    # "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    # setter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;
    invoke-static {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$102(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    # setter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$202(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addUsed(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    .local p1, "n":Ljava/lang/Object;, "TXmlNode;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->usedNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public byElement(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry",
            "<TXmlNode;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    return-object v0
.end method

.method public byPeer(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry",
            "<TXmlNode;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    return-object v0
.end method

.method public getInnerPeer(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    .local p1, "element":Ljava/lang/Object;, "TXmlNode;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    move-result-object v0

    .line 147
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    :cond_0
    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$000(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getOuterPeer(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap<TXmlNode;>;"
    .local p1, "element":Ljava/lang/Object;, "TXmlNode;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    move-result-object v0

    .line 153
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    :cond_0
    # getter for: Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->access$200(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
