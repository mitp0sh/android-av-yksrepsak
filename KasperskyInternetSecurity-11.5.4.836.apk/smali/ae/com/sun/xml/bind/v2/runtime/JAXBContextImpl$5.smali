.class Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$5;
.super Lae/javax/xml/bind/SchemaOutputResolver;
.source "JAXBContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createTestResolver()Lae/javax/xml/bind/SchemaOutputResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$5;->this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-direct {p0}, Lae/javax/xml/bind/SchemaOutputResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutput(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;
    .locals 2
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "suggestedFileName"    # Ljava/lang/String;

    .prologue
    .line 915
    new-instance v0, Ljavax/xml/transform/sax/SAXResult;

    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 916
    .local v0, "r":Ljavax/xml/transform/sax/SAXResult;
    invoke-virtual {v0, p2}, Ljavax/xml/transform/sax/SAXResult;->setSystemId(Ljava/lang/String;)V

    .line 917
    return-object v0
.end method
