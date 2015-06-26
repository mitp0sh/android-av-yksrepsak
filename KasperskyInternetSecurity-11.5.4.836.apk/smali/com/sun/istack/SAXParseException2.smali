.class public Lcom/sun/istack/SAXParseException2;
.super Lorg/xml/sax/SAXParseException;
.source "SAXParseException2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .param p5, "columnNumber"    # I

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .param p5, "columnNumber"    # I
    .param p6, "e"    # Ljava/lang/Exception;

    .prologue
    .line 26
    invoke-direct/range {p0 .. p6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sun/istack/SAXParseException2;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
