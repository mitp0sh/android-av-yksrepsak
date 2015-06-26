.class Lcom/sun/xml/txw2/output/StreamSerializer$1;
.super Lcom/sun/xml/txw2/output/SaxSerializer;
.source "StreamSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/xml/txw2/output/StreamSerializer;-><init>(Ljavax/xml/transform/stream/StreamResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/txw2/output/StreamSerializer;

.field final synthetic val$autoClose:[Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/sun/xml/txw2/output/StreamSerializer;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z[Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "x0"    # Lorg/xml/sax/ContentHandler;
    .param p3, "x1"    # Lorg/xml/sax/ext/LexicalHandler;
    .param p4, "x2"    # Z

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sun/xml/txw2/output/StreamSerializer$1;->this$0:Lcom/sun/xml/txw2/output/StreamSerializer;

    iput-object p5, p0, Lcom/sun/xml/txw2/output/StreamSerializer$1;->val$autoClose:[Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3, p4}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-super {p0}, Lcom/sun/xml/txw2/output/SaxSerializer;->endDocument()V

    .line 105
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StreamSerializer$1;->val$autoClose:[Ljava/io/OutputStream;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StreamSerializer$1;->val$autoClose:[Ljava/io/OutputStream;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StreamSerializer$1;->val$autoClose:[Ljava/io/OutputStream;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    .line 113
    :cond_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
