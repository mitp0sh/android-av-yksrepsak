.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;
.super Ljava/lang/Object;
.source "StAXConnector.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->handleStartDocument(Ljavax/xml/namespace/NamespaceContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->getCurrentLocation()Lae/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lae/javax/xml/stream/Location;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->getCurrentLocation()Lae/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lae/javax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLocation()Lae/javax/xml/bind/ValidationEventLocator;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;

    invoke-direct {v0, p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->getCurrentLocation()Lae/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lae/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->getCurrentLocation()Lae/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lae/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
