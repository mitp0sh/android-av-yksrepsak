.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;
.super Ljava/lang/Object;
.source "LocatorExWrapper.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;


# instance fields
.field private final locator:Lorg/xml/sax/Locator;


# direct methods
.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;->locator:Lorg/xml/sax/Locator;

    .line 59
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLocation()Lae/javax/xml/bind/ValidationEventLocator;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v0, v1}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
