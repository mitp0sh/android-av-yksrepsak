.class public final Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;
.super Lae/com/sun/xml/bind/api/BridgeContext;
.source "BridgeContextImpl.java"


# instance fields
.field public final marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

.field public final unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lae/com/sun/xml/bind/api/BridgeContext;-><init>()V

    .line 62
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 63
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 64
    return-void
.end method


# virtual methods
.method public getAttachmentMarshaller()Lae/javax/xml/bind/attachment/AttachmentMarshaller;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getAttachmentMarshaller()Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentUnmarshaller()Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getAttachmentUnmarshaller()Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    move-result-object v0

    return-object v0
.end method

.method public setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V
    .locals 1
    .param p1, "m"    # Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    .prologue
    .line 77
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V

    .line 78
    return-void
.end method

.method public setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V
    .locals 1
    .param p1, "u"    # Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    .prologue
    .line 81
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V

    .line 82
    return-void
.end method

.method public setErrorHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    .locals 2
    .param p1, "handler"    # Lae/javax/xml/bind/ValidationEventHandler;

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V

    .line 69
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
