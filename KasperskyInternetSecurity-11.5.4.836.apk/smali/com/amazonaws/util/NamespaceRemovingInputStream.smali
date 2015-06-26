.class Lcom/amazonaws/util/NamespaceRemovingInputStream;
.super Ljava/io/FilterInputStream;
.source "NamespaceRemovingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
    }
.end annotation


# instance fields
.field private hasRemovedNamespace:Z

.field private lookAheadData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 45
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->hasRemovedNamespace:Z

    .line 46
    return-void
.end method

.method private matchXmlNamespaceAttribute(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 115
    new-instance v0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "stringSlicer":Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
    const-string v2, "xmlns"

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefix(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removeRepeatingPrefix(Ljava/lang/String;)Z

    .line 119
    const-string v2, "="

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removeRepeatingPrefix(Ljava/lang/String;)Z

    .line 122
    const-string v2, "\""

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "\""

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefixEndingWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 53
    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 54
    .local v0, "b":I
    const/16 v5, 0x78

    if-ne v0, v5, :cond_1

    iget-boolean v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->hasRemovedNamespace:Z

    if-nez v5, :cond_1

    .line 55
    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v8

    .line 56
    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->mark(I)V

    .line 57
    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    iget-object v7, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v9, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 58
    .local v1, "bytesRead":I
    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 60
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v4, v5, v8, v6}, Ljava/lang/String;-><init>([BII)V

    .line 62
    .local v4, "string":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->matchXmlNamespaceAttribute(Ljava/lang/String;)I

    move-result v3

    .line 63
    .local v3, "numberCharsMatched":I
    if-lez v3, :cond_1

    .line 64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_0

    .line 65
    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 68
    iput-boolean v9, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->hasRemovedNamespace:Z

    .line 72
    .end local v1    # "bytesRead":I
    .end local v2    # "i":I
    .end local v3    # "numberCharsMatched":I
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read()I

    move-result v1

    .line 82
    .local v1, "j":I
    if-ne v1, v2, :cond_1

    .line 83
    if-nez v0, :cond_0

    move v0, v2

    .line 90
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    :goto_1
    return v0

    .line 87
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_1
    add-int v3, v0, p2

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_2
    move v0, p3

    .line 90
    goto :goto_1
.end method
