.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
.super Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
.source "Base64Data.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:[B

.field private dataHandler:Ljavax/activation/DataHandler;

.field private dataLen:I

.field private mimeType:Ljava/lang/String;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;)[B
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    return-object v0
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    .prologue
    .line 79
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    return v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x3d

    .line 240
    rem-int/lit8 v3, p1, 0x4

    .line 241
    .local v3, "offset":I
    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 v2, v5, 0x3

    .line 245
    .local v2, "base":I
    packed-switch v3, :pswitch_data_0

    .line 280
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 247
    :pswitch_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    aget-byte v4, v4, v2

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v4

    .line 276
    :cond_0
    :goto_0
    return v4

    .line 249
    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    if-ge v4, v5, :cond_1

    .line 250
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v0, v4, v5

    .line 254
    .local v0, "b1":B
    :goto_1
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v4

    goto :goto_0

    .line 252
    .end local v0    # "b1":B
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "b1":B
    goto :goto_1

    .line 258
    .end local v0    # "b1":B
    :pswitch_2
    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    if-ge v5, v6, :cond_0

    .line 259
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v0, v4, v5

    .line 260
    .restart local v0    # "b1":B
    add-int/lit8 v4, v2, 0x2

    iget v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    if-ge v4, v5, :cond_2

    .line 261
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v1, v4, v5

    .line 266
    .local v1, "b2":B
    :goto_2
    and-int/lit8 v4, v0, 0xf

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v4

    goto :goto_0

    .line 263
    .end local v1    # "b2":B
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "b2":B
    goto :goto_2

    .line 273
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :pswitch_3
    add-int/lit8 v5, v2, 0x2

    iget v6, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    if-ge v5, v6, :cond_0

    .line 274
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x3f

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v4

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public get()[B
    .locals 4

    .prologue
    .line 193
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    if-nez v3, :cond_0

    .line 195
    :try_start_0
    new-instance v0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;-><init>(I)V

    .line 196
    .local v0, "baos":Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v3

    invoke-interface {v3}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 197
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v0, v2}, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->readFrom(Ljava/io/InputStream;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 199
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->getBuffer()[B

    move-result-object v3

    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    .line 200
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->size()I

    move-result v3

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "baos":Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    return-object v3

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    goto :goto_0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data$1;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    .line 154
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    return-object v0
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    return v0
.end method

.method public getExact()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    .line 162
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 163
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    new-array v0, v1, [B

    .line 164
    .local v0, "buf":[B
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    .line 167
    .end local v0    # "buf":[B
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    const/4 v2, 0x0

    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "application/octet-stream"

    .line 217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    .line 228
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public set(Ljavax/activation/DataHandler;)V
    .locals 1
    .param p1, "data"    # Ljavax/activation/DataHandler;

    .prologue
    .line 124
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    .line 127
    return-void
.end method

.method public set([BILjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    .line 105
    iput p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataHandler:Ljavax/activation/DataHandler;

    .line 107
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->mimeType:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public set([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->set([BILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    .line 291
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 292
    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    .line 302
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    invoke-static {v0, v1, v2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V
    .locals 2
    .param p1, "output"    # Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    .line 314
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    invoke-virtual {p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->text([BI)V

    .line 315
    return-void
.end method

.method public writeTo(Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 3
    .param p1, "output"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    .line 319
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    invoke-static {v0, v1, v2, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BIILae/javax/xml/stream/XMLStreamWriter;)V

    .line 320
    return-void
.end method

.method public writeTo([CI)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->get()[B

    .line 308
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I

    invoke-static {v0, v1, v2, p1, p2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII[CI)I

    .line 309
    return-void
.end method
