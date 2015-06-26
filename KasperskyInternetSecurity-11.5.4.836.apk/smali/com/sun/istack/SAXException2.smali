.class public Lcom/sun/istack/SAXException2;
.super Lorg/xml/sax/SAXException;
.source "SAXException2.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/sun/istack/SAXException2;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
