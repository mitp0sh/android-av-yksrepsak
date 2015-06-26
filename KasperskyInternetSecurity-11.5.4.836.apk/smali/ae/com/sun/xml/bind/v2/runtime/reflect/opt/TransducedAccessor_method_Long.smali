.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_method_Long;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;
.source "TransducedAccessor_method_Long.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "lexical"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->set_long(J)V

    .line 65
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
    .line 58
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_method_Long;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->get_long()J

    move-result-wide v0

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printLong(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
