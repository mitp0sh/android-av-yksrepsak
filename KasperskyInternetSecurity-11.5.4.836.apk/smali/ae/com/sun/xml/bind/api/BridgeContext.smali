.class public abstract Lae/com/sun/xml/bind/api/BridgeContext;
.super Ljava/lang/Object;
.source "BridgeContext.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAttachmentMarshaller()Lae/javax/xml/bind/attachment/AttachmentMarshaller;
.end method

.method public abstract getAttachmentUnmarshaller()Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
.end method

.method public abstract setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V
.end method

.method public abstract setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V
.end method

.method public abstract setErrorHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
.end method
