.class public Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;
.super Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;
.source "InlineBinaryTransducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;, "Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer<TV;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TV;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    .line 61
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;, "Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer<TV;>;"
    .local p1, "o":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v1

    .line 66
    .local v1, "w":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    move-result v0

    .line 68
    .local v0, "old":Z
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 70
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    throw v2
.end method

.method public writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "Lae/com/sun/xml/bind/v2/runtime/Name;",
            "TV;",
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
    .line 86
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;, "Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer<TV;>;"
    .local p3, "o":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    move-result v0

    .line 88
    .local v0, "old":Z
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    throw v1
.end method

.method public writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "TV;",
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
    .line 76
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;, "Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer<TV;>;"
    .local p2, "o":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    move-result v0

    .line 78
    .local v0, "old":Z
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/InlineBinaryTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setInlineBinaryFlag(Z)Z

    throw v1
.end method
