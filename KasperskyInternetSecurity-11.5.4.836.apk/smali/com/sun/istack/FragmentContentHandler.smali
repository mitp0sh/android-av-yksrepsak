.class public Lcom/sun/istack/FragmentContentHandler;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "FragmentContentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/sun/istack/FragmentContentHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "parent"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 18
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method
