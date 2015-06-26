.class public final Lae/com/sun/xml/bind/v2/runtime/SwaRefAdapter;
.super Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.source "SwaRefAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "Ljavax/activation/DataHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    check-cast p1, Ljavax/activation/DataHandler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/SwaRefAdapter;->marshal(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljavax/activation/DataHandler;

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    .line 82
    :cond_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v1

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    .line 84
    .local v0, "am":Lae/javax/xml/bind/attachment/AttachmentMarshaller;
    invoke-virtual {v0, p1}, Lae/javax/xml/bind/attachment/AttachmentMarshaller;->addSwaRefAttachment(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/SwaRefAdapter;->unmarshal(Ljava/lang/String;)Ljavax/activation/DataHandler;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)Ljavax/activation/DataHandler;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getAttachmentUnmarshaller()Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    move-result-object v0

    .line 77
    .local v0, "au":Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
    invoke-virtual {v0, p1}, Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;->getAttachmentAsDataHandler(Ljava/lang/String;)Ljavax/activation/DataHandler;

    move-result-object v1

    return-object v1
.end method
