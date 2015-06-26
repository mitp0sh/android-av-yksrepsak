.class public Lcom/sun/xml/txw2/output/DumpSerializer;
.super Ljava/lang/Object;
.source "DumpSerializer.java"

# interfaces
.implements Lcom/sun/xml/txw2/output/XmlSerializer;


# instance fields
.field private final out:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    .line 57
    return-void
.end method


# virtual methods
.method public beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public cdata(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public comment(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/StringBuilder;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(C)V

    .line 73
    return-void
.end method

.method public endTag()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "</  >"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "flush"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    const-string v1, "<?xml?>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public text(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public writeXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DumpSerializer;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xmlns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    return-void
.end method
