.class Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;
.super Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;
.source "QNameMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/util/QNameMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/util/QNameMap",
        "<TV;>.HashIterator<",
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
    .line 440
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntryIterator;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;->this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;-><init>(Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/util/QNameMap;Lae/com/sun/xml/bind/v2/util/QNameMap$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/util/QNameMap;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/util/QNameMap$1;

    .prologue
    .line 440
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;-><init>(Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    return-void
.end method


# virtual methods
.method public next()Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntryIterator;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;->nextEntry()Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.EntryIterator;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;->next()Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move-result-object v0

    return-object v0
.end method
