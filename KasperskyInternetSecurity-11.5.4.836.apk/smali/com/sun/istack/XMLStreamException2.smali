.class public Lcom/sun/istack/XMLStreamException2;
.super Ljavax/xml/stream/XMLStreamException;
.source "XMLStreamException2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "location"    # Ljavax/xml/stream/Location;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "location"    # Ljavax/xml/stream/Location;
    .param p3, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sun/istack/XMLStreamException2;->getNestedException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
