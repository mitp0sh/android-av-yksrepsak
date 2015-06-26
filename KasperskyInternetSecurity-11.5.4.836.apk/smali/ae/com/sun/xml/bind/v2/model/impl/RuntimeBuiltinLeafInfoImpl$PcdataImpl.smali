.class abstract Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;
.source "RuntimeBuiltinLeafInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PcdataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "typeNames"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 174
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$1;)V

    .line 175
    return-void
.end method


# virtual methods
.method public abstract print(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation
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
    .line 172
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl<TT;>;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;->print(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;

    move-result-object v0

    return-object v0
.end method

.method public final writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
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
    .line 184
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl<TT;>;"
    .local p3, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;->print(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
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
    .line 180
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl<TT;>;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;->print(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Ljava/lang/String;)V

    .line 181
    return-void
.end method
