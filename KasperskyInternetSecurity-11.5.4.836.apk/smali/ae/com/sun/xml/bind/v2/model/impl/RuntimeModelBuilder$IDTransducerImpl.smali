.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl;
.super Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;
.source "RuntimeModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IDTransducerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/FilterTransducer",
        "<TValueT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TValueT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl<TValueT;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TValueT;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/FilterTransducer;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V

    .line 191
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 2
    .param p1, "lexical"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TValueT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl<TValueT;>;"
    invoke-static {p1}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->addToIdTable(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder$IDTransducerImpl;->core:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
