.class final Lae/com/sun/xml/bind/v2/schemagen/MultiMap;
.super Ljava/util/TreeMap;
.source "MultiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final many:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/MultiMap;, "Lae/com/sun/xml/bind/v2/schemagen/MultiMap<TK;TV;>;"
    .local p1, "many":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 60
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->many:Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/MultiMap;, "Lae/com/sun/xml/bind/v2/schemagen/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "old":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->many:Ljava/lang/Object;

    invoke-super {p0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/MultiMap;, "Lae/com/sun/xml/bind/v2/schemagen/MultiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/MultiMap;, "Lae/com/sun/xml/bind/v2/schemagen/MultiMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
