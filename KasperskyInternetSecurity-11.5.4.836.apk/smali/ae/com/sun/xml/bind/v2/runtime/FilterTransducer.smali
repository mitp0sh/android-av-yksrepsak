.class public abstract Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;
.super Ljava/lang/Object;
.source "FilterTransducer.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/Transducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/Transducer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final core:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 64
    return-void
.end method


# virtual methods
.method public declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 1
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 78
    return-void
.end method

.method public getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDefault()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "lexical"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->useNamespace()Z

    move-result v0

    return v0
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
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    .local p3, "o":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
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
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;, "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer<TT;>;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-void
.end method
