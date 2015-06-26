.class public Lae/com/sun/xml/bind/v2/util/FatalAdapter;
.super Ljava/lang/Object;
.source "FatalAdapter.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field private final core:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/util/FatalAdapter;->core:Lorg/xml/sax/ErrorHandler;

    .line 57
    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FatalAdapter;->core:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 65
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FatalAdapter;->core:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 69
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/FatalAdapter;->core:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 61
    return-void
.end method
