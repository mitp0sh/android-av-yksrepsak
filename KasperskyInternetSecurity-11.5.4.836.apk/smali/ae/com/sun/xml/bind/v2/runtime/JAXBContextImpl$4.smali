.class Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;
.super Ljava/lang/Object;
.source "JAXBContextImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/api/ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->generateSchema(Lae/javax/xml/bind/SchemaOutputResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

.field final synthetic val$e:[Lorg/xml/sax/SAXParseException;

.field final synthetic val$w:[Lorg/xml/sax/SAXParseException;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;[Lorg/xml/sax/SAXParseException;[Lorg/xml/sax/SAXParseException;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;->this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;->val$e:[Lorg/xml/sax/SAXParseException;

    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;->val$w:[Lorg/xml/sax/SAXParseException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 831
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;->val$e:[Lorg/xml/sax/SAXParseException;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 832
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 835
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;->val$e:[Lorg/xml/sax/SAXParseException;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 836
    return-void
.end method

.method public info(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 842
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 839
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;->val$w:[Lorg/xml/sax/SAXParseException;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 840
    return-void
.end method
