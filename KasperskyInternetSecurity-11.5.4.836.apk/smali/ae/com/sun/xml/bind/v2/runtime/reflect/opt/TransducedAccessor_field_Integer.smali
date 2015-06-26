.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_field_Integer;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;
.source "TransducedAccessor_field_Integer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "lexical"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->f_int:I

    .line 73
    return-void
.end method

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
    .line 66
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_field_Integer;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->f_int:I

    invoke-static {v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printInt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p3, "o"    # Ljava/lang/Object;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 81
    check-cast p3, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p3    # "o":Ljava/lang/Object;
    iget v0, p3, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->f_int:I

    invoke-virtual {p1, p2, v0, p4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;ILjava/lang/String;)V

    .line 82
    return-void
.end method
