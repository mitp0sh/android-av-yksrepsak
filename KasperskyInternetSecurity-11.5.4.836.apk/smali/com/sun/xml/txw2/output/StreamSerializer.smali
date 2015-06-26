.class public Lcom/sun/xml/txw2/output/StreamSerializer;
.super Ljava/lang/Object;
.source "StreamSerializer.java"

# interfaces
.implements Lcom/sun/xml/txw2/output/XmlSerializer;


# instance fields
.field private final serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

.field private final writer:Lcom/sun/xml/txw2/output/XMLWriter;


# direct methods
.method private constructor <init>(Lcom/sun/xml/txw2/output/XMLWriter;)V
    .locals 2
    .param p1, "writer"    # Lcom/sun/xml/txw2/output/XMLWriter;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->writer:Lcom/sun/xml/txw2/output/XMLWriter;

    .line 120
    new-instance v0, Lcom/sun/xml/txw2/output/SaxSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, v1}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/sun/xml/txw2/output/StreamSerializer;->createWriter(Ljava/io/OutputStream;)Lcom/sun/xml/txw2/output/XMLWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/xml/txw2/output/StreamSerializer;-><init>(Lcom/sun/xml/txw2/output/XMLWriter;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1, p2}, Lcom/sun/xml/txw2/output/StreamSerializer;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/sun/xml/txw2/output/XMLWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/xml/txw2/output/StreamSerializer;-><init>(Lcom/sun/xml/txw2/output/XMLWriter;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 75
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0}, Lcom/sun/xml/txw2/output/StreamSerializer;-><init>(Ljavax/xml/transform/stream/StreamResult;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/stream/StreamResult;)V
    .locals 9
    .param p1, "streamResult"    # Ljavax/xml/transform/stream/StreamResult;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/io/OutputStream;

    .line 82
    .local v5, "autoClose":[Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/xml/txw2/output/StreamSerializer;->createWriter(Ljava/io/Writer;)Lcom/sun/xml/txw2/output/XMLWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->writer:Lcom/sun/xml/txw2/output/XMLWriter;

    .line 102
    :goto_0
    new-instance v0, Lcom/sun/xml/txw2/output/StreamSerializer$1;

    iget-object v2, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->writer:Lcom/sun/xml/txw2/output/XMLWriter;

    iget-object v3, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->writer:Lcom/sun/xml/txw2/output/XMLWriter;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/xml/txw2/output/StreamSerializer$1;-><init>(Lcom/sun/xml/txw2/output/StreamSerializer;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z[Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    .line 115
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/xml/txw2/output/StreamSerializer;->createWriter(Ljava/io/OutputStream;)Lcom/sun/xml/txw2/output/XMLWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->writer:Lcom/sun/xml/txw2/output/XMLWriter;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "fileURL":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sun/xml/txw2/output/StreamSerializer;->convertURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 93
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    aput-object v8, v5, v0

    .line 94
    invoke-static {v8}, Lcom/sun/xml/txw2/output/StreamSerializer;->createWriter(Ljava/io/OutputStream;)Lcom/sun/xml/txw2/output/XMLWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->writer:Lcom/sun/xml/txw2/output/XMLWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 96
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v0, v6}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 99
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fileURL":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private convertURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 124
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 125
    const-string v0, "//"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    const-string v0, "//"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    :cond_0
    :goto_0
    return-object p1

    .line 131
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static createWriter(Ljava/io/OutputStream;)Lcom/sun/xml/txw2/output/XMLWriter;
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 202
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Lcom/sun/xml/txw2/output/StreamSerializer;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/sun/xml/txw2/output/XMLWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/sun/xml/txw2/output/XMLWriter;
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sun/xml/txw2/output/StreamSerializer;->createWriter(Ljava/io/Writer;)Lcom/sun/xml/txw2/output/XMLWriter;

    move-result-object v0

    .line 196
    .local v0, "writer":Lcom/sun/xml/txw2/output/XMLWriter;
    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/output/XMLWriter;->setEncoding(Ljava/lang/String;)V

    .line 197
    return-object v0
.end method

.method private static createWriter(Ljava/io/Writer;)Lcom/sun/xml/txw2/output/XMLWriter;
    .locals 2
    .param p0, "w"    # Ljava/io/Writer;

    .prologue
    .line 189
    new-instance v0, Lcom/sun/xml/txw2/output/DataWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Lcom/sun/xml/txw2/output/DataWriter;-><init>(Ljava/io/Writer;)V

    .line 190
    .local v0, "dw":Lcom/sun/xml/txw2/output/DataWriter;
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/sun/xml/txw2/output/DataWriter;->setIndentStep(Ljava/lang/String;)V

    .line 191
    return-object v0
.end method


# virtual methods
.method public beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/xml/txw2/output/SaxSerializer;->beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public cdata(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/output/SaxSerializer;->cdata(Ljava/lang/StringBuilder;)V

    .line 167
    return-void
.end method

.method public comment(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/StringBuilder;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/output/SaxSerializer;->comment(Ljava/lang/StringBuilder;)V

    .line 171
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/output/SaxSerializer;->endDocument()V

    .line 175
    return-void
.end method

.method public endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/xml/txw2/output/SaxSerializer;->endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public endTag()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/output/SaxSerializer;->endTag()V

    .line 159
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v1}, Lcom/sun/xml/txw2/output/SaxSerializer;->flush()V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->writer:Lcom/sun/xml/txw2/output/XMLWriter;

    invoke-virtual {v1}, Lcom/sun/xml/txw2/output/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/output/SaxSerializer;->startDocument()V

    .line 139
    return-void
.end method

.method public text(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/output/SaxSerializer;->text(Ljava/lang/StringBuilder;)V

    .line 163
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/xml/txw2/output/SaxSerializer;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 147
    return-void
.end method

.method public writeXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sun/xml/txw2/output/StreamSerializer;->serializer:Lcom/sun/xml/txw2/output/SaxSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/sun/xml/txw2/output/SaxSerializer;->writeXmlns(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
