.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_field_Boolean;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;
.source "TransducedAccessor_field_Boolean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "lexical"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    invoke-static {p2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->f_boolean:Z

    .line 67
    :cond_0
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
    .line 57
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_field_Boolean;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->f_boolean:Z

    invoke-static {v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printBoolean(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
