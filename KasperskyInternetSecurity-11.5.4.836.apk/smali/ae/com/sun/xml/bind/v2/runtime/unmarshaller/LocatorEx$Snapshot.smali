.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;
.super Ljava/lang/Object;
.source "LocatorEx.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
.implements Lae/javax/xml/bind/ValidationEventLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field private final columnNumber:I

.field private final lineNumber:I

.field private final node:Lorg/w3c/dom/Node;

.field private final object:Ljava/lang/Object;

.field private final offset:I

.field private final publicId:Ljava/lang/String;

.field private final systemId:Ljava/lang/String;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V
    .locals 2
    .param p1, "loc"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getColumnNumber()I

    move-result v1

    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->columnNumber:I

    .line 74
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getLineNumber()I

    move-result v1

    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->lineNumber:I

    .line 75
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->systemId:Ljava/lang/String;

    .line 76
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->publicId:Ljava/lang/String;

    .line 78
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getLocation()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v0

    .line 79
    .local v0, "vel":Lae/javax/xml/bind/ValidationEventLocator;
    invoke-interface {v0}, Lae/javax/xml/bind/ValidationEventLocator;->getOffset()I

    move-result v1

    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->offset:I

    .line 80
    invoke-interface {v0}, Lae/javax/xml/bind/ValidationEventLocator;->getURL()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->url:Ljava/net/URL;

    .line 81
    invoke-interface {v0}, Lae/javax/xml/bind/ValidationEventLocator;->getObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->object:Ljava/lang/Object;

    .line 82
    invoke-interface {v0}, Lae/javax/xml/bind/ValidationEventLocator;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->node:Lorg/w3c/dom/Node;

    .line 83
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->lineNumber:I

    return v0
.end method

.method public getLocation()Lae/javax/xml/bind/ValidationEventLocator;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->offset:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;->url:Ljava/net/URL;

    return-object v0
.end method
