.class public final Lae/com/sun/xml/bind/v2/runtime/NameBuilder;
.super Ljava/lang/Object;
.source "NameBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private attributeQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private elementQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private localNameIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nonDefaultableNsUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uriIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->uriIndexMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->nonDefaultableNsUris:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->localNameIndexMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->elementQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    .line 68
    new-instance v0, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->attributeQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    return-void
.end method

.method private allocIndex(Lae/com/sun/xml/bind/v2/util/QNameMap;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p2, "nsUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "map":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2, p3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 124
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    invoke-virtual {p1, p2, p3, v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private allocIndex(Ljava/util/Map;Ljava/lang/String;)I
    .locals 2
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 115
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 116
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private createName(Ljava/lang/String;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/util/QNameMap;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 7
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "isAttribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/runtime/Name;"
        }
    .end annotation

    .prologue
    .line 101
    .local p4, "map":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Ljava/lang/Integer;>;"
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_0
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_1
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-direct {p0, p4, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->allocIndex(Lae/com/sun/xml/bind/v2/util/QNameMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->uriIndexMap:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->allocIndex(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->localNameIndexMap:Ljava/util/Map;

    invoke-direct {p0, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->allocIndex(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lae/com/sun/xml/bind/v2/runtime/Name;-><init>(IILjava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method private list(Ljava/util/Map;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 154
    .local v2, "r":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v4

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public conclude()Lae/com/sun/xml/bind/v2/runtime/NameList;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 135
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->uriIndexMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v2, v1, [Z

    .line 136
    .local v2, "nsUriCannotBeDefaulted":[Z
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->uriIndexMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 137
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->nonDefaultableNsUris:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v2, v1

    goto :goto_0

    .line 140
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->uriIndexMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->list(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->localNameIndexMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->list(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->elementQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/util/QNameMap;->size()I

    move-result v4

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->attributeQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;->size()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/runtime/NameList;-><init>([Ljava/lang/String;[Z[Ljava/lang/String;II)V

    .line 147
    .local v0, "r":Lae/com/sun/xml/bind/v2/runtime/NameList;
    iput-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->uriIndexMap:Ljava/util/Map;

    .line 148
    iput-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->localNameIndexMap:Ljava/util/Map;

    .line 149
    return-object v0
.end method

.method public createAttributeName(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 7
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 83
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 87
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->attributeQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    const-string v2, ""

    invoke-direct {p0, v1, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->allocIndex(Lae/com/sun/xml/bind/v2/util/QNameMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->localNameIndexMap:Ljava/util/Map;

    invoke-direct {p0, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->allocIndex(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lae/com/sun/xml/bind/v2/runtime/Name;-><init>(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 96
    :goto_0
    return-object v0

    .line 95
    :cond_2
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->nonDefaultableNsUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->attributeQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {p0, p1, p2, v6, v0}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createName(Ljava/lang/String;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/util/QNameMap;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    goto :goto_0
.end method

.method public createAttributeName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 2
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 79
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createAttributeName(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    return-object v0
.end method

.method public createElementName(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 2
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->elementQNameIndexMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {p0, p1, p2, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createName(Ljava/lang/String;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/util/QNameMap;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    return-object v0
.end method

.method public createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;
    .locals 2
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 71
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    return-object v0
.end method
