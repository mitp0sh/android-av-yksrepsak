.class public final Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;
.super Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;
.source "MimeTypedTransducer.java"


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


# instance fields
.field private final expectedMimeType:Ljavax/activation/MimeType;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;Ljavax/activation/MimeType;)V
    .locals 0
    .param p2, "expectedMimeType"    # Ljavax/activation/MimeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TV;>;",
            "Ljavax/activation/MimeType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;, "Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer<TV;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TV;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    .line 68
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;->expectedMimeType:Ljavax/activation/MimeType;

    .line 69
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3
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
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;, "Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer<TV;>;"
    .local p1, "o":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v1

    .line 74
    .local v1, "w":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;->expectedMimeType:Ljavax/activation/MimeType;

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

    move-result-object v0

    .line 76
    .local v0, "old":Ljavax/activation/MimeType;
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 78
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

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
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;, "Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer<TV;>;"
    .local p3, "o":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;->expectedMimeType:Ljavax/activation/MimeType;

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

    move-result-object v0

    .line 96
    .local v0, "old":Ljavax/activation/MimeType;
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

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
    .line 84
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;, "Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer<TV;>;"
    .local p2, "o":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;->expectedMimeType:Ljavax/activation/MimeType;

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

    move-result-object v0

    .line 86
    .local v0, "old":Ljavax/activation/MimeType;
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MimeTypedTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;

    throw v1
.end method
