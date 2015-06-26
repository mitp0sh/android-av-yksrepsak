.class public Lae/com/sun/xml/bind/marshaller/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field public static final ASSERT_FAILED:Ljava/lang/String; = "SAXMarshaller.AssertFailed"

.field public static final DOM_IMPL_DOESNT_SUPPORT_CREATELEMENTNS:Ljava/lang/String; = "SAX2DOMEx.DomImplDoesntSupportCreateElementNs"

.field public static final ERR_DANGLING_IDREF:Ljava/lang/String; = "SAXMarshaller.DanglingIDREF"

.field public static final ERR_MISSING_OBJECT:Ljava/lang/String; = "SAXMarshaller.MissingObject"

.field public static final ERR_NOT_IDENTIFIABLE:Ljava/lang/String; = "SAXMarshaller.NotIdentifiable"

.field public static final NOT_MARSHALLABLE:Ljava/lang/String; = "MarshallerImpl.NotMarshallable"

.field public static final NULL_WRITER:Ljava/lang/String; = "MarshallerImpl.NullWriterParam"

.field public static final UNSUPPORTED_ENCODING:Ljava/lang/String; = "MarshallerImpl.UnsupportedEncoding"

.field public static final UNSUPPORTED_RESULT:Ljava/lang/String; = "MarshallerImpl.UnsupportedResult"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/marshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/marshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/marshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/marshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 73
    const-class v1, Lae/com/sun/xml/bind/marshaller/Messages;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
