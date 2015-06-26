.class public Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;
.source "XMLStreamWriterOutput.java"


# static fields
.field private static final FI_OUTPUT_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;",
            ">;"
        }
    .end annotation
.end field

.field private static final FI_STAX_WRITER_CLASS:Ljava/lang/Class;

.field private static final STAXEX_OUTPUT_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAXEX_WRITER_CLASS:Ljava/lang/Class;


# instance fields
.field protected final buf:[C

.field private final out:Lae/javax/xml/stream/XMLStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->initFIStAXWriterClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->FI_STAX_WRITER_CLASS:Ljava/lang/Class;

    .line 176
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->initFastInfosetOutputClass()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->FI_OUTPUT_CTOR:Ljava/lang/reflect/Constructor;

    .line 208
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->initStAXExWriterClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->STAXEX_WRITER_CLASS:Ljava/lang/Class;

    .line 209
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->initStAXExOutputClass()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->STAXEX_OUTPUT_CTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method protected constructor <init>(Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .param p1, "out"    # Lae/javax/xml/stream/XMLStreamWriter;

    .prologue
    .line 96
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;-><init>()V

    .line 94
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->buf:[C

    .line 97
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    .line 98
    return-void
.end method

.method public static create(Lae/javax/xml/stream/XMLStreamWriter;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .locals 4
    .param p0, "out"    # Lae/javax/xml/stream/XMLStreamWriter;
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "writerClass":Ljava/lang/Class;
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->FI_STAX_WRITER_CLASS:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 76
    :try_start_0
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->FI_OUTPUT_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v1

    .line 80
    :cond_0
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->STAXEX_WRITER_CLASS:Ljava/lang/Class;

    if-eqz v1, :cond_1

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->STAXEX_WRITER_CLASS:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :try_start_1
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->STAXEX_OUTPUT_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 88
    :cond_1
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;-><init>(Lae/javax/xml/stream/XMLStreamWriter;)V

    goto :goto_0
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 231
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/output/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 232
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/SecureLoader;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 235
    :cond_0
    return-object v0
.end method

.method private static initFIStAXWriterClass()Ljava/lang/Class;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 180
    :try_start_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 181
    .local v2, "loader":Ljava/lang/ClassLoader;
    const-string v5, "org.jvnet.fastinfoset.stax.LowLevelFastInfosetStreamWriter"

    const/4 v6, 0x1

    invoke-static {v5, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 182
    .local v1, "llfisw":Ljava/lang/Class;
    const-string v5, "com.sun.xml.fastinfoset.stax.StAXDocumentSerializer"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 184
    .local v3, "sds":Ljava/lang/Class;
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    .end local v1    # "llfisw":Ljava/lang/Class;
    .end local v3    # "sds":Ljava/lang/Class;
    :goto_0
    return-object v3

    .restart local v1    # "llfisw":Ljava/lang/Class;
    .restart local v3    # "sds":Ljava/lang/Class;
    :cond_0
    move-object v3, v4

    .line 187
    goto :goto_0

    .line 188
    .end local v1    # "llfisw":Ljava/lang/Class;
    .end local v3    # "sds":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move-object v3, v4

    .line 189
    goto :goto_0
.end method

.method private static initFastInfosetOutputClass()Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 195
    :try_start_0
    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->FI_STAX_WRITER_CLASS:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 201
    .local v2, "loader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v3

    .line 197
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 198
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    const-string v4, "ae.com.sun.xml.bind.v2.runtime.output.FastInfosetStreamWriterOutput"

    const/4 v5, 0x1

    invoke-static {v4, v5, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "c":Ljava/lang/Class;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->FI_STAX_WRITER_CLASS:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 200
    .end local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private static initStAXExOutputClass()Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 223
    .local v2, "loader":Ljava/lang/ClassLoader;
    const-string v3, "ae.com.sun.xml.bind.v2.runtime.output.StAXExStreamWriterOutput"

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->STAXEX_WRITER_CLASS:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 226
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static initStAXExWriterClass()Ljava/lang/Class;
    .locals 4

    .prologue
    .line 213
    :try_start_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 214
    .local v1, "loader":Ljava/lang/ClassLoader;
    const-string v2, "org.jvnet.staxex.XMLStreamWriterEx"

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 216
    :goto_0
    return-object v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p2, p3}, Lae/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lae/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beginStartTag(ILjava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v4, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v5, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lae/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    .line 124
    .local v1, "nse":Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->count()I

    move-result v3

    if-lez v3, :cond_1

    .line 125
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->count()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 126
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getNsUri(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getBase()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 125
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lae/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    .end local v0    # "i":I
    .end local v2    # "uri":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public endDocument(Z)V
    .locals 1
    .param p1, "fragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 112
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamWriter;->flush()V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->endDocument(Z)V

    .line 115
    return-void
.end method

.method public endStartTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 150
    return-void
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V
    .locals 1
    .param p1, "serializer"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "fragment"    # Z
    .param p3, "nsUriIndex2prefixIndex"    # [I
    .param p4, "nsContext"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 104
    if-nez p2, :cond_0

    .line 105
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 106
    :cond_0
    return-void
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V
    .locals 4
    .param p1, "value"    # Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .param p2, "needsSeparatingWhitespace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 159
    if-eqz p2, :cond_0

    .line 160
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    const-string v2, " "

    invoke-interface {v1, v2}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->length()I

    move-result v0

    .line 163
    .local v0, "len":I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->buf:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->buf:[C

    invoke-virtual {p1, v1, v3}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->writeTo([CI)V

    .line 165
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->buf:[C

    invoke-interface {v1, v2, v3, v0}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public text(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "needsSeparatingWhitespace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 153
    if-eqz p2, :cond_0

    .line 154
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    const-string v1, " "

    invoke-interface {v0, v1}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->out:Lae/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 156
    return-void
.end method
