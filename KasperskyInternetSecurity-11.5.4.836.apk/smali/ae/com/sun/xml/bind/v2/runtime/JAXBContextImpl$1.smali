.class Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;
.super Lcom/sun/istack/Pool$Impl;
.source "JAXBContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/istack/Pool$Impl",
        "<",
        "Lae/javax/xml/bind/Marshaller;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-direct {p0}, Lcom/sun/istack/Pool$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lae/javax/xml/bind/Marshaller;
    .locals 1
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;->create()Lae/javax/xml/bind/Marshaller;

    move-result-object v0

    return-object v0
.end method
