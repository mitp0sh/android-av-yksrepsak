.class public final Lae/com/sun/xml/bind/v2/util/FlattenIterator;
.super Ljava/lang/Object;
.source "FlattenIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private child:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final parent:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Map",
            "<*+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map",
            "<*+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/FlattenIterator;, "Lae/com/sun/xml/bind/v2/util/FlattenIterator<TT;>;"
    .local p1, "core":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map<*+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->child:Ljava/util/Iterator;

    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->parent:Ljava/util/Iterator;

    .line 61
    return-void
.end method

.method private getNext()V
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/FlattenIterator;, "Lae/com/sun/xml/bind/v2/util/FlattenIterator<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->child:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->child:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->child:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->next:Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->parent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->parent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->child:Ljava/util/Iterator;

    .line 91
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->getNext()V

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/FlattenIterator;, "Lae/com/sun/xml/bind/v2/util/FlattenIterator<TT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->getNext()V

    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/FlattenIterator;, "Lae/com/sun/xml/bind/v2/util/FlattenIterator<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->next:Ljava/lang/Object;

    .line 75
    .local v0, "r":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/FlattenIterator;->next:Ljava/lang/Object;

    .line 76
    if-nez v0, :cond_0

    .line 77
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 78
    :cond_0
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/FlattenIterator;, "Lae/com/sun/xml/bind/v2/util/FlattenIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
