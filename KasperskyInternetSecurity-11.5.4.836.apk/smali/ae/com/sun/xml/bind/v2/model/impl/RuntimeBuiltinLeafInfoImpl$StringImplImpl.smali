.class Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;
.source "RuntimeBuiltinLeafInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringImplImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "typeNames"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 1035
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    .line 1036
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;->parse(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1039
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 1032
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;->print(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 1032
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;->print(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1043
    return-object p1
.end method

.method public bridge synthetic writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 1032
    check-cast p3, Ljava/lang/String;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p3, "o"    # Ljava/lang/String;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-virtual {p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public bridge synthetic writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 1032
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "o"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-virtual {p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->text(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-void
.end method
