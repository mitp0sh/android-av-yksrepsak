.class public Lcom/amazonaws/util/XMLWriter;
.super Ljava/lang/Object;
.source "XMLWriter.java"


# static fields
.field private static final PROLOG:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"


# instance fields
.field private elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootElement:Z

.field private final writer:Ljava/io/Writer;

.field private final xmlns:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/util/XMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "xmlns"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/XMLWriter;->elementStack:Ljava/util/Stack;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/util/XMLWriter;->rootElement:Z

    .line 65
    iput-object p1, p0, Lcom/amazonaws/util/XMLWriter;->writer:Ljava/io/Writer;

    .line 66
    iput-object p2, p0, Lcom/amazonaws/util/XMLWriter;->xmlns:Ljava/lang/String;

    .line 67
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/util/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Unable to write XML document"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public endElement()Lcom/amazonaws/util/XMLWriter;
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/amazonaws/util/XMLWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "lastElement":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 101
    return-object p0
.end method

.method public startElement(Ljava/lang/String;)Lcom/amazonaws/util/XMLWriter;
    .locals 2
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/amazonaws/util/XMLWriter;->rootElement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/XMLWriter;->xmlns:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/util/XMLWriter;->xmlns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/XMLWriter;->rootElement:Z

    .line 86
    :cond_0
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/amazonaws/util/XMLWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object p0
.end method

.method public value(Ljava/lang/Object;)Lcom/amazonaws/util/XMLWriter;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 147
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/amazonaws/util/XMLWriter;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 116
    return-object p0
.end method

.method public value(Ljava/util/Date;)Lcom/amazonaws/util/XMLWriter;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 130
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/XMLWriter;->append(Ljava/lang/String;)V

    .line 131
    return-object p0
.end method
