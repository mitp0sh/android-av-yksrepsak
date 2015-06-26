.class Lae/javax/xml/bind/util/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field static final RESULT_NULL_CONTEXT:Ljava/lang/String; = "JAXBResult.NullContext"

.field static final RESULT_NULL_UNMARSHALLER:Ljava/lang/String; = "JAXBResult.NullUnmarshaller"

.field static final SOURCE_NULL_CONTENT:Ljava/lang/String; = "JAXBSource.NullContent"

.field static final SOURCE_NULL_CONTEXT:Ljava/lang/String; = "JAXBSource.NullContext"

.field static final SOURCE_NULL_MARSHALLER:Ljava/lang/String; = "JAXBSource.NullMarshaller"

.field static final UNRECOGNIZED_SEVERITY:Ljava/lang/String; = "ValidationEventCollector.UnrecognizedSeverity"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p0, v0}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    const-class v1, Lae/javax/xml/bind/util/Messages;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
