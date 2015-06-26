.class public Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;
.super Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;
.source "SchemaTypeTransducer.java"


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
.field private final schemaType:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p2, "schemaType"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TV;>;",
            "Ljavax/xml/namespace/QName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;, "Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer<TV;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TV;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    .line 69
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;->schemaType:Ljavax/xml/namespace/QName;

    .line 70
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
    .line 74
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;, "Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer<TV;>;"
    .local p1, "o":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v1

    .line 75
    .local v1, "w":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;->schemaType:Ljavax/xml/namespace/QName;

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 77
    .local v0, "old":Ljavax/xml/namespace/QName;
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 79
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

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
    .line 95
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;, "Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer<TV;>;"
    .local p3, "o":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;->schemaType:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 97
    .local v0, "old":Ljavax/xml/namespace/QName;
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

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
    .line 85
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;, "Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer<TV;>;"
    .local p2, "o":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;->schemaType:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 87
    .local v0, "old":Ljavax/xml/namespace/QName;
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/SchemaTypeTransducer;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    throw v1
.end method
