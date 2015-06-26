.class public abstract Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
.source "DefaultTransducedAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor<TT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor<TT;>;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract print(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "Lae/com/sun/xml/bind/v2/runtime/Name;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor<TT;>;"
    .local p3, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor<TT;>;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->text(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
