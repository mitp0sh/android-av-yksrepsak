.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;
.super Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
.source "IntArrayData.java"


# instance fields
.field private data:[I

.field private len:I

.field private literal:Ljava/lang/StringBuilder;

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>([III)V
    .locals 0
    .param p1, "data"    # [I
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;-><init>()V

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->set([III)V

    .line 76
    return-void
.end method

.method private getLiteral()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 113
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    .line 122
    :goto_0
    return-object v3

    .line 115
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->start:I

    .line 117
    .local v1, "p":I
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->len:I

    .local v0, "i":I
    move v2, v1

    .end local v1    # "p":I
    .local v2, "p":I
    :goto_1
    if-lez v0, :cond_2

    .line 118
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->data:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "p":I
    .restart local v1    # "p":I
    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .end local v1    # "p":I
    .restart local v2    # "p":I
    goto :goto_1

    .line 122
    :cond_2
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->getLiteral()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->getLiteral()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public set([III)V
    .locals 1
    .param p1, "data"    # [I
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 91
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->data:[I

    .line 92
    iput p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->start:I

    .line 93
    iput p3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->len:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->getLiteral()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->literal:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V
    .locals 4
    .param p1, "output"    # Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->start:I

    .line 131
    .local v1, "p":I
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->len:I

    .local v0, "i":I
    move v2, v1

    .end local v1    # "p":I
    .local v2, "p":I
    :goto_0
    if-lez v0, :cond_1

    .line 132
    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->len:I

    if-eq v0, v3, :cond_0

    .line 133
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 134
    :cond_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntArrayData;->data:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "p":I
    .restart local v1    # "p":I
    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->text(I)V

    .line 131
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .end local v1    # "p":I
    .restart local v2    # "p":I
    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method
