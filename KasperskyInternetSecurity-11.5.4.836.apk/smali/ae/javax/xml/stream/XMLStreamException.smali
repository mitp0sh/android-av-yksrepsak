.class public Lae/javax/xml/stream/XMLStreamException;
.super Ljava/lang/Exception;
.source "XMLStreamException.java"


# instance fields
.field protected location:Lae/javax/xml/stream/Location;

.field protected nested:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lae/javax/xml/stream/Location;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "location"    # Lae/javax/xml/stream/Location;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseError at [row,col]:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lae/javax/xml/stream/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lae/javax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object p2, p0, Lae/javax/xml/stream/XMLStreamException;->location:Lae/javax/xml/stream/Location;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lae/javax/xml/stream/Location;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "location"    # Lae/javax/xml/stream/Location;
    .param p3, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseError at [row,col]:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lae/javax/xml/stream/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lae/javax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p3, p0, Lae/javax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    .line 63
    iput-object p2, p0, Lae/javax/xml/stream/XMLStreamException;->location:Lae/javax/xml/stream/Location;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lae/javax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 37
    iput-object p1, p0, Lae/javax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    .line 38
    return-void
.end method


# virtual methods
.method public getLocation()Lae/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lae/javax/xml/stream/XMLStreamException;->location:Lae/javax/xml/stream/Location;

    return-object v0
.end method

.method public getNestedException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lae/javax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    return-object v0
.end method
