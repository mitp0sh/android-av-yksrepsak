.class final Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty$MixedTextLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "ArrayReferenceNodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MixedTextLoader"
.end annotation


# instance fields
.field private final recv:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V
    .locals 1
    .param p1, "recv"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 156
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty$MixedTextLoader;->recv:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 157
    return-void
.end method


# virtual methods
.method public text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty$MixedTextLoader;->recv:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;->receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method
