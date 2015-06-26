.class abstract Lae/com/sun/xml/bind/v2/schemagen/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/schemagen/Tree$1;,
        Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;,
        Lae/com/sun/xml/bind/v2/schemagen/Tree$Repeated;,
        Lae/com/sun/xml/bind/v2/schemagen/Tree$Optional;,
        Lae/com/sun/xml/bind/v2/schemagen/Tree$Term;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method static makeGroup(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;Ljava/util/List;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 7
    .param p0, "kind"    # Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/schemagen/GroupKind;",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/schemagen/Tree;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/schemagen/Tree;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 92
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .line 110
    :goto_0
    return-object v4

    .line 98
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v2, "normalizedChildren":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .line 100
    .local v3, "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    instance-of v4, v3, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 101
    check-cast v0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;

    .line 102
    .local v0, "g":Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->kind:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->access$200(Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;)Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 103
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->children:[Lae/com/sun/xml/bind/v2/schemagen/Tree;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->access$300(Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;)[Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 107
    .end local v0    # "g":Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v3    # "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_2
    new-instance v5, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lae/com/sun/xml/bind/v2/schemagen/Tree;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lae/com/sun/xml/bind/v2/schemagen/Tree;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v4, v6}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;-><init>(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;[Lae/com/sun/xml/bind/v2/schemagen/Tree;Lae/com/sun/xml/bind/v2/schemagen/Tree$1;)V

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method canBeTopLevel()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method abstract isNullable()Z
.end method

.method makeOptional(Z)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 2
    .param p1, "really"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Optional;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Optional;-><init>(Lae/com/sun/xml/bind/v2/schemagen/Tree;Lae/com/sun/xml/bind/v2/schemagen/Tree$1;)V

    move-object p0, v0

    .end local p0    # "this":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_0
    return-object p0
.end method

.method makeRepeated(Z)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 2
    .param p1, "really"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Repeated;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Repeated;-><init>(Lae/com/sun/xml/bind/v2/schemagen/Tree;Lae/com/sun/xml/bind/v2/schemagen/Tree$1;)V

    move-object p0, v0

    .end local p0    # "this":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_0
    return-object p0
.end method

.method protected abstract write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
.end method

.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;)V
    .locals 4
    .param p1, "ct"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->canBeTopLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-class v0, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;

    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;->_cast(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;

    invoke-virtual {p0, v0, v3, v3}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->SEQUENCE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    const/4 v2, 0x1

    new-array v2, v2, [Lae/com/sun/xml/bind/v2/schemagen/Tree;

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;-><init>(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;[Lae/com/sun/xml/bind/v2/schemagen/Tree;Lae/com/sun/xml/bind/v2/schemagen/Tree$1;)V

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;)V

    goto :goto_0
.end method

.method protected final writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V
    .locals 1
    .param p1, "o"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    .line 149
    if-eqz p2, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;->minOccurs(I)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;

    .line 151
    :cond_0
    if-eqz p3, :cond_1

    .line 152
    const-string v0, "unbounded"

    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;->maxOccurs(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;

    .line 153
    :cond_1
    return-void
.end method
