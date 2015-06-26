.class Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "QNameMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/util/QNameMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;


# direct methods
.method private constructor <init>(Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 0

    .prologue
    .line 445
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntrySet;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;->this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/util/QNameMap;Lae/com/sun/xml/bind/v2/util/QNameMap$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/util/QNameMap;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/util/QNameMap$1;

    .prologue
    .line 445
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;-><init>(Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 451
    instance-of v3, p1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    if-nez v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 453
    check-cast v1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 454
    .local v1, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;->this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget-object v4, v1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    iget-object v5, v1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    # invokes: Lae/com/sun/xml/bind/v2/util/QNameMap;->getEntry(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    invoke-static {v3, v4, v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;->access$300(Lae/com/sun/xml/bind/v2/util/QNameMap;Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move-result-object v0

    .line 455
    .local v0, "candidate":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntrySet;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;->this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;

    # invokes: Lae/com/sun/xml/bind/v2/util/QNameMap;->newEntryIterator()Ljava/util/Iterator;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->access$200(Lae/com/sun/xml/bind/v2/util/QNameMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 459
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 462
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntrySet;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;->this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget v0, v0, Lae/com/sun/xml/bind/v2/util/QNameMap;->size:I

    return v0
.end method
